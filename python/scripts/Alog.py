import math
from pathlib import Path

import matplotlib.pyplot as plt
import numpy as np
from scipy.integrate import solve_ivp
from scipy.interpolate import PchipInterpolator

# Répertoire de sortie commun pour toutes les figures
FIGURES_DIR = Path(__file__).resolve().parent.parent / "figures"
FIGURES_DIR.mkdir(parents=True, exist_ok=True)



# ============================================================
# PARAMETERS
# ============================================================

n = 5
d = 7

number_of_samples = 2001
show_reflected_curves = True
save_figures = True

output_directory = FIGURES_DIR
output_directory.mkdir(parents=True, exist_ok=True)


# ============================================================
# MODEL
# ============================================================

def F(k: np.ndarray | float,
      x: np.ndarray | float,
      n: int,
      d: int) -> np.ndarray | float:
    """
    Interference function

        F_k(x) = k cos(2π d x) + (1-k) cos(2π n x).
    """
    return (
        k * np.cos(2.0 * np.pi * d * x)
        + (1.0 - k) * np.cos(2.0 * np.pi * n * x)
    )


def crest_ode(k: float,
              state: np.ndarray,
              n: int,
              d: int) -> np.ndarray:
    """
    ODE for a stationary branch X(k).

    Stationarity is

        k d sin(2π d X)
        + (1-k) n sin(2π n X) = 0.

    Differentiating implicitly gives

        X'(k)
        =
        -[d sin(2π d X) - n sin(2π n X)]
         ------------------------------------------------
         2π[k d² cos(2π d X)
             + (1-k)n² cos(2π n X)].
    """
    x = float(state[0])

    numerator = (
        d * np.sin(2.0 * np.pi * d * x)
        - n * np.sin(2.0 * np.pi * n * x)
    )

    denominator = 2.0 * np.pi * (
        k * d**2 * np.cos(2.0 * np.pi * d * x)
        + (1.0 - k) * n**2 * np.cos(2.0 * np.pi * n * x)
    )

    if abs(denominator) < 1e-12:
        raise RuntimeError(
            f"Near-degenerate stationary point at k={k:.12g}, x={x:.12g}."
        )

    return np.array([-numerator / denominator])


def balanced_coordinate(k: np.ndarray | float,
                        n: int,
                        d: int) -> np.ndarray | float:
    """
    Balanced coordinate

        u = kd / [kd + (1-k)n].

    It maps:
        k=0   -> u=0
        k=kc  -> u=1/2
        k=1   -> u=1
    """
    return (k * d) / (k * d + (1.0 - k) * n)


def inverse_balanced_coordinate(u: np.ndarray | float,
                                n: int,
                                d: int) -> np.ndarray | float:
    """
    Inverse transformation

        k = nu / [d(1-u) + nu].
    """
    return (n * u) / (d * (1.0 - u) + n * u)


# ============================================================
# BRANCH TRACKING
# ============================================================

def calculate_branch(
    branch_index: int,
    k_values: np.ndarray,
    n: int,
    d: int,
) -> tuple[np.ndarray, np.ndarray]:
    """
    Continue the branch anchored at X_i(0)=i/n.

    Returns
    -------
    x_values:
        Continuous lifted branch positions.
    amplitude_values:
        A_i(k)=F_k(X_i(k)).
    """
    initial_position = branch_index / n

    solution = solve_ivp(
        fun=lambda k, state: crest_ode(k, state, n, d),
        t_span=(0.0, 1.0),
        y0=np.array([initial_position], dtype=float),
        t_eval=k_values,
        method="DOP853",
        rtol=1e-11,
        atol=1e-13,
        max_step=1.0 / 1000.0,
    )

    if not solution.success:
        raise RuntimeError(
            f"Branch {branch_index} failed: {solution.message}"
        )

    x_values = solution.y[0]
    amplitude_values = F(k_values, x_values, n, d)

    return x_values, amplitude_values


# ============================================================
# COMPUTATION
# ============================================================

if not (1 < n < d):
    raise ValueError("The script requires 1 < n < d.")

if math.gcd(n, d) != 1:
    print("Warning: n and d are not coprime.")

if n % 2 == 0:
    print(
        "Warning: n is even. Degeneracies or branch bifurcations may occur."
    )

k_c = n / (n + d)

k_values = np.linspace(0.0, 1.0, number_of_samples)
u_values = balanced_coordinate(k_values, n, d)

# By reflection symmetry, A_i = A_(n-i).
# It is therefore sufficient to plot i=0,...,(n-1)/2.
unique_branch_indices = range((n - 1) // 2 + 1)

branches: dict[int, dict[str, np.ndarray]] = {}

for i in unique_branch_indices:
    print(f"Tracking branch i={i}...")

    x_values, amplitude_values = calculate_branch(
        branch_index=i,
        k_values=k_values,
        n=n,
        d=d,
    )

    branches[i] = {
        "x": x_values,
        "A": amplitude_values,
    }


# ============================================================
# PLOT 1: ORIGINAL k COORDINATE
# ============================================================

fig1, ax1 = plt.subplots(figsize=(9, 6))

for i, branch in branches.items():
    ax1.plot(
        k_values,
        branch["A"],
        linewidth=2.0,
        label=rf"$A_{i}(k)$",
    )

ax1.axvline(
    k_c,
    linestyle="--",
    linewidth=1.5,
    label=rf"$k_c={n}/{n+d}$",
)

ax1.set_xlim(0.0, 1.0)
ax1.set_xlabel(r"$k$")
ax1.set_ylabel(r"$A_i(k)$")
ax1.set_title(
    rf"Amplitude trajectories in the original coordinate: "
    rf"$(n,d)=({n},{d})$"
)
ax1.grid(alpha=0.25)
ax1.legend()
fig1.tight_layout()


# ============================================================
# PLOT 2: BALANCED u COORDINATE
# ============================================================

fig2, ax2 = plt.subplots(figsize=(9, 6))

# Use a uniform u-grid so reflection u -> 1-u is straightforward.
uniform_u = np.linspace(0.0, 1.0, number_of_samples)

mirror_errors = {}

for i, branch in branches.items():
    # u_values is strictly increasing, so shape-preserving interpolation works.
    amplitude_in_u = PchipInterpolator(
        u_values,
        branch["A"],
    )

    A_u = amplitude_in_u(uniform_u)
    A_reflected = amplitude_in_u(1.0 - uniform_u)

    line, = ax2.plot(
        uniform_u,
        A_u,
        linewidth=2.0,
        label=rf"$A_{i}(u)$",
    )

    if show_reflected_curves:
        ax2.plot(
            uniform_u,
            A_reflected,
            linestyle="--",
            linewidth=1.3,
            alpha=0.65,
            label=rf"$A_{i}(1-u)$",
        )

    mirror_errors[i] = {
        "maximum": float(np.max(np.abs(A_u - A_reflected))),
        "rms": float(np.sqrt(np.mean((A_u - A_reflected) ** 2))),
    }

ax2.axvline(
    0.5,
    linestyle="--",
    linewidth=1.5,
    label=r"$u=1/2$",
)

ax2.set_xlim(0.0, 1.0)
ax2.set_xlabel(
    r"$u=\dfrac{kd}{kd+(1-k)n}$"
)
ax2.set_ylabel(r"$A_i$")
ax2.set_title(
    rf"Amplitude trajectories in the balanced coordinate: "
    rf"$(n,d)=({n},{d})$"
)
ax2.grid(alpha=0.25)
ax2.legend(ncols=2)
fig2.tight_layout()


# ============================================================
# OPTIONAL PLOT 3: MIRROR-ASYMMETRY RESIDUAL
# ============================================================

fig3, ax3 = plt.subplots(figsize=(9, 5))

for i, branch in branches.items():
    amplitude_in_u = PchipInterpolator(
        u_values,
        branch["A"],
    )

    A_u = amplitude_in_u(uniform_u)
    A_reflected = amplitude_in_u(1.0 - uniform_u)

    ax3.plot(
        uniform_u,
        A_u - A_reflected,
        linewidth=2.0,
        label=rf"$A_{i}(u)-A_{i}(1-u)$",
    )

ax3.axhline(0.0, linewidth=1.0)
ax3.axvline(0.5, linestyle="--", linewidth=1.2)

ax3.set_xlim(0.0, 1.0)
ax3.set_xlabel(r"$u$")
ax3.set_ylabel("mirror residual")
ax3.set_title(
    rf"Departure from exact reflection symmetry: "
    rf"$(n,d)=({n},{d})$"
)
ax3.grid(alpha=0.25)
ax3.legend()
fig3.tight_layout()


# ============================================================
# NUMERICAL REPORT
# ============================================================

print()
print(f"(n,d) = ({n},{d})")
print(f"k_c   = {k_c:.12f}")
print("Balanced-coordinate mirror errors:")

for i, errors in mirror_errors.items():
    print(
        f"  branch i={i}: "
        f"max={errors['maximum']:.8e}, "
        f"RMS={errors['rms']:.8e}"
    )


# ============================================================
# SAVE
# ============================================================

if save_figures:
    base_name = f"n{n}_d{d}"

    fig1.savefig(
        output_directory / f"amplitudes_k_{base_name}.png",
        dpi=300,
        bbox_inches="tight",
    )
    fig1.savefig(
        output_directory / f"amplitudes_k_{base_name}.svg",
        bbox_inches="tight",
    )

    fig2.savefig(
        output_directory / f"amplitudes_balanced_{base_name}.png",
        dpi=300,
        bbox_inches="tight",
    )
    fig2.savefig(
        output_directory / f"amplitudes_balanced_{base_name}.svg",
        bbox_inches="tight",
    )

    fig3.savefig(
        output_directory / f"amplitude_residual_{base_name}.png",
        dpi=300,
        bbox_inches="tight",
    )
    fig3.savefig(
        output_directory / f"amplitude_residual_{base_name}.svg",
        bbox_inches="tight",
    )

    print()
    print(f"Figures saved to: {output_directory}")

plt.show()

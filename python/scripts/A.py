import sys
import tkinter as tk
from tkinter import simpledialog

import numpy as np
import matplotlib.pyplot as plt
from scipy.signal import argrelextrema

from pathlib import Path

# Répertoire de sortie commun pour toutes les figures
FIGURES_DIR = Path(__file__).resolve().parent.parent / "figures"
FIGURES_DIR.mkdir(exist_ok=True)



def interference_function(
    x: np.ndarray | float,
    k: float,
    n: int,
    d: int,
) -> np.ndarray | float:
    """
    Compact interpolation used in the paper:

        F_k(x)
        =
        k cos(2π d x)
        +
        (1-k) cos(2π n x).
    """
    return (
        k * np.cos(2 * np.pi * d * x)
        + (1 - k) * np.cos(2 * np.pi * n * x)
    )


def refine_peak(
    x_values: np.ndarray,
    y_values: np.ndarray,
    index: int,
) -> tuple[float, float]:
    """
    Refine a sampled periodic maximum by quadratic interpolation
    through the peak and its two circular neighbours.
    """
    number_of_points = len(x_values)
    grid_step = 1.0 / number_of_points

    left_index = (index - 1) % number_of_points
    right_index = (index + 1) % number_of_points

    local_x = np.array(
        [-grid_step, 0.0, grid_step]
    )

    local_y = np.array(
        [
            y_values[left_index],
            y_values[index],
            y_values[right_index],
        ]
    )

    a, b, c = np.polyfit(
        local_x,
        local_y,
        2,
    )

    if abs(a) < 1e-14 or a >= 0:
        return (
            float(x_values[index]),
            float(y_values[index]),
        )

    offset = -b / (2 * a)

    if abs(offset) > grid_step:
        return (
            float(x_values[index]),
            float(y_values[index]),
        )

    x_vertex = (
        x_values[index] + offset
    ) % 1.0

    y_vertex = (
        a * offset**2
        + b * offset
        + c
    )

    return float(x_vertex), float(y_vertex)


# ================================================================
# Select n and d
# ================================================================

root = tk.Tk()
root.withdraw()

n = simpledialog.askinteger(
    "Input",
    "Enter value for n:",
    minvalue=2,
)

d = simpledialog.askinteger(
    "Input",
    "Enter value for d:",
    minvalue=3,
)

root.destroy()

if n is None or d is None:
    print("User cancelled input.")
    sys.exit(0)

if not 1 < n < d:
    raise ValueError(
        "The parameters must satisfy 1 < n < d."
    )

if n % 2 == 0:
    raise ValueError(
        "This symmetry-reduced amplitude plot currently requires odd n."
    )


# ================================================================
# Numerical parameters
# ================================================================

number_of_k_values = 600
number_of_x_values = 10_000

k_values = np.linspace(
    0.0,
    1.0,
    number_of_k_values,
)

# endpoint=False avoids duplicating x=0=1.
x_values = np.linspace(
    0.0,
    1.0,
    number_of_x_values,
    endpoint=False,
)

# For odd n:
#
# A_i(k) = A_(n-i)(k).
#
# Hence the distinct nonconstant classes are
#
# A_1, ..., A_((n-1)/2).
number_of_nonconstant_trajectories = (
    n - 1
) // 2

x_peaks = np.full(
    (
        number_of_nonconstant_trajectories,
        number_of_k_values,
    ),
    np.nan,
)

amplitudes = np.full_like(
    x_peaks,
    np.nan,
)


# ================================================================
# Detect selected crests
# ================================================================

for k_index, k in enumerate(k_values):
    y_values = interference_function(
        x_values,
        k,
        n,
        d,
    )

    local_maximum_indices = argrelextrema(
        y_values,
        np.greater,
        mode="wrap",
    )[0]

    # Remove the fixed crest at x=0.
    circular_distance_from_zero = np.minimum(
        x_values[local_maximum_indices],
        1.0 - x_values[local_maximum_indices],
    )

    tolerance = 2.0 / number_of_x_values

    moving_indices = local_maximum_indices[
        circular_distance_from_zero
        > tolerance
    ]

    if len(moving_indices) < n - 1:
        print(
            f"Warning: only {len(moving_indices)} "
            f"moving maxima detected at k={k:.6f}."
        )
        continue

    # Select the n-1 highest moving maxima.
    selected_indices = moving_indices[
        np.argsort(
            y_values[moving_indices]
        )[-(n - 1):]
    ]

    # Order them by phase.
    selected_indices = np.sort(
        selected_indices
    )

    # Keep only one member of each
    # reflection-symmetric pair.
    selected_indices = selected_indices[
        :number_of_nonconstant_trajectories
    ]

    for branch_index, peak_index in enumerate(
        selected_indices
    ):
        x_peak, amplitude = refine_peak(
            x_values,
            y_values,
            peak_index,
        )

        x_peaks[
            branch_index,
            k_index,
        ] = x_peak

        amplitudes[
            branch_index,
            k_index,
        ] = amplitude


# ================================================================
# Exact amplitude derivative
#
# A_i'(k)
# =
# cos(2π d X_i(k))
# -
# cos(2π n X_i(k)).
# ================================================================

amplitude_derivatives = (
    np.cos(
        2 * np.pi * d * x_peaks
    )
    -
    np.cos(
        2 * np.pi * n * x_peaks
    )
)


# ================================================================
# Plot
# ================================================================

fig, ax = plt.subplots(
    figsize=(8.2, 4.8)
)

number_of_curves = (
    number_of_nonconstant_trajectories
    + 1
)

colors = plt.cm.viridis(
    np.linspace(
        0.0,
        1.0,
        number_of_curves,
    )
)

# Fixed branch A_0(k)=1.
ax.plot(
    k_values,
    np.ones_like(k_values),
    color=colors[0],
    linewidth=1.8,
    label=r"$A_0(k)$",
)

# Nonconstant symmetry classes.
for branch_index in range(
    number_of_nonconstant_trajectories
):
    branch_number = branch_index + 1

    ax.plot(
        k_values,
        amplitudes[branch_index],
        color=colors[
            branch_index + 1
        ],
        linewidth=1.8,
        label=rf"$A_{branch_number}(k)$",
    )


# ================================================================
# Mark interior critical points
# ================================================================

for branch_index in range(
    number_of_nonconstant_trajectories
):
    derivative = amplitude_derivatives[
        branch_index
    ]

    amplitude = amplitudes[
        branch_index
    ]

    critical_k_values = []
    critical_amplitudes = []

    for j in range(
        1,
        len(k_values) - 2,
    ):
        derivative_left = derivative[j]
        derivative_right = derivative[
            j + 1
        ]

        if not (
            np.isfinite(
                derivative_left
            )
            and np.isfinite(
                derivative_right
            )
        ):
            continue

        if (
            derivative_left
            * derivative_right
            < 0
        ):
            k_left = k_values[j]
            k_right = k_values[j + 1]

            k_critical = (
                k_left
                - derivative_left
                * (k_right - k_left)
                / (
                    derivative_right
                    - derivative_left
                )
            )

            amplitude_critical = (
                np.interp(
                    k_critical,
                    k_values,
                    amplitude,
                )
            )

            critical_k_values.append(
                k_critical
            )

            critical_amplitudes.append(
                amplitude_critical
            )

    ax.scatter(
        critical_k_values,
        critical_amplitudes,
        color=colors[
            branch_index + 1
        ],
        s=24,
        zorder=4,
    )


# ================================================================
# Balanced parameter
# ================================================================

k_c = n / (n + d)

ax.axvline(
    k_c,
    color="black",
    linestyle="--",
    linewidth=0.9,
)

ax.annotate(
    r"$k_c$",
    xy=(k_c, 0.0),
    xycoords=ax.get_xaxis_transform(),
    xytext=(0, -3),
    textcoords="offset points",
    ha="center",
    va="top",
    annotation_clip=False,
)


# ================================================================
# Formatting
# ================================================================

ax.set_xlim(
    0.0,
    1.0,
)

# Automatic y-range with a small margin.
finite_amplitudes = amplitudes[
    np.isfinite(amplitudes)
]

if finite_amplitudes.size > 0:
    minimum_amplitude = np.min(
        finite_amplitudes
    )

    amplitude_margin = max(
        0.02,
        0.05
        * (
            1.0
            - minimum_amplitude
        ),
    )

    ax.set_ylim(
        minimum_amplitude
        - amplitude_margin,
        1.02,
    )

# Only endpoint ticks on the x-axis.
ax.set_xticks(
    [0.0, 1.0]
)

ax.set_xticklabels(
    [r"$0.0$", r"$1.0$"]
)

ax.minorticks_off()

ax.set_xlabel(r"$k$")
ax.set_ylabel(r"$A_i(k)$")

ax.legend(
    frameon=False,
    loc="center left",
    bbox_to_anchor=(1.01, 0.55),
    borderaxespad=0.0,
)

ax.spines["top"].set_visible(
    False
)

ax.spines["right"].set_visible(
    False
)

ax.grid(False)

fig.tight_layout(
    rect=(
        0.0,
        0.0,
        0.82,
        1.0,
    )
)


# ================================================================
# Export
# ================================================================

output_filename = (
    FIGURES_DIR / f"amplitude-trajectories-n{n}-d{d}.svg"
)

fig.savefig(
    output_filename,
    format="svg",
    bbox_inches="tight",
    pad_inches=0.05,
)

print(
    f"Saved: {output_filename}"
)

plt.show()
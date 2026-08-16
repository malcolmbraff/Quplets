import sys
import tkinter as tk
from tkinter import simpledialog

import numpy as np
import matplotlib.pyplot as plt
from scipy.optimize import linear_sum_assignment
from scipy.signal import argrelextrema

from pathlib import Path

# Répertoire de sortie commun pour toutes les figures
FIGURES_DIR = Path(__file__).resolve().parent.parent / "figures"
FIGURES_DIR.mkdir(parents=True, exist_ok=True)



# ================================================================
# Interference function
# ================================================================

def F(
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


# ================================================================
# Quadratic peak refinement
# ================================================================

def refine_periodic_peak(
    x_values: np.ndarray,
    y_values: np.ndarray,
    peak_index: int,
) -> tuple[float, float]:
    """
    Refine a sampled periodic local maximum using a quadratic fit
    through the peak and its two circular neighbours.

    Returns:
        refined phase in [0, 1),
        refined amplitude.
    """
    number_of_points = len(x_values)
    grid_step = 1.0 / number_of_points

    left_index = (peak_index - 1) % number_of_points
    right_index = (peak_index + 1) % number_of_points

    # Use local coordinates centred at the sampled maximum.
    local_x = np.array([-grid_step, 0.0, grid_step])
    local_y = np.array(
        [
            y_values[left_index],
            y_values[peak_index],
            y_values[right_index],
        ]
    )

    a, b, c = np.polyfit(local_x, local_y, 2)

    if abs(a) < 1e-14 or a >= 0:
        return (
            float(x_values[peak_index]),
            float(y_values[peak_index]),
        )

    offset = -b / (2 * a)

    # Do not allow the fitted vertex to leave the local interval.
    if abs(offset) > grid_step:
        return (
            float(x_values[peak_index]),
            float(y_values[peak_index]),
        )

    refined_x = (x_values[peak_index] + offset) % 1.0
    refined_y = a * offset**2 + b * offset + c

    return float(refined_x), float(refined_y)


# ================================================================
# Detect all local maxima on the circle
# ================================================================

def detect_all_maxima(
    k: float,
    n: int,
    d: int,
    x_values: np.ndarray,
) -> tuple[np.ndarray, np.ndarray]:
    """
    Detect and refine all local maxima of F_k on the phase circle.
    """
    y_values = F(x_values, k, n, d)

    peak_indices = argrelextrema(
        y_values,
        np.greater,
        mode="wrap",
    )[0]

    refined_positions = []
    refined_amplitudes = []

    for peak_index in peak_indices:
        x_peak, amplitude = refine_periodic_peak(
            x_values,
            y_values,
            peak_index,
        )

        refined_positions.append(x_peak)
        refined_amplitudes.append(amplitude)

    positions = np.asarray(refined_positions)
    amplitudes = np.asarray(refined_amplitudes)

    order = np.argsort(positions)

    return positions[order], amplitudes[order]


# ================================================================
# Circular distance
# ================================================================

def circular_distance(
    x: np.ndarray,
    y: np.ndarray,
) -> np.ndarray:
    """
    Pairwise circular distance on R/Z.

    x has shape (p, 1)
    y has shape (1, q)
    """
    difference = np.abs(x - y)
    return np.minimum(difference, 1.0 - difference)


# ================================================================
# Track anchored crest branches
# ================================================================

def track_anchored_crests(
    n: int,
    d: int,
    k_values: np.ndarray,
    number_of_x_values: int = 20_000,
) -> np.ndarray:
    """
    Track the n anchored crest branches X_i(k).

    Branch identities are propagated by minimum circular displacement
    between consecutive k-values. No amplitude ranking is used.

    Returns:
        array of shape (n, len(k_values)).
    """
    x_values = np.linspace(
        0.0,
        1.0,
        number_of_x_values,
        endpoint=False,
    )

    number_of_k_values = len(k_values)

    branches = np.full(
        (n, number_of_k_values),
        np.nan,
    )

    # Exact anchors at k=0.
    branches[:, 0] = np.arange(n) / n

    # X_0(k)=0 exactly for all k.
    branches[0, :] = 0.0

    previous_positions = branches[:, 0].copy()

    for k_index in range(1, number_of_k_values):
        k = k_values[k_index]

        maxima_positions, _ = detect_all_maxima(
            k,
            n,
            d,
            x_values,
        )

        # Remove the fixed maximum at x=0 from the assignment problem.
        distance_from_zero = np.minimum(
            maxima_positions,
            1.0 - maxima_positions,
        )

        zero_tolerance = 2.5 / number_of_x_values

        moving_maxima = maxima_positions[
            distance_from_zero > zero_tolerance
        ]

        if len(moving_maxima) < n - 1:
            raise RuntimeError(
                f"Only {len(moving_maxima)} moving maxima detected "
                f"at k={k:.6f}; expected at least {n - 1}. "
                "Increase number_of_x_values."
            )

        previous_moving = previous_positions[1:]

        # Cost matrix:
        # rows = previous anchored branches,
        # columns = currently detected moving maxima.
        cost_matrix = circular_distance(
            previous_moving[:, None],
            moving_maxima[None, :],
        )

        row_indices, column_indices = linear_sum_assignment(
            cost_matrix
        )

        current_positions = np.full(n, np.nan)
        current_positions[0] = 0.0

        for row, column in zip(row_indices, column_indices):
            branch_index = row + 1
            current_positions[branch_index] = moving_maxima[column]

        if np.any(~np.isfinite(current_positions)):
            raise RuntimeError(
                f"Branch assignment failed at k={k:.6f}."
            )

        branches[:, k_index] = current_positions
        previous_positions = current_positions

    return branches


# ================================================================
# Input
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
    raise ValueError("The parameters must satisfy 1 < n < d.")


# ================================================================
# Numerical parameters
# ================================================================

number_of_k_values = 1001
number_of_x_values = 20_000

k_values = np.linspace(
    0.0,
    1.0,
    number_of_k_values,
)

branches = track_anchored_crests(
    n=n,
    d=d,
    k_values=k_values,
    number_of_x_values=number_of_x_values,
)


# ================================================================
# Prepare circular display
# ================================================================

# The actual data contain n branches:
#
#     X_0, ..., X_(n-1).
#
# To display the circle as the closed interval [0,1], duplicate
# X_0(k)=0 as the upper boundary X_0(k)+1=1.
display_branches = np.vstack(
    [
        branches,
        branches[0] + 1.0,
    ]
)

number_of_display_curves = n + 1

colors = plt.cm.viridis(
    np.linspace(0.0, 1.0, number_of_display_curves)
)


# ================================================================
# Plot
# ================================================================

fig, ax = plt.subplots(figsize=(8.2, 4.8))

for branch_index in range(number_of_display_curves):
    ax.plot(
        k_values,
        display_branches[branch_index],
        color=colors[branch_index],
        linewidth=1.6,
    )


# Balanced parameter
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
# Axes and formatting
# ================================================================

ax.set_xlim(0.0, 1.0)
ax.set_ylim(0.0, 1.0)

ax.set_xticks([0.0, 1.0])
ax.set_xticklabels(
    [
        r"$0$",
        r"$1$",
    ]
)

initial_grid_ticks = np.linspace(
    0.0,
    1.0,
    n + 1,
)

initial_grid_labels = (
    [r"$0$"]
    + [
        rf"$\frac{{{i}}}{{{n}}}$"
        for i in range(1, n)
    ]
    + [r"$1$"]
)

ax.set_yticks(initial_grid_ticks)
ax.set_yticklabels(initial_grid_labels)

ax.set_xlabel(r"$k$")
ax.set_ylabel(r"$X_i(k)$")

ax.tick_params(
    axis="both",
    labelsize=12,
)

ax.spines["top"].set_visible(False)
ax.spines["right"].set_visible(False)

ax.grid(False)

fig.tight_layout()


# ================================================================
# Export
# ================================================================

output_filename = FIGURES_DIR / f"crest-trajectories-n{n}-d{d}.svg"

fig.savefig(
    output_filename,
    format="svg",
    bbox_inches="tight",
    pad_inches=0.05,
)

print(f"Saved: {output_filename}")

plt.show()

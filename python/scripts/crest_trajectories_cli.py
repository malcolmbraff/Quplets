import argparse

import matplotlib.pyplot as plt
import numpy as np
from scipy.optimize import newton

from pathlib import Path

# Répertoire de sortie commun pour toutes les figures
FIGURES_DIR = Path(__file__).resolve().parent.parent / "figures"
FIGURES_DIR.mkdir(parents=True, exist_ok=True)



def G(x, k, n, d):
    """Stationarity equation, apart from the harmless factor -2π."""
    return (
        k * d * np.sin(2 * np.pi * d * x)
        + (1 - k) * n * np.sin(2 * np.pi * n * x)
    )


def H(x, k, n, d):
    """Derivative of G; nonzero along the anchored crest branches."""
    return 2 * np.pi * (
        k * d**2 * np.cos(2 * np.pi * d * x)
        + (1 - k) * n**2 * np.cos(2 * np.pi * n * x)
    )


def anchored_trajectories(n, d, steps=1000):
    """
    Follow the n branches issued from i/n, i = 0, ..., n-1.

    The figure concerns stationary branches selected by continuation, not
    the independently highest maxima at each parameter value.
    """
    k_values = np.linspace(0.0, 1.0, steps + 1)
    trajectories = np.empty((steps + 1, n))

    # At k = 0, the anchored crests are precisely the n-grid.
    trajectories[0, :] = np.arange(n) / n

    for j, k in enumerate(k_values[1:], start=1):
        for i in range(n):
            previous = trajectories[j - 1, i]

            root = newton(
                func=lambda x: G(x, k, n, d),
                x0=previous,
                fprime=lambda x: H(x, k, n, d),
                tol=1e-13,
                maxiter=30,
            )

            # Work on the unit circle, represented by [0, 1).
            trajectories[j, i] = root % 1.0

    return k_values, trajectories


def plot_trajectories(n, d, output):
    if not (1 < n < d):
        raise ValueError("Require 1 < n < d.")
    if np.gcd(n, d) != 1:
        raise ValueError("Require n and d to be coprime.")
    if n % 2 == 0:
        raise ValueError("This figure is for the odd-n main theorem.")

    k_values, paths = anchored_trajectories(n, d)

    fig, ax = plt.subplots(figsize=(8.2, 5.2))
    colors = plt.cm.viridis(np.linspace(0.08, 0.90, n))

    for i, color in enumerate(colors):
        ax.plot(k_values, paths[:, i], color=color, linewidth=1.8, zorder=2)
        ax.scatter(0, i / n, color=color, s=20, zorder=3)
        ax.scatter(1, paths[-1, i], color=color, s=20, zorder=3)

    # Initial n-grid at the left.
    initial_grid = np.arange(n + 1) / n
    ax.hlines(initial_grid, -0.035, 0.0, color="0.35", linewidth=0.7)

    # Final d-grid, visibly graded at the right.
    final_grid = np.arange(d + 1) / d
    ax.hlines(final_grid, 0.965, 1.02, color="0.35", linewidth=0.7)
    for j, y in enumerate(final_grid):
        ax.text(
            1.035,
            y,
            rf"${j}/{d}$",
            va="center",
            ha="left",
            fontsize=9,
            color="0.25",
        )

    ax.text(-0.045, 1.035, rf"initial ${n}$-grid", ha="left", fontsize=10)
    ax.text(0.965, 1.035, rf"final ${d}$-grid", ha="left", fontsize=10)

    ax.set_xlim(-0.06, 1.15)
    ax.set_ylim(-0.025, 1.075)
    ax.set_xticks([0, 1], [r"$0$", r"$1$"])
    ax.set_yticks(initial_grid, [rf"${j}/{n}$" for j in range(n + 1)])
    ax.set_xlabel(r"$k$")
    ax.set_ylabel(r"$X_i(k)$")
    ax.grid(False)

    fig.tight_layout()
    fig.savefig(FIGURES_DIR / output, format="svg")
    plt.show()


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("n", type=int)
    parser.add_argument("d", type=int)
    parser.add_argument(
        "--output",
        default="crest-trajectories.svg",
        help="Output SVG filename.",
    )
    args = parser.parse_args()

    plot_trajectories(args.n, args.d, args.output)

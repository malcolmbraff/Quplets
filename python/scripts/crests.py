import numpy as np
import matplotlib.pyplot as plt
from scipy.signal import find_peaks

def get_maxima(n, d, k, resolution=100000, epsilon=1e-5):
    def f(x):
        return (
            k * np.cos(2 * np.pi * d * x)
            + (1 - k) * np.cos(2 * np.pi * n * x)
            + epsilon * np.sin(2 * np.pi * x)
        )

    x_vals = np.linspace(0, 1, resolution)
    y_vals = f(x_vals)

    peak_indices, _ = find_peaks(y_vals)
    peak_positions = x_vals[peak_indices]
    peak_values = y_vals[peak_indices]

    for x_edge in [0, 1]:
        y_edge = f(np.array([x_edge]))[0]
        peak_positions = np.append(peak_positions, x_edge)
        peak_values = np.append(peak_values, y_edge)

    num_maxima = n + 1
    top_indices = np.argsort(peak_values)[-num_maxima:][::-1]
    top_positions = peak_positions[top_indices]

    return sorted(top_positions)

# Paramètres
import tkinter as tk
from tkinter import simpledialog

from pathlib import Path

# Répertoire de sortie commun pour toutes les figures
FIGURES_DIR = Path(__file__).resolve().parent / "figures"
FIGURES_DIR.mkdir(exist_ok=True)


root = tk.Tk()
root.withdraw()

n = simpledialog.askinteger("Input", "Enter value for n :")
d = simpledialog.askinteger("Input", "Enter value for d :")
if n is None or d is None:
    print("User cancelled input.")
    exit()

k_values = np.arange(0, 0.999, 0.001)

# Bras gauche de la fourche (epsilon > 0)
results_plus = np.array([get_maxima(n, d, k, epsilon=+1e-5) for k in k_values])

even_n = (n % 2 == 0)
if even_n:
    mid = n // 2
    k_p = n**2 / (n**2 + d**2)
    # Bras droit : la perturbation opposée sélectionne l'autre branche
    results_minus = np.array([get_maxima(n, d, k, epsilon=-1e-5) for k in k_values])

# Graduations de l'axe des x (avec k_p si n est pair)
if even_n:
    x_ticks = [0.0, k_p, 1.0]
    x_tick_labels = [r"$0$", rf"$\frac{{{n**2}}}{{{n**2 + d**2}}}$", r"$1$"]
else:
    x_ticks = [0.0, 1.0]
    x_tick_labels = [r"$0$", r"$1$"]

y_ticks = np.linspace(0.0, 1.0, n + 1)
y_tick_labels = [r"$0$"] + [rf"$\frac{{{i}}}{{{n}}}$" for i in range(1, n)] + [r"$1$"]

right_y_ticks = np.linspace(0.0, 1.0, d + 1)
right_y_tick_labels = (
    [r"$0$"]
    + [rf"$\frac{{{i}}}{{{d}}}$" for i in range(1, d)]
    + [r"$1$"]
)

# Couleurs: une par crête
colors = plt.cm.viridis(np.linspace(0, 1, n + 1))

fig, ax = plt.subplots(figsize=(10, 6))
for i in range(n + 1):
    ax.plot(k_values, results_plus[:, i], label=f"Crête {i+1}",
            color=colors[i], linewidth=1.6)
    if even_n and i == mid:
        # Bras miroir de la crête centrale (avant k_p les deux tracés se superposent en 1/2)
        ax.plot(k_values, results_minus[:, i],
                color=colors[i], linewidth=1.6)

# Traitillé au point de fourche k_p = n^2/(n^2 + d^2) lorsque n est pair
if even_n:
    ax.axvline(k_p, color="gray", linewidth=1.0, linestyle="--")

ax.set_xlim(0.0, 1.0)
ax.set_ylim(0.0, 1.0)
ax.set_xticks(x_ticks, x_tick_labels)
ax.set_yticks(y_ticks, y_tick_labels)
ax.tick_params(axis="both", labelsize=16)

right_ax = ax.secondary_yaxis("right")
right_ax.set_yticks(right_y_ticks, right_y_tick_labels)
right_ax.tick_params(axis="y", labelsize=16)

ax.set_xlabel('k')
ax.set_ylabel('$X_i$')
ax.set_title(fr"$X_{{i,{n},{d}}}(k)$")
ax.grid(False)
fig.tight_layout()
fig.savefig(FIGURES_DIR / "pitchfork.svg", format='svg')
plt.show()
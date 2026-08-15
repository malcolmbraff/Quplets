import numpy as np
import matplotlib.pyplot as plt
from scipy.signal import find_peaks

def get_maxima(n, d, k, resolution=100000):
    def f(x):
        epsilon = 1e-5
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

    maxima = sorted(top_positions)
    quplet = np.diff(maxima)
    return quplet

import tkinter as tk
from tkinter import simpledialog
import math

root = tk.Tk()
root.withdraw()

n = simpledialog.askinteger("Input", "Enter value for n (number of divisions):")

if n is None:
    print("User cancelled input.")
    exit()

k_values = np.arange(0, 0.999, 0.001)

d_range = list(range(n + 1, 2 * n))
num_plots = len(d_range)
num_cols = 2
num_rows = math.ceil(num_plots / num_cols)

fig, axs = plt.subplots(num_rows, num_cols, figsize=(14, 5 * num_rows))
axs = axs.flatten()

for idx, d in enumerate(d_range):
    results = [get_maxima(n, d, k) for k in k_values] 
    results_array = np.array(results)

    half_n = n // 2 + 1
    results_array = results_array[:, :half_n]

    a = np.floor(d / n) / d
    b = 1 / n
    c = (np.floor(d / n) + 1) / d

    y_ticks = [a, b, c]
    y_tick_labels = [
        rf"$\frac{{{int(np.floor(d / n))}}}{{{d}}}$",
        rf"$\frac{{1}}{{{n}}}$",
        rf"$\frac{{{int(np.floor(d / n)) + 1}}}{{{d}}}$"
    ]

    ax = axs[idx]
    for i in range(half_n):
        if i < (n // 2):
            label = f"Éléments {i+1} et {n - i}"
        else:
            label = f"Élément {i+1}"
        ax.plot(k_values, results_array[:, i], label=label)

    ax.set_xlabel('λ')
    ax.set_ylabel('valeur par élément du quplet')
    ax.set_title(r"Éléments de $Q_\lambda({%d}, {%d})$ en fonction de $\lambda$" % (n, d))
    ax.set_yticks(y_ticks)
    ax.set_yticklabels(y_tick_labels)
    ax.legend()
    ax.grid(True, axis='x')
    ax.grid(True, axis='y')

# Hide unused subplots if any
for j in range(idx + 1, len(axs)):
    fig.delaxes(axs[j])

plt.tight_layout()
plt.show()

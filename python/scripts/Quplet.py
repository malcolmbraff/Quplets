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

# Paramètres
import tkinter as tk
from tkinter import simpledialog

root = tk.Tk()
root.withdraw()

n = simpledialog.askinteger("Input", "Enter value for n :")
d = simpledialog.askinteger("Input", "Enter value for d :")
if n is None or d is None:
    print("User cancelled input.")
    exit()

k_values = np.arange(0, 0.999, 0.001)
results = [get_maxima(n, d, k) for k in k_values]
results_array = np.array(results)


# Tick labels
a = np.floor(d / n) / d
b = 1 / n
c = (np.floor(d / n) + 1) / d

y_ticks = [a, b, c]
y_tick_labels = [
    rf"$\frac{{{int(np.floor(d / n))}}}{{{d}}}$",
    rf"$\frac{{1}}{{{n}}}$",
    rf"$\frac{{{int(np.floor(d / n)) + 1}}}{{{d}}}$"
]

x_ticks = [0.0, n / (n + d), 1.0]
x_tick_labels = [r"$0$", rf"$\frac{{{n}}}{{{d}}}$", r"$\infty$"]


# Couleurs distinctes
colors = plt.cm.viridis(np.linspace(0, 1, (n // 2) + 1))

# Plot
plt.figure(figsize=(10, 6))
for i in range(n // 2 + 1):
    if i == n // 2:
        label = f"Élément {i + 1} (central)"
    else:
        left = i + 1
        right = n - i
        label = f"Éléments {left} et {right}"
    plt.plot(k_values, results_array[:, i], label=label, color=colors[i])

# Lignes verticales pour les valeurs critiques de λ
""" for j in range(1, 4):
    lambda_j = n / (j * n + d)
    plt.axvline(x=lambda_j, color='black', linestyle='--', linewidth=1)
    plt.text(lambda_j, plt.ylim()[0], rf"$\frac{{{n}}}{{{j*n+d}}}$",
             fontsize=16, verticalalignment='bottom', horizontalalignment='left') """

plt.xticks(fontsize=16)
plt.yticks(fontsize=16)

plt.xlabel('k')
plt.ylabel('$Δ X_i$')
plt.title(fr"Elements of spacing vector $Δ X_{{i,{n},{d}}}(k)$")
plt.yticks(y_ticks, y_tick_labels)
plt.xticks(x_ticks, x_tick_labels)
plt.grid(False)
# plt.legend()
plt.tight_layout()
plt.savefig("Spacing Vector.svg", format='svg')
plt.show()
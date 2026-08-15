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

    return maxima

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



x_ticks = [0.0, 1.0]
x_tick_labels = [r"$0$", r"$\infty$"]


y_ticks = np.linspace(0.0, 1.0, n + 1)
y_tick_labels = [r"$0$"] + [rf"$\frac{{{i}}}{{{n}}}$" for i in range(1, n)] + [r"$1$"]



# Couleurs: une par crête
colors = plt.cm.viridis(np.linspace(0, 1, n+1))

plt.figure(figsize=(10, 6))
for i in range(n+1):
    label = f"Crête {i+1}"
    plt.plot(k_values, results_array[:, i], label=label, color=colors[i], linewidth=1.6)


plt.xticks(fontsize=16)
plt.yticks(fontsize=16)



plt.xticks(x_ticks, x_tick_labels)
plt.yticks(y_ticks, y_tick_labels)
plt.xlabel('k')
plt.ylabel('$X_i$')
plt.title(fr"$X_{{i,{n},{d}}}(k)$")
plt.grid(False)
# plt.legend()
plt.tight_layout()
plt.savefig("Crests.svg", format='svg')
plt.show()
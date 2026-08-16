import numpy as np
import matplotlib.pyplot as plt
from scipy.signal import argrelextrema
from fractions import Fraction

# Fonction pour affiner un maximum local par interpolation quadratique
def refine_peak(x_vals, y_vals, index):
    if index == 0 or index == len(x_vals)-1:
        return x_vals[index], y_vals[index]
    x_m1, x_0, x_p1 = x_vals[index-1], x_vals[index], x_vals[index+1]
    y_m1, y_0, y_p1 = y_vals[index-1], y_vals[index], y_vals[index+1]
    coeffs = np.polyfit([x_m1, x_0, x_p1], [y_m1, y_0, y_p1], 2)
    a, b, c = coeffs
    x_vertex = -b / (2*a)
    y_vertex = a * x_vertex**2 + b * x_vertex + c
    return x_vertex, y_vertex

# Paramètres
n = 7
d = 11

# Domaine k
k_vals = np.linspace(0.0, n/d, 400)
# Domaine x pour chaque k
x = np.linspace(0, 1, 5000)

# Préparation des listes
x_peaks_refined = [[] for _ in range(n - 1)]
A_peaks_refined = [[] for _ in range(n - 1)]

# Balayage en k
for k in k_vals:
    Qk = lambda x: k * np.cos(2 * np.pi * d * x) + np.cos(2 * np.pi * n * x)
    y = Qk(x)
    max_indices = argrelextrema(y, np.greater)[0]

    if len(max_indices) >= n - 1:
        top_indices = sorted(max_indices[np.argsort(y[max_indices])[-(n - 1):]])
        top_indices = sorted(top_indices)
        for i in range(n - 1):
            x_peak, y_peak = refine_peak(x, y, top_indices[i])
            x_peaks_refined[i].append(x_peak)
            A_peaks_refined[i].append(y_peak)
    else:
        for i in range(n - 1):
            x_peaks_refined[i].append(np.nan)
            A_peaks_refined[i].append(np.nan)

# Conversion en tableaux numpy
x_peaks_refined = np.array(x_peaks_refined)
A_peaks_refined = np.array(A_peaks_refined)

# Tracé des floor(n/2)+1 premières crêtes
n_peaks_to_plot = int(n / 2) + 1
colors = plt.cm.viridis(np.linspace(0, 1, n_peaks_to_plot))

plt.figure(figsize=(12, 6))

for i in range(n_peaks_to_plot):
    plt.plot(k_vals, A_peaks_refined[i], color=colors[i])

# Calcul de la position des labels sous l'axe
plt.plot([], [])  # Dummy plot to trigger axes setup
plt.ylim()  # Ensure limits are computed

ymin, ymax = plt.ylim()
line_offset = 0.02 * (ymax - ymin)
label_offset = 0.1 * (ymax - ymin)
ymin_plot = ymin
y_label = ymin_plot - label_offset

# Détection des zéros de dA/dk avec lignes interrompues
for i in range(n_peaks_to_plot):
    A_vals = A_peaks_refined[i]
    dA_dk = np.gradient(A_vals, k_vals)
    for j in range(1, len(k_vals)):
        if np.sign(dA_dk[j-1]) != np.sign(dA_dk[j]):
            k0 = k_vals[j-1]
            k1 = k_vals[j]
            A0 = dA_dk[j-1]
            A1 = dA_dk[j]
            if A1 - A0 != 0:
                k_zero = k0 - A0 * (k1 - k0) / (A1 - A0)
                k_frac = Fraction.from_float(k_zero).limit_denominator(1000)
                print(f"k ≈ {k_zero:.5f} ≈ {k_frac}")
                a0 = A_vals[j-1]
                a1 = A_vals[j]
                A_zero = a0 + (a1 - a0) * (k_zero - k0) / (k1 - k0)
                plt.vlines(x=k_zero, ymin=ymin_plot - line_offset, ymax=A_zero, color='black', linestyle=':', linewidth=0.8)
                if i < (n - 1) // 2:
                    label = f'crêtes {i+1} et {2*n - (i+1)}'
                else:
                    label = f'crête {i+1}'
                plt.text(k_zero, y_label, f'k={k_zero:.2f}\n{label}',
                         rotation=90, va='top', ha='center', fontsize=8)

# Lignes verticales pour k = 0 et k = 1 avec labels
plt.axvline(x=0.0, color='gray', linestyle='-', linewidth=0.8)
plt.axvline(x=1.0, color='gray', linestyle='-', linewidth=0.8)
plt.text(0.0, y_label, 'k=0', rotation=90, va='top', ha='center', fontsize=8)
plt.text(0.0, y_label - 0.01, '', rotation=90, va='top', ha='center', fontsize=8)
plt.text(1.0, y_label, 'k=1', rotation=90, va='top', ha='center', fontsize=8)
plt.text(1.0, y_label - 0.01, '', rotation=90, va='top', ha='center', fontsize=8)

# Affichage sans grille ni ticks, mais avec labels
plt.xlabel('k')
plt.ylabel('Amplitude')
plt.xticks([])
plt.yticks([])
plt.grid(False)

plt.title(f'Amplitude raffinée des {n_peaks_to_plot} premières crêtes pour n = {n} et d = {d}')
plt.tight_layout()
plt.show()

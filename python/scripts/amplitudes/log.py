import numpy as np
import matplotlib.pyplot as plt
from scipy.optimize import curve_fit
from scipy.signal import argrelextrema

# Fonction pour affiner un maximum local par interpolation quadratique
def refine_peak(x_vals, y_vals, index):
    if index == 0 or index == len(x_vals)-1:
        return x_vals[index], y_vals[index], np.nan
    x_m1, x_0, x_p1 = x_vals[index-1], x_vals[index], x_vals[index+1]
    y_m1, y_0, y_p1 = y_vals[index-1], y_vals[index], y_vals[index+1]
    coeffs = np.polyfit([x_m1, x_0, x_p1], [y_m1, y_0, y_p1], 2)
    a, b, c = coeffs
    x_vertex = -b / (2*a)
    y_vertex = a * x_vertex**2 + b * x_vertex + c
    curvature = np.abs(2 * a)
    uncertainty = 1 / curvature if curvature != 0 else np.nan
    return x_vertex, y_vertex, uncertainty

# Paramètres
n = 5
d = 7
k_c = n / (n + d)

# Domaine complet
k_vals_full = np.linspace(0.0, 1.0, 400)
x = np.linspace(0, 1, 5000)

# Raffiner A(k)
A_peaks_refined = [[] for _ in range(n - 1)]

for k in k_vals_full:
    Qk = lambda x: k * np.cos(2 * np.pi * d * x) + (1 - k) * np.cos(2 * np.pi * n * x)
    y = Qk(x)
    max_indices = argrelextrema(y, np.greater)[0]
    if len(max_indices) >= n - 1:
        top_indices = sorted(max_indices[np.argsort(y[max_indices])[-(n - 1):]])
        top_indices = sorted(top_indices)
        for i in range(n - 1):
            x_peak, y_peak, _ = refine_peak(x, y, top_indices[i])
            A_peaks_refined[i].append(y_peak)
    else:
        for i in range(n - 1):
            A_peaks_refined[i].append(np.nan)

A_peaks_refined = np.array(A_peaks_refined)

# Choisir la crête 1
A_real_full = A_peaks_refined[0]

# Restreindre autour de k_c
window = 0.2  # Largeur de la fenêtre
mask = (k_vals_full >= k_c - window/2) & (k_vals_full <= k_c + window/2)
k_vals = k_vals_full[mask]
A_real = A_real_full[mask]

# Modèle quadratique
def model_quad(k, a, b, c):
    return a*(k-k_c)**2 + b*(k-k_c) + c

# Modèle logarithmique
def model_log(k, beta, offset):
    return offset + beta * np.log(1 + (k - k_c)/k_c)

# Ajustements
popt_quad, _ = curve_fit(model_quad, k_vals, A_real)
popt_log, _ = curve_fit(model_log, k_vals, A_real)

A_fit_quad = model_quad(k_vals, *popt_quad)
A_fit_log = model_log(k_vals, *popt_log)

# Erreurs quadratiques
mse_quad = np.mean((A_real - A_fit_quad)**2)
mse_log = np.mean((A_real - A_fit_log)**2)

# Tracé
plt.figure(figsize=(12, 6))
plt.plot(k_vals, A_real, label="Amplitude réelle A₁(k)", color="black")
plt.plot(k_vals, A_fit_quad, '--', label=f"Modèle quadratique (MSE={mse_quad:.2e})", color="purple")
plt.plot(k_vals, A_fit_log, '--', label=f"Modèle logarithmique (MSE={mse_log:.2e})", color="green")
plt.axvline(k_c, color="red", linestyle="--", label="k_c = n/(n+d)")
plt.xlabel('k')
plt.ylabel('Amplitude')
plt.title('Comparaison : Modèle quadratique vs logarithmique autour de k_c')
plt.grid(True)
plt.legend()
plt.tight_layout()
plt.savefig("modele_log_vs_quad_Ak.pdf", bbox_inches="tight")
plt.show()

# Affichage des équations
print("\nModèle quadratique :")
print(f"A(k) ≈ {popt_quad[0]:.5f} (k-k_c)^2 + {popt_quad[1]:.5f} (k-k_c) + {popt_quad[2]:.5f}")

print("\nModèle logarithmique :")
print(f"A(k) ≈ {popt_log[1]:.5f} + {popt_log[0]:.5f} * log(1 + (k-k_c)/k_c)")
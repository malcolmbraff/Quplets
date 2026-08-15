import numpy as np
import matplotlib.pyplot as plt
from matplotlib.widgets import Slider
from scipy.signal import argrelextrema
from scipy.optimize import curve_fit

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
n = 3
d = 4

# Domaine k
k_vals = np.linspace(0.0, 1.0, 400)
x = np.linspace(0, 1, 5000)

# Raffiner A(k) pour toutes les valeurs de k
A_peaks_refined = [[] for _ in range(n - 1)]

for k in k_vals:
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

# Choisir une crête à analyser
A_real = A_peaks_refined[0]

# Analyse de Fourier
fft_coeffs = np.fft.fft(A_real)
frequencies = np.fft.fftfreq(len(k_vals), d=(k_vals[1] - k_vals[0]))

# Fonction d'erreur quadratique
def mse(y_true, y_pred):
    return np.mean((y_true - y_pred)**2)

# Ajustement exponentiel sur le spectre
modes = np.arange(1, len(k_vals)//2)
amplitudes = np.abs(fft_coeffs[1:len(k_vals)//2])

# Fonction modèle : décroissance exponentielle
def exp_decay(x, a, b):
    return a * np.exp(b * x)

params, _ = curve_fit(exp_decay, modes, amplitudes, p0=[1, -0.1])
a_fit, b_fit = params

print(f"Décroissance estimée : exp({b_fit:.3f} * mode)")

# Interface
fig, (ax1, ax2) = plt.subplots(2, 1, figsize=(12, 10))
plt.subplots_adjust(left=0.1, bottom=0.3)

# Trajectoire réelle et reconstruction initiale
line_real, = ax1.plot(k_vals, A_real, label="Amplitude raffinée A₁(k)", color='black')
line_reconstructed, = ax1.plot(k_vals, np.real(np.fft.ifft(fft_coeffs)), '--', label="Reconstruction Fourier", color='blue')

error_text = ax1.text(0.7, 0.9, "", transform=ax1.transAxes)

ax1.set_xlabel('k')
ax1.set_ylabel('Amplitude')
ax1.set_title('Ajustement de A(k) par Fourier')
ax1.grid(True)
ax1.legend()
ax1.set_xlim(0, 1)
ax1.set_ylim(0, 1.2)

# Spectre en log-échelle
coeff_magnitudes = np.abs(fft_coeffs[:len(k_vals)//2])
(stem_lines, stem_markers, _) = ax2.stem(coeff_magnitudes, linefmt='grey', markerfmt=".", basefmt=" ")
cutoff_line = ax2.axvline(10, color='red', linestyle='--', label="Cutoff")
fit_curve = ax2.plot(modes, exp_decay(modes, *params), 'r--', label="Décroissance exponentielle ajustée")[0]

ax2.set_title("Spectre de Fourier (log-échelle)")
ax2.set_xlabel("Indice de mode")
ax2.set_ylabel("Amplitude")
ax2.set_yscale('log')
ax2.grid(True)
ax2.legend()

# Slider pour choisir le nombre de modes
ax_modes = plt.axes([0.1, 0.15, 0.8, 0.03])
slider_modes = Slider(ax_modes, 'Modes Fourier', 1, len(k_vals)//2, valinit=10, valstep=1)

# Fonction d'update
def update(val):
    num_modes = int(slider_modes.val)
    coeffs_filtered = np.zeros_like(fft_coeffs)
    coeffs_filtered[:num_modes] = fft_coeffs[:num_modes]
    coeffs_filtered[-num_modes:] = fft_coeffs[-num_modes:]
    coeffs_filtered[-num_modes:] = fft_coeffs[-num_modes:]
    reconstructed = np.real(np.fft.ifft(coeffs_filtered))
    line_reconstructed.set_ydata(reconstructed)
    
    # Mettre à jour la ligne de cutoff
    cutoff_line.set_xdata([num_modes, num_modes])
    
    # Calculer l'erreur quadratique
    current_mse = mse(A_real, reconstructed)
    error_text.set_text(f"MSE = {current_mse:.2e}")
    
    fig.canvas.draw_idle()

slider_modes.on_changed(update)

plt.show()
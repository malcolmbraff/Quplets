import numpy as np
import matplotlib.pyplot as plt
from scipy.signal import argrelextrema

# Paramètres
n = 5
d = 7
k = 0.75

# Définition de la fonction Q(x)
x = np.linspace(0, 1, 2000)
Q = lambda x: k * np.cos(2 * np.pi * d * x) + np.cos(2 * np.pi * n * x)
y = Q(x)

# Détection des maxima locaux
max_indices = argrelextrema(y, np.greater)[0]
peak_indices = sorted(max_indices[np.argsort(y[max_indices])[-(n - 1):]])

# Coordonnées des maxima
peak_x = x[peak_indices]
peak_y = y[peak_indices]

# Ajout manuel des crêtes aux extrémités
peak_x = np.concatenate(([0], peak_x, [1]))
peak_y = np.concatenate(([k + 1], peak_y, [k + 1]))

# Tracé
plt.figure(figsize=(10, 5))
plt.plot(x, y, label='Q(x)', color='blue')
plt.plot(peak_x, peak_y, 'ro')

# Lignes verticales pour chaque pic
for px in peak_x:
    plt.axvline(x=px, color='gray', linestyle='--', linewidth=0.8)
    plt.text(px, plt.ylim()[0] - 0.1, f'{px:.2f}', ha='center', va='top', fontsize=8)


plt.xlabel('x')
plt.ylabel('F(x)')
plt.xticks([])
plt.yticks([])
plt.grid(False)
plt.savefig("F(x).svg", format='svg')
plt.show()
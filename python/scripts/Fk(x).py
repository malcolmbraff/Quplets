import numpy as np
import matplotlib.pyplot as plt
from scipy.signal import argrelextrema

# Paramètres
n = 5
d = 8
k = n/d

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



for i in range(n + d + 1):
    x = i / (n + d)
    plt.axvline(x=x, color='lightgray', linestyle='--', linewidth=0.8, zorder=0)
    plt.text(
        x, -0.04, rf"$\frac{{{i}}}{{{n+d}}}$",
        transform=plt.gca().get_xaxis_transform(),  # x en data, y en coords d’axe
        ha='center', va='top', fontsize=8, clip_on=False
    )
plt.xlabel('x')
plt.ylabel('F(x)')
plt.xticks([])
plt.yticks([])
plt.grid(False)
plt.savefig("Fk(x).svg", format='svg')
plt.show()
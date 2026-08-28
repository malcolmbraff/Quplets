import numpy as np
import matplotlib.pyplot as plt
from scipy.signal import argrelextrema
from pathlib import Path

FIGURES_DIR = Path(__file__).resolve().parent.parent / "figures"
FIGURES_DIR.mkdir(parents=True, exist_ok=True)

# Paramètres
n = 3
d = 5
e = 7
S = n + d + e

# Poids : chaque coefficient est le produit des deux autres fréquences
k1 = d * e / S
k2 = e * n / S
k3 = n * d / S

# Définition de la fonction Q(x)
x = np.linspace(0, 1, 20000)
Q = lambda x: (k1 * np.cos(2 * np.pi * n * x)
               + k2 * np.cos(2 * np.pi * d * x)
               + k3 * np.cos(2 * np.pi * e * x))
y = Q(x)

# Détection des maxima locaux
max_indices = argrelextrema(y, np.greater)[0]
peak_indices = sorted(max_indices)

# Coordonnées des maxima
peak_x = x[peak_indices]
peak_y = y[peak_indices]

# Ajout manuel des crêtes aux extrémités
peak_x = np.concatenate(([0], peak_x, [1]))
peak_y = np.concatenate(([k1 + k2 + k3], peak_y, [k1 + k2 + k3]))

# Tracé
plt.figure(figsize=(10, 5))
plt.plot(x, y, label='Q(x)', color='blue')
plt.plot(peak_x, peak_y, 'ro')

# Grille doublée : pas de 1/(2S), les maxima secondaires tombent sur les demi-noeuds
G = 2 * S
for i in range(G + 1):
    xi = i / G
    plt.axvline(x=xi, color='lightgray', linestyle='--', linewidth=0.8, zorder=0)
    plt.text(
        xi, -0.04, rf"$\frac{{{i}}}{{{G}}}$",
        transform=plt.gca().get_xaxis_transform(),  # x en data, y en coords d’axe
        ha='center', va='top', fontsize=7, clip_on=False
    )
plt.xlabel('x')
plt.ylabel('F(x)')
plt.xticks([])
plt.yticks([])
plt.grid(False)
plt.savefig(FIGURES_DIR / "Fk(x)_three.svg", format='svg')
plt.show()

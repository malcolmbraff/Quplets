import numpy as np
import matplotlib.pyplot as plt
from scipy.optimize import brentq
from scipy.signal import argrelextrema

# paramètres
n = 5
d = 7
k = n / d  # on prend le seuil k = n/d

# définition de F_k(x), G(k,x), H(k,x)
def Fk(x):
    return k * np.cos(2 * np.pi * d * x) + np.cos(2 * np.pi * n * x)

def Gkx(x):
    return -2 * np.pi * (
        k * d * np.sin(2 * np.pi * d * x) +
        n * np.sin(2 * np.pi * n * x)
    )

def Hkx(x):
    return -(2 * np.pi)**2 * (
        k * d**2 * np.cos(2 * np.pi * d * x) +
        n**2 * np.cos(2 * np.pi * n * x)
    )

# grille fine pour approximer les crêtes
num_samples = 5000
x_grid = np.linspace(0, 1, num_samples, endpoint=False)
y_grid = Fk(x_grid)

# 1. détecter des maxima locaux numériques
candidate_idx = argrelextrema(y_grid, np.greater)[0]

# 2. raffiner chaque maximum échantillonné en résolvant G(k,x)=0
#    entre ses deux voisins, puis vérifier H<0.
crest_x = []
crest_y = []
for idx in candidate_idx:
    left = x_grid[idx - 1]
    right = x_grid[idx + 1]
    x0 = brentq(Gkx, left, right, xtol=1e-14, rtol=1e-14)
    Hval = Hkx(x0)
    if Hval < 0:
        crest_x.append(x0)
        crest_y.append(Fk(x0))

# ajouter aussi les bornes 0 (et 1 qui est le même point modulo 1)
# parce qu'en pratique F_k a souvent une crête à x=0
for x0 in [0.0]:
    Gval = Gkx(x0)
    Hval = Hkx(x0)
    if np.abs(Gval) < 1e-2 and Hval < 0:
        crest_x.append(x0)
        crest_y.append(Fk(x0))

# tri des crêtes par phase croissante
order = np.argsort(crest_x)
crest_x = np.array(crest_x)[order]
crest_y = np.array(crest_y)[order]

print("Positions de crête retenues (x):")
print(crest_x)

# 3. calcul de la somme cos(2π n x) sur ces crêtes
cos_n_at_crests = np.cos(2 * np.pi * n * crest_x)
E_n_k = np.sum(cos_n_at_crests)

print(f"Valeurs cos(2π n x) aux crêtes : {cos_n_at_crests}")
print(f"E_n(k) = somme = {E_n_k}")

# 4. tracé pour visualiser
plt.figure(figsize=(10,4))
plt.plot(x_grid, y_grid, label="F_k(x)")
plt.plot(crest_x, Fk(crest_x), 'ro', label="crêtes retenues")

for cx in crest_x:
    plt.axvline(cx, color='gray', linestyle='--', linewidth=0.8)

plt.title(
    rf"n={n}, d={d}, k={k:.3f} ;  $E_n(k)=\sum \cos(2\pi n x_\mathrm{{crest}})$ = {E_n_k:.3f}"
)
plt.xlabel("x")
plt.ylabel("F_k(x)")
plt.xticks([])
plt.yticks([])
plt.grid(False)
plt.tight_layout()
plt.show()

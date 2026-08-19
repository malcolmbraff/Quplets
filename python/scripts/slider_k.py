import numpy as np
import matplotlib.pyplot as plt
from matplotlib.widgets import Slider
from scipy.signal import argrelextrema

# -----------------
# paramètres fixes
# -----------------
n = 7
d = 11




# grille en x
x = np.linspace(0, 1, 2000)

def compute_Fk_and_peaks(k):
    # F_k(x)
    y = k * np.cos(2 * np.pi * d * x) + (1-k)* np.cos(2 * np.pi * n * x)

    # indices des maxima locaux stricts
    max_idx_all = argrelextrema(y, np.greater)[0]

    # valeurs aux maxima
    y_at_max = y[max_idx_all]

    # on prend les (n-1) plus hauts maxima internes
    # (on rajoutera ensuite 0 et 1 manuellement)
    if len(max_idx_all) >= (n - 1):
        top_idx_sorted = np.argsort(y_at_max)[-(n - 1):]  # indices triés par hauteur
        chosen_idx = max_idx_all[top_idx_sorted]
    else:
        # fallback si jamais il y a trop peu de maxima détectés
        chosen_idx = max_idx_all

    # on les trie en x croissant
    chosen_idx = np.array(sorted(chosen_idx))

    # coordonnées des pics internes
    peak_x_internal = x[chosen_idx]
    peak_y_internal = y[chosen_idx]

    # on ajoute la crête en 0 et 1 "à la main"
    # F_k(0) = k + 1
    # F_k(1) = k + 1 (même phase que 0)
    peak_x_full = np.concatenate(([0.0], peak_x_internal, [1.0]))
    peak_y_full = np.concatenate(([1.0], peak_y_internal, [1.0]))

    return y, peak_x_full, peak_y_full


# -----------------
# figure + axes
# -----------------

plt.close('all')
fig, ax = plt.subplots(figsize=(10, 5))

# espace en bas pour le slider
plt.subplots_adjust(left=0.1, right=0.95, bottom=0.25)

# valeur initiale de k
k0 = n/(n+d)

# calcul initial
y0, peak_x0, peak_y0 = compute_Fk_and_peaks(k0)

# courbe principale
(line_F,) = ax.plot(x, y0, color='blue', label='F_k(x)')

# points rouges (crêtes)
(scatter_peaks,) = ax.plot(peak_x0, peak_y0, 'ro')

# lignes verticales pour les crêtes
vlines = []
vtexts = []

ymin, ymax = np.min(y0), np.max(y0)

for px in peak_x0:
    vline = ax.axvline(x=px, color='gray', linestyle='--', linewidth=0.8)
    vlines.append(vline)
    txt = ax.text(
        px,
        ymin - 0.1 * (ymax - ymin),
        f'{px:.2f}',
        ha='center',
        va='top',
        fontsize=8,
    )
    vtexts.append(txt)

# habillage du graphe
ax.set_xlabel('x')
ax.set_ylabel('$F_k$(x)')
ax.set_xticks([])   # pas de graduation en x
ax.set_yticks([])   # pas de graduation en y
ax.set_title(fr'Interference pattern and selected crests (n={n}, d={d})')
ax.set_xlim(0, 1)

# on fige les limites verticales pour éviter que ça bouge quand k bouge
margin = 0.15 * (ymax - ymin)
ax.set_ylim(ymin - margin, ymax + margin)

# -----------------
# slider pour k
# -----------------

ax_k = plt.axes([0.1, 0.1, 0.8, 0.05])  # [left, bottom, width, height]
slider_k = Slider(
    ax=ax_k,
    label='k',
    valmin=0.0,
    valmax=0.999,
    valinit=k0,
    valstep=0.001,
)


# -----------------
# fonction de mise à jour
# -----------------

def update(val):
    k_val = slider_k.val

    # recalculer courbe et crêtes
    y_new, peak_x_new, peak_y_new = compute_Fk_and_peaks(k_val)

    # mettre à jour la courbe
    line_F.set_ydata(y_new)

    # mettre à jour les points rouges
    scatter_peaks.set_xdata(peak_x_new)
    scatter_peaks.set_ydata(peak_y_new)

    # mettre à jour lignes verticales
    # d'abord enlever les anciennes lignes / textes de l'axe
    for vl in vlines:
        vl.remove()
    vlines.clear()
    for txt in vtexts:
        txt.remove()
    vtexts.clear()

    # nouvelles bornes min/max pour replacer les textes lisiblement
    ymin_new, ymax_new = np.min(y_new), np.max(y_new)
    # on ne touche pas à ax.set_ylim pour garder une hauteur stable visuellement

    for px in peak_x_new:
        vline = ax.axvline(x=px, color='gray', linestyle='--', linewidth=0.8)
        vlines.append(vline)
        txt = ax.text(
            px,
            ymin_new - 0.1 * (ymax_new - ymin_new),
            f'{px:.2f}',
            ha='center',
            va='top',
            fontsize=8,
        )
        vtexts.append(txt)

    fig.canvas.draw_idle()  # rafraîchir l'affichage


# connecter le slider à la fonction update
slider_k.on_changed(update)

plt.show()
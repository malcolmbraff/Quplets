"""Q(x) = k1 cos(2pi n x) + k2 cos(2pi d x) + k3 cos(2pi e x)
avec k1 = de/S, k2 = en/S, k3 = nd/S et S = n+d+e.

Ces poids sont exactement ceux qui rendent k1*n = k2*d = k3*e = nde/S, donc

    Q'(x) = -2pi (nde/S) * [ sin(2pi n x) + sin(2pi d x) + sin(2pi e x) ]

Les cretes ne dependent donc que de l'annulation de cette somme de trois sinus.
En posant z = exp(2i pi x), x = p/q est un point critique ssi Phi_q(z) divise
F(z) = z^(N+n)+z^(N+d)+z^(N+e) - z^(N-n)-z^(N-d)-z^(N-e)  (N = max(n,d,e)).
Comme deg Phi_q = phi(q) <= 2N, l'enumeration des q est finie et EXACTE :
le reseau rationnel des cretes est calcule ici, il ne vaut pas i/(2S) en general.
"""

import matplotlib

# Les sliders demandent un backend interactif : en cellule VS Code / Jupyter le
# backend "inline" (ou "agg", "pdf", "svg") ne rend qu'une image figee, sans
# widgets actifs. On bascule alors vers une vraie fenetre.
try:  # matplotlib >= 3.9
    from matplotlib.backends.registry import BackendFilter, backend_registry
    _interactive = set(backend_registry.list_builtin(BackendFilter.INTERACTIVE))
except ImportError:  # versions plus anciennes
    _interactive = {b.lower() for b in matplotlib.rcsetup.interactive_bk}
if matplotlib.get_backend().lower() not in _interactive:
    for _backend in ('macosx', 'qtagg', 'tkagg'):
        try:
            matplotlib.use(_backend, force=True)
            break
        except Exception:
            continue
    else:
        raise SystemExit(
            "Aucun backend interactif disponible : lancer le script depuis un "
            "terminal (python 'Fk(x)_three_slider.py')."
        )

import numpy as np
import matplotlib.pyplot as plt
from matplotlib.widgets import Slider
from scipy.optimize import brentq
from fractions import Fraction
from functools import lru_cache
from math import gcd, lcm

# -----------------
# valeurs initiales
# -----------------
n0, d0, e0 = 3, 4, 5

NMIN, NMAX = 1, 12      # bornes des sliders
LMAX = 48               # au-dela, on ne trace plus tout le reseau (illisible)
MAX_LABELS = 25         # nombre max d'etiquettes de fractions

x = np.linspace(0, 1, 20000)


def weights(n, d, e):
    """Poids : chaque coefficient est le produit des deux autres frequences."""
    S = n + d + e
    return d * e / S, e * n / S, n * d / S


def Q(x, n, d, e):
    k1, k2, k3 = weights(n, d, e)
    return (k1 * np.cos(2 * np.pi * n * x)
            + k2 * np.cos(2 * np.pi * d * x)
            + k3 * np.cos(2 * np.pi * e * x))


def g(x, n, d, e):
    """Q'(x) = -2pi (nde/S) g(x) : les cretes sont les zeros croissants de g."""
    return np.sin(2*np.pi*n*x) + np.sin(2*np.pi*d*x) + np.sin(2*np.pi*e*x)


def gprime(x, n, d, e):
    return 2*np.pi*(n*np.cos(2*np.pi*n*x) + d*np.cos(2*np.pi*d*x)
                    + e*np.cos(2*np.pi*e*x))


# -------------------------------------------------
# reseau rationnel exact des cretes (arithmetique entiere)
# -------------------------------------------------

def _polydiv(a, b):
    """division euclidienne dans Z[z], b unitaire, coeffs par degre croissant."""
    a = a[:]
    q = [0] * max(len(a) - len(b) + 1, 1)
    while True:
        while a and a[-1] == 0:
            a.pop()
        if len(a) < len(b):
            return q, a
        s, c = len(a) - len(b), a[-1]
        q[s] = c
        for i, bc in enumerate(b):
            a[s + i] -= c * bc


@lru_cache(maxsize=None)
def cyclotomic(q):
    """Phi_q par division successive de z^q - 1."""
    num = [-1] + [0] * (q - 1) + [1]
    for m in range(1, q):
        if q % m == 0:
            num, _ = _polydiv(num, list(cyclotomic(m)))
    return tuple(num)


@lru_cache(maxsize=None)
def rational_crests(n, d, e):
    """Cretes situees en x rationnel, et denominateur du reseau (ppcm des q)."""
    N = max(n, d, e)
    F = [0] * (2 * N + 1)
    for f in (n, d, e):
        F[N + f] += 1
        F[N - f] -= 1
    pts, L = [], None
    for q in range(1, 4 * N * N + 2):
        if sum(1 for i in range(1, q + 1) if gcd(i, q) == 1) > 2 * N:
            continue                                   # phi(q) > deg F
        if any(_polydiv(F[:], list(cyclotomic(q)))[1]):
            continue                                   # Phi_q ne divise pas F
        ps = [p for p in range(q) if gcd(p, q) == 1] or [0]
        hit = [p / q for p in ps if gprime(p / q, n, d, e) > 1e-9]
        if hit:
            pts += hit
            L = q if L is None else lcm(L, q)
    return tuple(sorted(set(pts))), L


def crests(n, d, e, N=200000):
    """Tous les maxima de Q sur [0,1) (zeros croissants de g)."""
    xs = np.linspace(0.0, 1.0, N + 1)
    ys = g(xs, n, d, e)
    out = [0.0] if ys[1] > 0 else []
    for i in np.nonzero((ys[:-1] < 0) & (ys[1:] >= 0))[0]:
        out.append(brentq(g, xs[i], xs[i+1], args=(n, d, e),
                          xtol=1e-15, rtol=8.9e-16))
    return np.array(sorted(set(np.round(out, 12))))


# -----------------
# figure + axes
# -----------------

plt.close('all')
fig, ax = plt.subplots(figsize=(11, 5.5))
plt.subplots_adjust(left=0.08, right=0.97, bottom=0.34, top=0.88)

(line_Q,) = ax.plot(x, Q(x, n0, d0, e0), color='blue', lw=1.4, label='Q(x)')
(pts_rat,) = ax.plot([], [], 'ro', label='crete sur le reseau')
(pts_irr,) = ax.plot([], [], 'x', color='darkorange', ms=8, mew=2,
                     label='crete hors reseau (irrationnelle)')
ax.legend(loc='upper right', fontsize=8, framealpha=0.9)

artists = []      # lignes + textes de la grille, effaces a chaque update


def redraw(n, d, e):
    for a in artists:
        a.remove()
    artists.clear()

    S = n + d + e
    y = Q(x, n, d, e)
    line_Q.set_ydata(y)

    cs = crests(n, d, e)
    rat, L = rational_crests(n, d, e)
    rat_set = np.array(rat)
    is_rat = np.array([np.any(np.abs(rat_set - c) < 1e-9) for c in cs]) \
        if len(rat_set) else np.zeros(len(cs), bool)

    pts_rat.set_data(cs[is_rat], Q(cs[is_rat], n, d, e))
    pts_irr.set_data(cs[~is_rat], Q(cs[~is_rat], n, d, e))

    # grille : le reseau exact i/L s'il est lisible, sinon les cretes elles-memes
    if L and 2 < L <= LMAX:
        nodes = [i / L for i in range(L + 1)]
        note = f"reseau exact i/{L}"
    else:
        nodes = list(cs)
        note = (f"reseau i/{L} trop fin ({L} noeuds) : traits sur les cretes"
                if L and L > 2 else "aucun reseau rationnel (hors x=0, 1/2)")
    step = max(1, int(np.ceil(len(nodes) / MAX_LABELS)))
    for j, xv in enumerate(nodes):
        artists.append(ax.axvline(xv, color='lightgray', ls='--', lw=0.8, zorder=0))
        if j % step == 0:
            # etiquette exacte si le point est rationnel, sinon valeur decimale
            hit = [r for r in rat if abs(r - xv) < 1e-9]
            if hit or (L and 2 < L <= LMAX):
                fr = Fraction(xv).limit_denominator(L if L else 2)
                lab = (rf"$\frac{{{fr.numerator}}}{{{fr.denominator}}}$"
                       if fr.denominator > 1 else f"${fr.numerator}$")
            else:
                lab = f"{xv:.3f}"
            artists.append(ax.text(xv, -0.04, lab, transform=ax.get_xaxis_transform(),
                                   ha='center', va='top', fontsize=7, clip_on=False))

    k1, k2, k3 = weights(n, d, e)
    n_irr = int((~is_rat).sum())
    warn = "" if n_irr == 0 else f" — {n_irr} crete(s) hors reseau"
    ax.set_title(
        fr'$Q(x)={k1:.3g}\cos 2\pi{n}x+{k2:.3g}\cos 2\pi{d}x+{k3:.3g}\cos 2\pi{e}x$'
        f'\nS={S}   2S={2*S}   {note}{warn}', fontsize=10)

    ymin, ymax = float(np.min(y)), float(np.max(y))
    m = 0.18 * (ymax - ymin)
    ax.set_ylim(ymin - m, ymax + m)
    fig.canvas.draw_idle()


ax.set_xlabel('x', labelpad=18)   # place sous les etiquettes de la grille
ax.set_ylabel('Q(x)')
ax.set_xticks([])
ax.set_yticks([])
ax.set_xlim(0, 1)
ax.grid(False)
redraw(n0, d0, e0)

# -----------------
# sliders n, d, e
# -----------------

ax_n = plt.axes([0.10, 0.16, 0.80, 0.04])
ax_d = plt.axes([0.10, 0.10, 0.80, 0.04])
ax_e = plt.axes([0.10, 0.04, 0.80, 0.04])

slider_n = Slider(ax=ax_n, label='n', valmin=NMIN, valmax=NMAX, valinit=n0, valstep=1)
slider_d = Slider(ax=ax_d, label='d', valmin=NMIN, valmax=NMAX, valinit=d0, valstep=1)
slider_e = Slider(ax=ax_e, label='e', valmin=NMIN, valmax=NMAX, valinit=e0, valstep=1)


def update(val):
    redraw(int(slider_n.val), int(slider_d.val), int(slider_e.val))


slider_n.on_changed(update)
slider_d.on_changed(update)
slider_e.on_changed(update)

plt.show()

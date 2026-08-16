#!/usr/bin/env python3
"""
T_k(x).py

Interactive tracer for the two-frequency profile

    F_k(x) = k cos(2 pi d x) + (1 - k) cos(2 pi n x)

and the canonical interpolant T_k: the unique trigonometric polynomial of
degree (n-1)/2 passing through the n anchored crest tops
(X_i(k), F_k(X_i(k))).  The anchored positions X_i(k) are computed as the
unique stationary point of F_k in each nearest-grid corridor
(Proposition 2.2 of the paper); by the full prominence theorem these are
the n highest crests for every k in (0, 1).

Usage:
    python "python/scripts/T_k(x).py" [n] [d]

Requires coprime 1 < n < d with n odd (the single-selection case).
Default pair: (5, 7).  Drag the slider to move k; the slider axis carries
tick marks at k_pf = n^2/(n^2+d^2) (first possible births) and
k_c = n/(n+d) (slope balance).  At k = k_c the crest tops also lie exactly
on cos(2 pi n x), shown dashed near that parameter.
"""

import sys
from math import gcd, pi

import numpy as np
import matplotlib.pyplot as plt
from matplotlib.widgets import Slider

CORRIDOR_SAMPLES = 256
BISECTION_STEPS = 60


def parse_args():
    n, d = 5, 7
    if len(sys.argv) >= 3:
        n, d = int(sys.argv[1]), int(sys.argv[2])
    if not 1 < n < d:
        sys.exit("need 1 < n < d")
    if gcd(n, d) != 1:
        sys.exit("need gcd(n, d) = 1")
    if n % 2 == 0:
        sys.exit("this tracer covers the odd-n case (unique selection)")
    return n, d


def G(n, d, k, x):
    return k * d * np.sin(2 * pi * d * x) + (1 - k) * n * np.sin(2 * pi * n * x)


def F(n, d, k, x):
    return k * np.cos(2 * pi * d * x) + (1 - k) * np.cos(2 * pi * n * x)


def anchored_positions(n, d, k):
    """X_i(k) for i = 0..n-1: unique root of G in each corridor."""
    k = min(max(k, 1e-9), 1 - 1e-9)
    xs = [0.0]
    for i in range(1, n):
        a = i / n
        m = int(np.floor(d * a + 0.5))
        lo, hi = sorted((a, m / d))
        t = np.linspace(lo, hi, CORRIDOR_SAMPLES)
        g = G(n, d, k, t)
        j = np.where(np.sign(g[:-1]) * np.sign(g[1:]) <= 0)[0]
        if len(j) == 0:                     # defensive; not expected for k in (0,1)
            xs.append(a if abs(g[0]) < abs(g[-1]) else m / d)
            continue
        lo, hi, glo = t[j[0]], t[j[0] + 1], g[j[0]]
        for _ in range(BISECTION_STEPS):
            mid = 0.5 * (lo + hi)
            gm = G(n, d, k, mid)
            if glo * gm <= 0:
                hi = mid
            else:
                lo, glo = mid, gm
        xs.append(0.5 * (lo + hi))
    return np.array(xs)


def interpolant(n, X, A):
    """Unique trig polynomial of degree (n-1)/2 through the n points."""
    m = (n - 1) // 2
    cols = [np.ones_like(X)]
    for j in range(1, m + 1):
        cols += [np.cos(2 * pi * j * X), np.sin(2 * pi * j * X)]
    c = np.linalg.solve(np.column_stack(cols), A)

    def T(x):
        y = np.full_like(np.asarray(x, dtype=float), c[0])
        for j in range(1, m + 1):
            y += c[2 * j - 1] * np.cos(2 * pi * j * x) + c[2 * j] * np.sin(2 * pi * j * x)
        return y

    return T


def main():
    n, d = parse_args()
    k_c = n / (n + d)
    k_pf = n * n / (n * n + d * d)
    xx = np.linspace(0.0, 1.0, max(3000, 80 * d))

    fig, ax = plt.subplots(figsize=(10, 5.4))
    fig.subplots_adjust(bottom=0.18)

    k0 = k_c
    X = anchored_positions(n, d, k0)
    A = F(n, d, k0, X)
    T = interpolant(n, X, A)

    (line_F,) = ax.plot(xx, F(n, d, k0, xx), lw=1.1, color="#1a1a1a", label=r"$F_k$")
    (line_T,) = ax.plot(xx, T(xx), lw=1.6, color="#c0392b",
                        label=r"$T_k$  (trig interpolant, deg $(n-1)/2$)")
    (line_ref,) = ax.plot(xx, np.cos(2 * pi * n * xx), lw=0.9, ls="--",
                          color="#2966c2", alpha=0.0,
                          label=r"$\cos(2\pi n x)$ (exact at $k_c$)")
    (pts,) = ax.plot(X, A, "o", ms=6.5, color="#27a065", zorder=5,
                     label="anchored crests")

    ax.set_xlim(0, 1)
    ax.set_ylim(-1.15, 1.15)
    ax.set_xlabel("x")
    ax.legend(loc="lower right", fontsize=8)

    ax_k = fig.add_axes([0.13, 0.05, 0.74, 0.035])
    slider = Slider(ax_k, "k", 0.0, 1.0, valinit=k0, valstep=0.0005)
    for kv, lab in ((k_pf, r"$k_{pf}$"), (k_c, r"$k_c$")):
        ax_k.axvline(kv, color="#555", lw=0.8)
        ax_k.text(kv, 1.25, lab, ha="center", va="bottom", fontsize=8,
                  transform=ax_k.get_xaxis_transform())

    def title(k):
        return (f"(n, d) = ({n}, {d})     k = {k:.4f}     "
                f"k_pf = {k_pf:.4f}     k_c = {k_c:.4f}")

    ax.set_title(title(k0), fontsize=10)

    def update(_):
        k = float(slider.val)
        Xk = anchored_positions(n, d, k)
        Ak = F(n, d, k, Xk)
        Tk = interpolant(n, Xk, Ak)
        line_F.set_ydata(F(n, d, k, xx))
        line_T.set_ydata(Tk(xx))
        pts.set_data(Xk, Ak)
        line_ref.set_alpha(0.85 if abs(k - k_c) < 0.004 else 0.0)
        ax.set_title(title(k), fontsize=10)
        fig.canvas.draw_idle()

    slider.on_changed(update)
    plt.show()


if __name__ == "__main__":
    main()

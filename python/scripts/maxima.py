import numpy as np
import matplotlib.pyplot as plt

n, d = 5, 12
x = np.linspace(0, 1, 2000)
f = (n/d)*np.cos(2*np.pi*d*x) + np.cos(2*np.pi*n*x)

# Grille principale
N = n+d
i_vals = np.arange(N+1)
x_i = i_vals/N
f_i = (N/d)*np.cos(2*np.pi*n*i_vals/N)

# Cosinus sous-jacente continue en fonction de i
i_cont = np.linspace(0, N, 1000)
f_cos = (N/d)*np.cos(2*np.pi*n*i_cont/N)

plt.figure(figsize=(10,5))
plt.plot(x, f, label=r"$f(x)$", color="blue")
plt.scatter(x_i, f_i, color="red", zorder=5, label="Valeurs sur la grille")
plt.plot(i_cont/N, f_cos, "--", color="orange", label="Cosinus discrète sous-jacente")
plt.scatter(x_i, f_i, color="red", zorder=5)
plt.title(r"$f(x)$ pour n=5, d=7")
plt.xlabel("x"); plt.ylabel("f(x)")
plt.grid(True); plt.legend()
plt.savefig("f_maxima_n5_d7_correct.png", dpi=200)
plt.show()
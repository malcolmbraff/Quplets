import numpy as np
import matplotlib.pyplot as plt
from scipy.signal import argrelextrema
from sklearn.decomposition import PCA

# Paramètres généraux
n = 5
d_values = [7, 8, 12, 13, 17, 18]
k_vals = np.linspace(0.01, 0.99, 100)
x_vals = np.linspace(0, 1, 10000)

# Fonction Q_k
def Q_k(x, k, n, d):
    return k * np.cos(2 * np.pi * d * x) + (1 - k) * np.cos(2 * np.pi * n * x)

# Extraction des quplets
def extract_quplets(n, d, k_vals):
    quplets = []
    for k in k_vals:
        y_vals = Q_k(x_vals, k, n, d)
        maxima_indices = argrelextrema(y_vals, np.greater)[0]
        if len(maxima_indices) >= n - 1:
            sorted_indices = sorted(maxima_indices[np.argsort(y_vals[maxima_indices])[-(n - 1):]])
            sorted_indices = sorted(sorted_indices)
            positions = x_vals[sorted_indices]
            durations = np.diff(np.concatenate(([0], positions, [1])))
            quplets.append(durations)
    return np.array(quplets)

# Extraire tous les quplets
all_quplets = []
labels = []
for d in d_values:
    qd = extract_quplets(n, d, k_vals)
    all_quplets.append(qd)
    labels.extend([f"Q_k(5,{d})"] * len(qd))

# Fusionner les données
all_quplets_flat = np.vstack(all_quplets)

# Projection PCA
pca = PCA(n_components=2)
projected = pca.fit_transform(all_quplets_flat)

# Délimitation des segments de courbes
idx_ranges = np.cumsum([0] + [len(k_vals)] * len(d_values))

# Construire Q_lambda entre Q(5,7) et Q(5,8)
Q_57 = extract_quplets(n, 7, [0.99])[0]
Q_58 = extract_quplets(n, 8, [0.99])[0]
lambdas = np.linspace(-1, 1, 100)
Q_lambda = np.array([(Q_57 + Q_58) / 2 + l * (Q_57 - Q_58) / 2 for l in lambdas])
Q_lambda_proj = pca.transform(Q_lambda)

# Tracé
plt.figure(figsize=(12, 8))
colors = ['blue', 'green', 'red', 'orange', 'purple', 'brown']
for i, d in enumerate(d_values):
    proj = projected[idx_ranges[i]:idx_ranges[i+1]]
    plt.plot(proj[:, 0], proj[:, 1], label=f"Q_k(5,{d})", color=colors[i])

plt.plot(Q_lambda_proj[:, 0], Q_lambda_proj[:, 1], color='black', linestyle='--', label="Q_lambda")

plt.title("Géodésiques Q_k(5,d) et trajectoire Q_lambda (projection PCA)")
plt.xlabel("Composante principale 1")
plt.ylabel("Composante principale 2")
plt.legend()
plt.grid(True)
plt.axis("equal")
plt.gca().set_aspect(2)
plt.tight_layout()
plt.show()
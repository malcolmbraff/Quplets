import numpy as np

import matplotlib.pyplot as plt

from scipy.signal import find_peaks

from sklearn.decomposition import PCA

from sklearn.preprocessing import StandardScaler

import plotly.graph_objects as go

from pathlib import Path

# Répertoire de sortie commun pour toutes les figures
FIGURES_DIR = Path(__file__).resolve().parent.parent / "figures"
FIGURES_DIR.mkdir(parents=True, exist_ok=True)


# ------------------------------------------------------------

# Paramètres

# ------------------------------------------------------------

n = 5

d_values = [7, 8, 12, 13, 17, 18]

num_k_samples = 400

num_x_samples = 50000

k_vals = np.linspace(0.01, 0.99, num_k_samples)

x_vals = np.linspace(0, 1, num_x_samples, endpoint=False)

# Pondération visuelle de la hauteur des amplitudes

amplitude_height = 1.0

def F(x, k, n, d):

    return (1-k) * np.cos(2*np.pi*n*x) + k * np.cos(2*np.pi*d*x)

def extract_weighted_huplets(n, d, k_values):

    """

    Retourne, pour chaque k :

      - le vecteur des n durées circulaires;

      - le vecteur des n amplitudes des crêtes correspondantes.

    La crête en x=0 est l'ancre. On sélectionne ensuite les n-1 maxima

    locaux les plus hauts, puis on les ordonne par position.

    """

    durations_all = []

    amplitudes_all = []

    valid_k = []

    for k in k_values:

        y = F(x_vals, k, n, d)

        peak_idx, _ = find_peaks(y)

        if len(peak_idx) < n - 1:

            continue

        # n-1 maxima les plus hauts hors de l'ancre x=0

        chosen = peak_idx[np.argsort(y[peak_idx])[-(n-1):]]

        chosen = np.sort(chosen)

        positions = x_vals[chosen]

        # Durées circulaires, avec x=0 comme origine

        durations = np.diff(np.concatenate(([0.0], positions, [1.0])))

        # Amplitudes dans le même ordre circulaire.

        # Avec la normalisation convexe, F(0,k)=1 pour tout k.

        amplitudes = np.concatenate(([1.0], y[chosen]))

        durations_all.append(durations)

        amplitudes_all.append(amplitudes)

        valid_k.append(k)

    return (

        np.asarray(durations_all),

        np.asarray(amplitudes_all),

        np.asarray(valid_k)

    )

# ------------------------------------------------------------

# Extraction des Huplets pondérés

# ------------------------------------------------------------

duration_sets = []

amplitude_sets = []

curve_data = []

for d in d_values:

    D, A, K = extract_weighted_huplets(n, d, k_vals)

    if len(D) == 0:

        continue

    duration_sets.append(D)

    amplitude_sets.append(A)

    curve_data.append({"d": d, "D": D, "A": A, "K": K})

all_D = np.vstack(duration_sets)

all_A = np.vstack(amplitude_sets)

# ------------------------------------------------------------

# Projection :

#   x,y = PCA des durées (la géodésique déjà étudiée)

#   z   = première composante principale des amplitudes

# ------------------------------------------------------------

duration_pca = PCA(n_components=2)

D_proj = duration_pca.fit_transform(all_D)

# Standardiser les amplitudes variables.

# A0=1 est constant et ne porte aucune variance : on peut l'omettre.

amplitude_scaler = StandardScaler()

A_scaled = amplitude_scaler.fit_transform(all_A[:, 1:])

amplitude_pca = PCA(n_components=1)

A_height = amplitude_pca.fit_transform(A_scaled)[:, 0] * amplitude_height

# Redistribuer les projections entre les courbes

cursor = 0

for item in curve_data:

    length = len(item["D"])

    item["XY"] = D_proj[cursor:cursor+length]

    item["Z"] = A_height[cursor:cursor+length]

    cursor += length

# ------------------------------------------------------------

# Q_lambda pondéré entre les états terminaux H(5,7) et H(5,8)

# ------------------------------------------------------------

item_57 = next(item for item in curve_data if item["d"] == 7)

item_58 = next(item for item in curve_data if item["d"] == 8)

D_57, A_57 = item_57["D"][-1], item_57["A"][-1]

D_58, A_58 = item_58["D"][-1], item_58["A"][-1]

lambdas = np.linspace(-1, 1, 200)

D_lambda = np.array([

    (D_57 + D_58)/2 + lam*(D_57 - D_58)/2

    for lam in lambdas

])

A_lambda = np.array([

    (A_57 + A_58)/2 + lam*(A_57 - A_58)/2

    for lam in lambdas

])

Q_lambda_xy = duration_pca.transform(D_lambda)

Q_lambda_z = amplitude_pca.transform(

    amplitude_scaler.transform(A_lambda[:, 1:])

)[:, 0] * amplitude_height

# ------------------------------------------------------------

# Tracé interactif 3D

# ------------------------------------------------------------

fig = go.Figure()

for item in curve_data:

    d = item["d"]

    xy = item["XY"]

    z = item["Z"]

    K = item["K"]

    hover = [

        (

            f"H({n},{d})<br>"

            f"k={k:.5f}<br>"

            f"PC durée 1={p[0]:.6f}<br>"

            f"PC durée 2={p[1]:.6f}<br>"

            f"PC amplitude 1={zz:.6f}"

        )

        for k, p, zz in zip(K, xy, z)

    ]

    fig.add_trace(go.Scatter3d(

        x=xy[:, 0],

        y=xy[:, 1],

        z=z,

        mode="lines",

        name=f"Huplet({n},{d})",

        text=hover,

        hoverinfo="text"

    ))

fig.add_trace(go.Scatter3d(

    x=Q_lambda_xy[:, 0],

    y=Q_lambda_xy[:, 1],

    z=Q_lambda_z,

    mode="lines",

    name="Q_lambda pondéré",

    line={"dash": "dash"}

))

fig.update_layout(

    title="Géodésiques des 5-Huplets pondérés",

    scene={

        "xaxis_title": "1re composante des durées",

        "yaxis_title": "2e composante des durées",

        "zaxis_title": "1re composante des amplitudes",

        "aspectmode": "data"

    },

    margin={"l": 0, "r": 0, "b": 0, "t": 45}

)

html_path = FIGURES_DIR / "Geodesics_weighted_3D.html"

fig.write_html(html_path, include_plotlyjs=True)

# ------------------------------------------------------------

# Version statique

# ------------------------------------------------------------

fig_static = plt.figure(figsize=(12, 9))

ax = fig_static.add_subplot(111, projection="3d")

for item in curve_data:

    xy = item["XY"]

    ax.plot(

        xy[:, 0], xy[:, 1], item["Z"],

        label=f"Huplet({n},{item['d']})"

    )

ax.plot(

    Q_lambda_xy[:, 0],

    Q_lambda_xy[:, 1],

    Q_lambda_z,

    linestyle="--",

    label=r"$Q_\lambda$ pondéré"

)

ax.set_title("Géodésiques des 5-Huplets pondérés")

ax.set_xlabel("1re composante des durées")

ax.set_ylabel("2e composante des durées")

ax.set_zlabel("1re composante des amplitudes")

ax.legend()

fig_static.tight_layout()

fig_static.savefig(FIGURES_DIR / "Geodesics_weighted_3D.png", dpi=220, bbox_inches="tight")

plt.show()

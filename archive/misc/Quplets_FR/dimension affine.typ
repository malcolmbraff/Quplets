= Dimension affine des familles symboliques

== Principe général

Soit $Q ∈ RR^n$ un quplet rythmique normalisé tel que :
- Il est formé à partir de $k$ valeurs distinctes $(alpha_1, …, alpha_k)$
- Chacune de ces valeurs occupe une position fixe déterminée par une structure symbolique
- La somme des composantes de $Q$ est normalisée à 1 :
$sum(Q_i) = 1$

On note $S_k$ l’ensemble de tous les quplets partageant cette même structure symbolique,
avec des valeurs libres $(alpha_1, …, alpha_k)$.

== Résultat

$S_k$ est un sous-espace affine de $RR^n$ de dimension $k - 1$.

Cela signifie que toutes les variations internes d’un motif combinatoire à $k$ symboles distincts
peuvent être modélisées par une droite (si $k = 2$), un plan (si $k = 3$), ou un volume de dimension supérieure.

== Démonstration

Soit $(v^(1), …, v^(k))$ les vecteurs indicateurs associés aux positions de chaque valeur $alpha_j$.
On a alors :

$ Q = alpha_1 ⋅ v^(1) + alpha_2 ⋅ v^(2) + … + alpha_k ⋅ v^(k) $

avec :

$ sum_j v^(j) = (1,1,…,1) =: vec{1} $

Les vecteurs $v^(j)$ sont disjoints et définissent une partition fixe de l’ensemble des positions.

Ainsi, l’espace vectoriel engendré par ces quplets est inclus dans le sous-espace $V := "span"(v^(1), …, v^(k))$,
de dimension $k$ au plus.

Mais la contrainte de normalisation :

$ sum(Q_i) = 1 ⟹ sum_j alpha_j ⋅ "count"_j = 1 $

impose une relation linéaire entre les coefficients $alpha_j$.
Cela réduit la dimension affine du système d’un cran :

$ dim(S_k) = k - 1 $

== Exemples
- Structure $(alpha, beta, alpha, beta, alpha) → k = 2$ → droite affine (dimension 1)
- Structure $(alpha, beta, gamma, beta, alpha) → k = 3$ → plan affine (dimension 2)
- Structure $(alpha, beta, gamma,delta, gamma, beta, alpha) → k = 4$ → espace de dimension 3

== Conséquence

L’espace des quplets rythmique est structuré en feuillets affines,
chaque structure combinatoire définissant une sous-variété propre,
dont la dimension dépend uniquement du nombre de symboles distincts.

Ce résultat éclaire géométriquement la hiérarchie des quplets :
plus un motif est riche combinatoirement, plus son espace affine est étendu.
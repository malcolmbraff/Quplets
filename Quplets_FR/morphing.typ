= Morphing harmonique et structure affine des quplets d’ordre commun

== Principe

Soit *$n$* fixé. On observe empiriquement que tous les quplets *$Q(n,d)$* partageant le même ordre  
présentent une structure combinatoire analogue,  
et que leurs vecteurs rythmiques diffèrent uniquement par une déformation linéaire autour du tuplet régulier *$T_n$*.

Cela conduit à une modélisation affine :

$ Q(n,d) = T_n + lambda ⋅ M $

où :

- *$T_n = (1/n, ..., 1/n)$* est le *n*-tuplet régulier,  
- *$M$* est un vecteur de morphing dépendant de l’ordre $m = d mod n$,  
- *$lambda ∈ RR$* est un facteur d’amplitude, positif ou négatif, contrôlant l’intensité de la déformation.

== Définition du morphing vectoriel

Le vecteur *$M$* encode la **structure combinatoire canonique** du quplet d’ordre donné.  
Par exemple, pour un motif de type *(alpha, beta, alpha, beta, ...)* centré,  
on choisira *$M = (−1, 1, −1, 1, ...)$* normalisé à somme nulle.

Ce vecteur satisfait :

- *$sum(M) = 0$*  
- *$T_n + lambda ⋅ M ∈ RR^n$*, avec *$sum(Q) = 1$*

== Propriété d'invariance de l'ordre

Deux quplets *$Q(n,d_1)$* et *$Q(n,d_2)$* sont du même ordre  
si et seulement si leurs vecteurs rythmiques s’écrivent :

$ Q(n,d_1) = T_n + lambda_1 ⋅ M $  
$ Q(n,d_2) = T_n + lambda_2 ⋅ M $

pour un même *$M$*, et deux scalaires *$lambda_1 ≠ lambda_2$*,  
généralement opposés lorsque *$d_1$* et *$d_2$* sont jumeaux.

== Exemple

Pour *$n = 5$* et les quplets jumeaux *$Q(5,7)$* et *$Q(5,8)$* :  
on observe la structure combinatoire $(alpha, beta, alpha, beta, alpha)$ dans les deux cas,  
avec *$alpha > beta$* dans l’un, et *$beta > alpha$* dans l’autre.

Soit :

$ T_5 = (1/5, 1/5, 1/5, 1/5, 1/5) $  
$ M = (−1, 1, −1, 1, −1)/5 $

alors :

$ Q(5,7) = T_5 + lambda ⋅ M $  
$ Q(5,8) = T_5 − lambda ⋅ M $

pour un certain *$lambda > 0$*.

== Interprétation géométrique

L’ensemble des quplets d’un même ordre trace une droite dans l’espace affine *$RR^n$*,  
passant par le centre *$T_n$*, orientée selon *$M$*.  
Chaque valeur de *$lambda$* correspond à une intensité de morphing rythmique.

Les quplets d’ordre 0 sont fixes : $M = 0$, donc $Q(n,d) = T_n$

== Conséquence

Cette propriété révèle que l’espace des quplets à *$n$* fixé est structuré par **faisceaux affines**,  
où chaque ordre définit une *direction propre de déformation* à partir du motif régulier.

Il devient possible de naviguer analytiquement dans l’espace rythmique  
en combinant l’ordre (défini par $M$) et l’amplitude (donnée par *$lambda$*).
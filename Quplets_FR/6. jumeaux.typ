= Quplets jumeaux et symétrie structurelle
#v(6pt)

== Définition
#v(6pt)

Soient $n ∈ NN$ fixé, et $d_1, d_2 ∈ NN$ tels que :

- $d_1 mod n = m$, $d_2 mod n = n - m$
- $floor( d_1 / n) = floor(d_2 / n) $

On appelle *quplets jumeaux* les couples *$(Q(n, d_1), Q(n, d_2))$*  
qui partagent le même ordre modulaire *$m$* et appartiennent à la même bande harmonique.

Ces quplets présentent une structure interne miroir,  
et leurs trajectoires rythmiques sont liées par une symétrie combinatoire.

== Propriétés observées
#v(6pt)

Les quplets jumeaux partagent les propriétés suivantes :

- Leur structure rythmique repose sur les mêmes valeurs *$alpha$* et *$beta$* avant normalisation  
- Leur motif suit un patron commun, mais dans un ordre inversé  
- Si *$alpha > beta$* dans *$Q(n, d_1)$*, alors *$beta > alpha$* dans *$Q(n, d_2)$*

On observe donc une *inversion rythmique structurée* entre les deux quplets.

== Exemples
#v(6pt)

Pour *$n = 5$* :

- $d_1 = 7$, $d_2 = 8 space arrow space d_1 mod 5 = 2 $, $space d_2 mod 5 = 3$, et $space floor(d_1/5) = floor(d_2/5) = 1$

- Les quplets *$Q(5,7)$* et *$Q(5,8)$* sont donc jumeaux d’ordre $1$.

- Ils présentent une structure combinatoire identique, inversée :  \
  $Q(5,7) = (alpha, beta, alpha, beta, alpha)$  \
  $Q(5,8) = (beta, alpha, beta, alpha, beta)$

== Interprétation géométrique
#v(6pt)

Les quplets jumeaux peuvent être vus comme des images miroir dans l’espace des quplets,  
où une inversion combinatoire s’accompagne d’une inversion des longueurs relatives.  
Ils sont positionnés de manière symétrique autour de leur valeur critique respective $k_c = n / (n + d)$,  
chacune définissant une déformation opposée dans la même direction affine.



== Implication pour la topologie rythmique
#v(6pt)

Les quplets jumeaux tracent des géodésiques symétriques à travers l’espace des rythmes.  
Ils définissent des axes de symétrie dans la carte topologique globale,  
et jouent un rôle structurant dans l’organisation interne de l’espace des quplets à *$n$* fixé.

Dans les sections suivantes, nous étudierons plus en détail ces géodésiques,  
leurs croisements, et leur interprétation comme bifurcations harmoniques.

= Morphing harmonique et structure affine des quplets d’ordre commun
#v(6pt)

== Principe
#v(6pt)

Soit *$n$* fixé. On observe empiriquement que tous les quplets *$Q(n,d)$* partageant le même ordre  
présentent une structure combinatoire analogue,  
et que leurs vecteurs rythmiques diffèrent uniquement par une déformation linéaire autour du tuplet régulier *$T_n$*.

Cela conduit à une modélisation affine :

$ Q(n,d) = T_n + lambda ⋅ M $

où :

- *$T_n = (1/n, ..., 1/n)$* est le *n*-tuplet régulier,  
- *$M$* est un vecteur de morphing dépendant de l’ordre $m = d mod n$,  
- *$lambda ∈ RR$* est un facteur d’amplitude, positif ou négatif, contrôlant l’intensité de la déformation.



== Propriété d'invariance de l'ordre
#v(6pt)

Deux quplets *$Q(n,d_1)$* et *$Q(n,d_2)$* sont du même ordre  
si et seulement si leurs vecteurs rythmiques s’écrivent :

$ Q(n,d_1) = T_n + lambda_1 ⋅ M $  
$ Q(n,d_2) = T_n + lambda_2 ⋅ M $

pour un même *$M$*, et deux scalaires *$lambda_1 ≠ lambda_2$*,  
de signes opposés lorsque *$d_1$* et *$d_2$* sont jumeaux.

== Exemple
#v(6pt)

Pour *$n = 5$* et les quplets jumeaux *$Q(5,7)$* et *$Q(5,8)$* :  
on observe la structure combinatoire $(alpha, beta, alpha, beta, alpha)$ dans les deux cas,  
avec *$alpha > beta$* dans l’un, et *$beta > alpha$* dans l’autre.

Soit :

$ T_5 = 1/5 dot.op (1,1,1,1,1) $  
$ M = (2,-3,2,-3,2) $

alors :

$ Q(5,7) = T_5 + lambda_1 ⋅ M $  
$ Q(5,8) = T_5 + lambda_2 ⋅ M $

avec *$lambda_1 > 0$* et *$lambda_2 < 0$*, de valeurs différentes car dépendantes de la normalisation respective en $1/d$.

=== Construction explicite de *$M$*
#v(6pt)

Pour un ordre $m$ donné, on définit le *vecteur de morphing* $M_m$ par :

$ M_m = (1/2) · ( Q(n, n + m) − Q(n, 2n − m) ) $

où :

- $Q(n, d)$ désigne le quplet asymptotique obtenu pour $k → 1$,
- $(n + m)$ et $(2n − m)$ correspondent à deux quplets jumeaux d’ordre $m$,
- $T_n = (1/n, …, 1/n)$ est le tuplet régulier.

Le vecteur $M_m$ est :

- à somme nulle,  
- colinéaire à tous les quplets d’ordre $m$ de même structure combinatoire,  
- invariant dans toute la bande harmonique correspondant à cet ordre.

On peut alors définir la *géodésique rythmique* de direction $M_m$ par :

$ Q_λ^(m)(n) = T_n + λ ⋅ M_m $

Les quplets jumeaux se trouvent aux extrémités de cette droite,  
et toute valeur intermédiaire de $λ$ décrit un *quplet synthétique*  
situé entre eux, dans la même direction combinatoire.




== Interprétation géométrique
#v(6pt)

L’ensemble des quplets d’un même ordre trace une droite dans l’espace affine *$RR^n$*,  
passant par le centre *$T_n$*, orientée selon *$M$*.  
Chaque valeur de *$lambda$* correspond à une intensité de morphing rythmique.

Les quplets d’ordre 0 sont fixes : $M = 0$, donc $Q(n,d) = T_n$

== Conséquence
#v(6pt)

Cette propriété révèle que l’espace des quplets à *$n$* fixé est structuré par *faisceaux affines*,  
où chaque ordre définit une *direction propre de déformation* à partir du motif régulier.

Il devient possible de naviguer analytiquement dans l’espace rythmique  
en combinant l’ordre (défini par $M$) et l’amplitude (donnée par *$lambda$*).

== Extension continue : géodésiques de morphing
#v(6pt)

Soit $n ∈ NN$ fixé et $M$ le vecteur de morphing associé à un ordre donné.  
On définit la famille continue de quplets par :

$ Q_λ = T_n + λ ⋅ M quad "où"  λ ∈ RR $

- $T_n$ est le tuplet régulier : $T_n = (1/n, ..., 1/n)$
- $M$ encode la morphologie combinatoire de l’ordre

Lorsque $λ$ varie continûment entre deux bornes symétriques $[-λ_0, λ_0]$,  
on parcourt l’ensemble des quplets de même ordre à travers une *géodésique analytique* dans le simplexe des quplets normalisés.

Cette famille :

- Conserve la somme des composantes ($∑ Q_λ = 1$)
- Interpole entre deux quplets jumeaux de bande harmonique basse
- Définit une structure affine continue à partir du motif combinatoire

Elle offre une interprétation unifiée des quplets d’un même ordre  
comme points d’une même *variété rythmique*, paramétrée par $λ$.
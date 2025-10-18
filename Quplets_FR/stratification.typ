= Stratification continue de l’espace des quplets

== Motivation

Les quplets $Q(n,d)$ sont traditionnellement définis pour des entiers $n < d ∈ NN$.
Cependant, deux généralisations successives nous permettent de dépasser ce cadre discret :

1.	La construction affine $Q_lambda^(n) = T_n + lambda ⋅ M_m$ étend de manière continue chaque classe d’ordre (voir section Morphing harmonique),
2.	La définition d’un paramètre modulaire $m_c(d, n)$ permet de décrire l’ordre combinatoiredes quplets pour $d ∈ RR^+$, ouvrant la voie à une généralisation analytique.

== Paramètre modulaire continu

On définit :

$ m_c (d, n) := abs(space 0.5 - abs((d/n mod 1) - 0.5 )space) ∈ [0, 0.5] $

Ce paramètre mesure la distance combinatoire à la structure du tuplet régulier.
Il coïncide avec l’ordre modulaire discret pour $d ∈ NN$,
et devient une fonction continue de $d$ pour $n$ fixé.

Ainsi, pour un $n$ donné, tous les quplets $Q(n,d)$ partageant une valeur commune de $m_c$ possèdent une structure combinatoire analogue, modulo une transformation affine.

== Espace fibré des quplets

En combinant $m_c$ et $lambda$, on obtient une paramétrisation complète de l’espace des quplets :

$Q(n, d) mapsto (m_c (d, n), lambda(d, n)) ∈ [0, 0.5] × RR$

Chaque valeur de $m_c$ définit une géodésique affine $Q_lambda$ autour de $T_n$ :
- $Q_lambda = T_n + lambda ⋅ M_(m_c)$
- $M_(m_c)$ encode la structure combinatoire associée à $m_c$

L’ensemble des quplets forme ainsi une surface fibrée :
- Base continue : $m_c (d,n)$, mesurant l’ordre combinatoire
- Fibres affines : droites $Q_lambda$ parcourues pour chaque $m_c$

== Interprétation géométrique

Cette structure permet une vision unifiée de l’espace rythmique :
- Chaque quplet correspond à un point $(m_c, lambda)$ dans une surface continue
- Les classes d’ordre deviennent des feuilles géométriques de cette surface
- Les jumeaux $Q(n,d)$ et $Q(n,d’)$ se situent en $(m_c, ±lambda)$ symétriques
- Le tuplet régulier $T_n$ est situé au centre $(m_c = 0, lambda = 0)$

//#figure(
//image(“plots/surface_quplets.svg”, width: 85%),
//caption: [
//Représentation de la surface fibrée des quplets à $n = 5$.
//L’axe horizontal représente $m_c$, l’axe vertical $lambda$.
//]
//)

== Conséquence

Cette stratification analytique permet de :
- Classer tous les quplets selon une topologie continue
- Relier les structures discrètes à des déformations différentiables
- Étendre le modèle harmonique à des quplets non entiers $Q(n, d)$ pour $d ∈ RR^+$

Elle constitue une base formelle pour une géométrie harmonique généralisée
des rythmes discrets et de leurs trajectoires dynamiques.

== Homothétie exponentielle des bandes harmoniques

L’étude des quplets $Q(n,d)$ révèle un phénomène de structure emboîtée :
les quplets d’ordre donné, mais de bande harmonique croissante, semblent se projeter
les uns dans les autres par homothétie affine centrée sur $T_n$.

=== Observation empirique

Soit un couple initial (n, d) avec d mod n = m.
On considère les familles de quplets $Q(n, d_i)$ avec $d_i = i n + m$, pour $i ∈ NN$.

Ces familles partagent :
- la même structure combinatoire,
- le même vecteur de morphing $M$,
- une trajectoire dans l’espace rythmique de plus en plus contractée autour de $T_n$.

Plus précisément, à chaque itération $i$, le point critique $k_c$ associé au quplet (n, d_i) vérifie :

$ k_c^(i) = n / (n + d_i) = ∏_(j=0)^i (n / (n + j n + m)) $

ce qui tend rapidement vers 0 lorsque $i → ∞$.

Il en résulte une contraction géométrique progressive de l’amplitude rythmique :
- $Q_1(n, d_{i+1})$ est une homothétie de $Q_k(n,d_i)$ centrée sur $T_n$
- Le facteur d’échelle $f_i$ entre deux bandes successives est donné par :

 $ f_i = k_c^(i) / k_c^(i+1) = (n + (i+1) n + m) / (n + i n + m) = 1 + n / (n + i n + m) $

On obtient ainsi une famille $Q_k (n,d_i)$ alignée sur la même droite $Q_lambda$ dans le simplexe rythmique,
et dont les points critiques s’accumulent exponentiellement vers l’origine $T_n$.

=== Visualisation

Le graphique précédent montre cette stratification par bande :
chaque branche correspond à un ordre donné,
et l’accumulation verticale traduit l’amortissement rythmique
induit par la contraction des homothéties autour de $T_n$.
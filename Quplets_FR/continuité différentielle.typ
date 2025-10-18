= Théorie des singularités différentielles

Nous analysons ici la structure analytique des composantes du quplet $Q_k (n,d)$ en fonction du paramètre $k$.
Ces trajectoires révèlent une hiérarchie de régularité et des points critiques remarquables,
structurant l’évolution harmonique interne du système.

== Structure canonique des trajectoires

Pour chaque couple $(n,d)$ fixé, les composantes normalisées du quplet $Q_k (n,d)$ décrivent des trajectoires continues en $k in [0,1[$.
Ces trajectoires présentent les propriétés suivantes :
- Une symétrie combinatoire autour du centre du quplet
- Un nombre distinct de trajectoires égal à $ceil(n/2)$
- Une structure canonique de la forme : $(q_m, …, q_2, q_1, q_c, q_1, q_2, …, q_m)$ où $q_c$ est la composante centrale, et $m = floor(n/2)$

=== Points de croisement
- À $k_1 = n / (n + d)$, toutes les trajectoires se croisent. Ce point correspond à une réorganisation combinatoire du quplet.
- Ce croisement n’est observable que si $n ≥ 5$, c’est-à-dire dès que le nombre de trajectoires distinctes est supérieur ou égal à 3.

=== Points d’inflexion
- À $k_2 = n / (2n + d)$, certaines trajectoires présentent un zéro de dérivée seconde. Il s’agit d’un point d’inflexion bien visible dans leur évolution.
- Pour $n ≥ 9$, un troisième type de trajectoire émerge, avec des zéros de dérivée d’ordre 3 ou plus.

=== Régime asymptotique
- Lorsque $k → 1$, toutes les trajectoires tendent vers une limite régulière. La dérivée première tend alors vers zéro : $ limits(lim)_(k->1) q_i ’(k) = 0$

== Conjecture de dérivabilité hiérarchique

Nous formulons la conjecture suivante :

#block(
fill: luma(230),
inset: 8pt,
radius: 4pt,
[
*Conjecture.*

Soit $Q_k (n,d)$ un quplet rythmique.
Alors, pour chaque $i in NN^"*"$, il existe un point critique :

$ k_i := n / (i n + d) $

tel que certaines trajectoires $q_j (k)$ présentent un zéro de dérivée d’ordre $i$ en $k = k_i$,
à condition que $q_j$ appartienne à une classe analytique d’ordre supérieur ou égal à $i$.
]
)

Cette conjecture introduit une stratification différentielle de l’espace des quplets,
où chaque composante possède un ordre différentiel propre.

== Interprétation analytique

Les valeurs $k_i$ agissent comme des seuils de bifurcation différentiable,
où la concavité ou la régularité locale des trajectoires change.

Chaque $q_j (k)$ peut être interprétée comme une fonction à régularité variable,
décrivant un comportement différentiel conditionné par sa position dans le quplet.

== Extension continue : spectre différentiel

Nous généralisons la suite discrète $k_i = n / (i n + d)$ à un domaine $i ∈ RR^+$,
en définissant la fonction continue :

$ k(i) := n / (i n + d) $

Cette fonction est strictement décroissante sur $RR^+$, avec :
- $k(0^+) = 1$
- $limits(lim)_(i → ∞) k(i) = 0$

Chaque valeur de $k ∈ (0,1)$ peut alors être vue comme un seuil de régularité d’ordre fractionnaire.

== Fonction de régularité locale

Pour chaque trajectoire $q_i (k)$, on définit une fonction :

$ δ(q_i, k) := sup { α ∈ RR : "la dérivée d’ordre"  α  "existe en"  k } $

Les points $k_i$ deviennent alors les discontinuités différentielles de cette fonction.
Chaque $q_i$ admet une dérivée d’ordre $α$ sur un domaine $k > k_i (α)$,
et perd cette régularité dès que $k$ franchit ce seuil.

== Interprétation géométrique
- L’axe $α ∈ RR^+$ devient un axe de régularité analytique.
- Le graphe $k_i := n / (i n + d)$ trace un spectre différentiel décroissant, structurant la stabilité des quplets selon leur complexité harmonique.
- Ce spectre devient une surface de différentiabilité dans l’espace $(k, α)$.

== Alignement avec le cas entier

Les points $k_i$ pour $i ∈ NN^+$ sont les sections discrètes d’un spectre continu.
Les bifurcations observées expérimentalement sont donc les empreintes rationnelles d’une structure analytique plus profonde.

== Perspectives

Cette construction ouvre vers :
- Une modélisation par dérivées fractionnaires et espaces de Sobolev non entiers
- Une cartographie analytique du paysage différentiel des trajectoires $q_i (k)$
- Une caractérisation des quplets par leur profil différentiel
- Une lecture géométrique du système $Q_k (n,d)$ comme variété à régularité stratifiée
= Entropie géométrique et unicité du rythme sélectionné
#v(6pt)

== Mesure d'organisation rythmique
#v(6pt)

Pour quantifier l’organisation interne d’un rythme, nous introduisons une mesure géométrique  
fondée non pas sur les durées entre événements, mais sur leurs *positions absolues* sur l’intervalle $[0,1]$.

Cette mesure permet d’estimer la proximité d’un rythme donné avec une répartition régulière  
et de comparer différentes réalisations d’un même rythme euclidien.

== Définition de l’entropie géométrique
#v(6pt)

Soient :

- *$X = (x_1, ..., x_(n-1))$* les positions des $n-1$ crêtes internes d’un quplet $Q_k (n,d)$,
- *$X_"reg" = (1/n, 2/n, ..., (n-1)/n)$* les positions des crêtes régulières du $n$-tuplet.

Nous définissons alors l’*entropie géométrique* comme l’opposée de la distance quadratique :

$ S_"geo" (Q_k (n,d)) = - sum_(i=1)^(n-1) (x_i - i/n)^2 $

Cette mesure est maximale lorsque les crêtes sont positionnées de façon parfaitement régulière,  
et diminue à mesure que le motif se déforme spatialement.

== Application aux quplets générés par $Q_k (x)$
#v(6pt)


Lorsque $k = 0$, la fonction $Q_k (x)$ se réduit à $cos(2π n x)$,  
dont les $n - 1$ crêtes internes sont exactement situées en $X_"reg"$.  
On a donc :

$ S_"geo" (Q_0 (n,d)) = 0 $

À mesure que $k$ augmente, les positions $x_i (k)$ se déplacent,  
créant une tension géométrique visible dans l’évolution du vecteur $X(k)$.

== Sélection canonique du rythme euclidien
#v(6pt)


Lorsque $k → 1$, la fonction $Q_k (x)$ sélectionne $n$ crêtes parmi les $d$ crêtes régulières de $cos(2π d x)$.  
Ce choix définit une unique variante orientée du rythme euclidien $E(n,d)$.

Parmi toutes les rotations possibles de $E(n,d)$,  
celle produite par $Q_1 (n,d)$ minimise la distance quadratique aux crêtes régulières,  
et maximise ainsi l’entropie géométrique.

Elle constitue donc une *forme canonique du rythme euclidien orienté*,  
fondée sur un critère d’*équilibre spatial absolu*.

== Interprétation
#v(6pt)

L’entropie géométrique $S_"geo"$ mesure la déviation du rythme par rapport à une référence régulière.  
Elle permet d’évaluer la stabilité du motif dans l’espace $(x,y)$,  
et de déterminer à quel point un quplet s’éloigne d’une pulsation isochrone.

Cette approche complète la description topologique et harmonique introduite précédemment,  
et fournit un critère objectif pour la sélection des structures rythmiques optimales.

== Théorème : unicité du rythme euclidien à entropie géométrique maximale
#v(6pt)

Soient $n, d ∈ NN$ avec $1 < n < d$.

Soit $E(n,d)$ un rythme euclidien, défini comme une répartition aussi régulière que possible de $n$ événements sur $d$ subdivisions.

Soit $Q_1 (n,d)$ le quplet défini par la sélection des $n$ crêtes les plus hautes de la fonction $Q_k (x)$ dans la limite $k → 1$.

Alors, parmi toutes les rotations de $E(n,d)$, la version correspondant à $Q_1 (n,d)$ est celle qui minimise la distance quadratique aux positions régulières du $n$-tuplet, c’est-à-dire :

$ S_"geo" (Q_1 (n,d)) ≥ S_"geo" (R_i) $

pour tout $R_i$ rotation de $E(n,d)$.

== Esquisse de la démonstration
#v(6pt)

Le quplet $Q_1 (n,d)$ est obtenu en sélectionnant les $n$ crêtes les plus hautes de $cos(2π d x)$.

Ces crêtes sont positionnées aux abscisses $X = (x_1, ..., x_n)$ telles que $x_i ≈ i'/d$ pour un certain sous-ensemble $i' ∈ {0, ..., d-1}$.

Cette sélection maximise l’espacement uniforme des événements tout en les concentrant dans la partie centrale de $[0,1]$.

Soit $X_"reg" = (1/n, 2/n, ..., (n-1)/n)$ les positions idéales du $n$-tuplet régulier (omettant $x_0 = 0$).

Par construction, $Q_1(n,d)$ est la rotation de $E(n,d)$ dont les événements sont les plus proches de $X_"reg"$.

Les autres rotations de $E(n,d)$ sont obtenues par translation cyclique de $Q_1 (n,d)$,  
ce qui entraîne un décalage systématique par rapport à $X_"reg"$.

Or, la distance quadratique à $X_"reg"$ est minimale lorsque le barycentre de $X$ est centré sur $1/2$,  
ce qui est précisément le cas de $Q_1 (n,d)$.

Par conséquent, $Q_1 (n,d)$ maximise l’entropie géométrique parmi toutes les rotations.

== Conséquence
#v(6pt)

Cette propriété fournit une justification analytique à l’orientation canonique du rythme euclidien  
produit par la fonction $Q(x)$ dans la limite $k → 1$.

Elle renforce le lien entre optimisation géométrique et structure rythmique,  
et ancre la sélection des crêtes dans un principe d’ordre spatial global.
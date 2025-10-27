

= Proposition : Alignement des maxima sur une grille rationnelle

Soient $n, d in NN^+$ avec $d > n$, et soit $j in NN^+$. On considère la fonction :
$ f_k (x) = k cos(2π d x) + cos(2π n x) , k = n / (j n + d) $

Alors, tous les maxima locaux de $f_k (x)$ sur l’intervalle $[0,1[$ apparaissent à des points de la grille :
$ x_i = i / (j n + d), quad i in ZZ $

== Preuve

On calcule la dérivée de $f_k$ :
$ f'_k (x) = -2π (k d sin(2π d x) + n sin(2π n x)) $

En remplaçant $k = n / (j n + d)$, on obtient :
$ f'_k (x) = -2π n ( (d / (j n + d)) sin(2π d x) + sin(2π n x) ) $

Évaluons cette dérivée aux points $x_i = i / (j n + d)$. Alors :
$ f'_k (x_i) = -2π n ( (d / (j n + d)) sin(2π d i / (j n + d)) + sin(2π n i / (j n + d)) ) $

Par construction, les deux arguments $2π d x_i$ et $2π n x_i$ sont des multiples de $2π / (j n + d)$, donc les expressions sinusoïdales évoluent sur une période commune, et les zéros de la dérivée sont atteints pour certaines valeurs entières de $i$.

Le nombre total de zéros de $f'_k$ sur $[0,1[$ est au plus $n + d$, puisque $f_k'$ est une combinaison linéaire de $sin(2π d x)$ et $sin(2π n x)$, qui ont respectivement $d$ et $n$ périodes. Or, la grille $x_i = i / (j n + d)$ contient $j n + d$ points distincts dans $[0,1[$, ce qui est strictement supérieur à $n + d$ (puisque $j ≥ 1$).

Ainsi, tous les zéros de la dérivée (et donc tous les extrémums de $f_k$) sont situés sur cette grille. Par alternance des extrémums, les maxima locaux sont eux aussi alignés sur des points de cette grille.

Cela conclut la preuve. ◻
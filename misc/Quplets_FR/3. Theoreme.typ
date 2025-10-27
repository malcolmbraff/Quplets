=== Théorème de récurrence harmonique
#v(6pt)

Soient $n, d ∈ NN$ avec $1 < n < d$, et $k_c = display(n / (n + d))$.  

Alors, le quplet obtenu à $k = k_c$ pour le système $(n,d)$  
est identique à celui obtenu dans la limite $k -> 1$ pour le système $(n, n + d)$ :

$ Q_k_c (n,d) = limits(lim)_(k->1)  Q_k (n, n + d) $

Autrement dit, faire croître la pondération $k$ jusqu’à 1 dans $(n, n + d)$  
reproduit exactement la structure générée à $k = k_c$ dans $(n,d)$.

=== Démonstration
#v(6pt)

La fonction harmonique pondérée est définie par :

$ Q_k (x) = k cos(2π d x) + (1 - k) cos(2π n x) $

À $k = k_c = n / (n + d)$, on obtient :

$ Q_k_c (x) =n/(n+d) cos(2π d x) + d/(n+d) cos(2π n x) $

Sa dérivée s’annule lorsque :

$ sin(2π d x) + sin(2π n x) = 0 $

Cette équation définit un ensemble fini de positions $x_i$ dans $[0,1]$,  
dont on extrait les $n$ maxima principaux (classés par abscisse croissante),  
servant à construire le quplet $Q_k_c (n,d)$.

---

Dans le système $(n, n + d)$, considérons maintenant la même fonction :

$ Q_k^(n, n+d)(x) = k cos(2π(n+d)x) + (1 - k) cos(2π n x) $

Lorsque $k -> 1$, la fonction devient essentiellement $cos(2π(n + d)x)$,  
dont les maxima sont situés aux points :

$ x_i = i / (n + d), quad i ∈ NN $

Cependant, le second terme $(1 - k) cos(2π n x)$, bien que faible,  
agit comme une perturbation qui sélectionne $n$ crêtes parmi les $n + d$ existantes.

Ces $n$ maxima renforcés coïncident avec ceux sélectionnés à $k = k_c$ pour le système $(n,d)$,  
car ils répondent à la même condition d’équilibre harmonique entre fréquences $n$ et $d$.

---

En d'autres termes :

Les maxima de $Q_k_c (x)$ sont alignés avec une *sous-grille* des maxima réguliers de $cos(2π(n+d)x)$,

Les intervalles qui les séparent sont identiques à ceux obtenus dans $Q_k (n, n + d)$ à la limite $k -> 1$.

Il en résulte que :

$ Q_k_c (n,d) = lim_(k->1) Q_k (n, n + d) $

au sens des vecteurs rythmiques : les séquences d’intervalles normalisés sont identiques.

Cela conclut la démonstration.

=== Justification analytique : alignement des maxima sur la grille $(n + d)$
#v(6pt)

Nous cherchons à établir rigoureusement l’égalité :

$ Q_k_c (n,d) = Q_(k ->1)(n, n + d) quad "où" quad k_c = n / (n + d) $

en montrant que les $n$ maxima principaux de $Q_k_c (x)$ sont alignés  
avec des points réguliers de la grille harmonique de fréquence $n + d$.

=== Étape 1 : dérivée de *$Q_k_c (x)$*
#v(6pt)

On a :

$ Q_k_c (x) = n/(n+d) cos(2π d x) + d/(n+d) cos(2π n x) $

et donc :

$ Q'_k_c (x) prop d sin(2π d x) + n sin(2π n x) $

En factorisant par une identité trigonométrique :

$ sin A + sin B = 2 sin((A + B)/2) cos((A-B)/2) $

on obtient :

$ Q'_k_c (x) prop sin(2π d x) + sin(2π n x) = 2 sin(π(n + d)x) dot.c cos(π(d - n)x) $

On en déduit que :

$ Q'_k_c (x) = 0 <==> sin(π(n + d)x) = 0 quad "ou" quad cos(π(d - n)x) = 0 $

En particulier :

$ sin(π(n + d)x) = 0 <==> x = i / (n + d), quad i ∈ NN $

Les $n + d$ points de la forme $x = display(i / (n + d))$ annulent la dérivée,  
et sont donc candidats à être des maxima ou minima locaux.

=== Étape 2 : sélection des $n$ maxima parmi $n + d$ crêtes
#v(6pt)

Parmi les $n + d$ points $x = i/(n + d)$,  
on sélectionne les $n$ positions correspondant aux *maxima les plus hauts de $Q_k_c (x)$*.

De manière équivalente, ces $n$ positions sont précisément celles qui, dans la fonction $Q_1(n, n + d)$,  
représentent les crêtes sélectionnées dans la limite $k -> 1$.

Cette sélection détermine un motif rythmique discret — le quplet $Q_(k->1)(n, n + d)$ —  
identique à celui de $Q_k_c (n,d)$, construit sur la même grille.

=== Conclusion
#v(6pt)

Les $n$ maxima principaux de $Q_k_c (x)$ sont alignés avec des points de la grille $x = display(i / (n + d))$.

Ils coïncident avec les maxima sélectionnés dans $Q_k (n, n + d)$ lorsque $k -> 1$.

On en déduit :

$ Q_k_c (n,d) = Q_(k->1)(n, n + d) $

=== Corollaire : récurrence harmonique des quplets critiques
#v(6pt)


Soient $n, d ∈ NN$ avec $1 < n < d$, et soit la suite $(d_i)$ définie par :

$ d_0 = d, space d_(i+1) = d_i + n quad "pour tout "i ≥ 0 $

On pose également :

$ k_i = n / (n + d_i) $

Alors, pour tout $i ≥ 0$ :

$ Q_k_i (n, d_i) = Q_(k->1)(n, d_(i+1)) $

Autrement dit, le quplet critique du système $(n, d_i)$ coïncide avec  
le quplet limite du système étendu $(n, d_(i+1))$.

Cela définit une propagation récursive harmonique,  
dans laquelle la structure interne du quplet est conservée  
à chaque translation $d → d + n$ du paramètre harmonique.

Chaque étape de cette chaîne relie un régime critique à un régime asymptotique,  
construisant une famille imbriquée de motifs rythmiques invariants.
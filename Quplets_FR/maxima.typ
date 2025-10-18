= Introduction

On considère la fonction :

$ f(x) = λ cos(2π d x) + cos(2π n x) $

où $d > n > 0$ sont des entiers.  

Nous nous intéressons aux extrema de $f$ et à leur alignement sur des grilles régulières de la forme $x_i = i/(d+n)$.

*Résultat clé :* 
La valeur $λ = n/d$ est la seule valeur de λ pour laquelle tous les points de la grille $x_i = i/(d+n)$ sont des extrema.  
Pour toute autre valeur de $λ$, seuls certains points de la grille (ou aucun) peuvent être des extrema.

---

== Calcul des extrema

=== Dérivée de f

$ f'(x) = -2π λ d sin(2π d x) - 2π n sin(2π n x) $

ou encore

$ f'(x) = -2π ( λ d sin(2π d x) + n sin(2π n x) ) $

---

=== Cas particulier $λ = n/d$

Dans ce cas :

$ f'(x) = -2π n ( sin(2π d x) + sin(2π n x) ) $

En appliquant la formule :

$ sin A + sin B = 2 sin((A+B)/2) cos((A-B)/2) $

on obtient

$ f'(x) = -4π n sin(π(d+n)x) cos(π(d-n)x) $

Les extrema vérifient donc :

$ f'(x) = 0 ⟺ sin(π(d+n)x) = 0 " ou " cos(π(d-n)x) = 0 $

---

=== Deux familles d’extrema

- *Sur la grille principale :*

$ x_i = i / (d+n), space i ∈ {0,1,…,d+n} $

- *Hors-grille :*

$ x_j = (2j+1)/(2(d-n)), space j ∈ ℤ, space x_j ∈ ]0,1[ $

Cette factorisation et la grille complète d’extrema sont *uniques à $λ = n/d$*.

---

== Condition pour un maximum

La dérivée seconde vaut :

$ f''(x) = -4 π² n ( d cos(2π d x) + n cos(2π n x) ) $

Donc :

- *Maximum* si $ d cos(2π d x) + n cos(2π n x) > 0 $
- *Minimum* sinon.

---

== Maxima sur la grille

Pour $x_i = i/(d+n)$ :

$ cos(2π d x_i) = cos(2π d i/(d+n)) = cos(2π i - 2π n i/(d+n)) = cos(2π n i/(d+n)) $

Condition de maximum sur la grille :

$ cos(2π n i/(d+n)) > 0 $

ou encore

$ 2π n i/(d+n) ∈ ]-π/2, π/2[ mod 2π $

Les entiers $i$ appartenant à ces intervalles correspondent aux *maxima sur la grille*.

---

== Cas général $λ ≠ n/d$

Si $λ ≠ n/d$, la dérivée ne se factorise plus.  
On ne peut plus obtenir que *tous les points de la grille* soient des extrema.

Les seuls points de la grille pouvant rester des extrema sont alors ceux pour lesquels :

$ sin(2π n i/(d+n)) = 0 $

c’est-à-dire

$ i = k(d+n)/n $

Ces points sont très clairsemés, et tous les autres extrema se déplacent *hors-grille*.

---

== Remarque sur la valeur des maxima

Pour $λ = n/d$ et tout point de la grille $x_i = i/(d+n)$ :

$ f(x_i) = (n/d) cos(2π d x_i) + cos(2π n x_i) $

$ = (d+n)/d · cos(2π n i/(d+n)) $

Les valeurs sont donc alignées sur *une unique cosinus discrète* de période $(d+n)/n$ en $i$.  
Les maxima correspondent aux entiers $i$ situés dans les intervalles où cette cosinus est positive.

---

== Maxima sur une sous-grille

On peut chercher à obtenir des maxima sur une sous-grille $x_i = i/(2n+d)$.  
Un point $x_i$ est critique si :

$ λ d sin(2π d i/(2n+d)) + n sin(2π n i/(2n+d)) = 0 $

d’où la valeur associée de λ :

$ λ_i = - n sin(2π n i/(2n+d)) / ( d sin(2π d i/(2n+d)) ) $

En vérifiant la dérivée seconde

$ f''(x_i) = -4π² ( λ_i d² cos(2π d x_i) + n² cos(2π n x_i) ) $

on sélectionne les $i$ donnant de véritables maxima.  
Ces λ_i permettent donc de placer des maxima sur une sous-grille choisie,  
mais *seule la valeur λ = n/d fournit une grille complète d’extrema*.
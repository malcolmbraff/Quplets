== Typologie analytique des trajectoires de $Q_k (n,d)$

Les composantes individuelles du vecteur rythmique $Q_k (n,d)$, notées $q_i (k)$, décrivent des trajectoires continues et différentiables en fonction de la pondération $k$.

=== Symétrie structurelle

Pour tout $n$ impair, la structure du quplet impose une symétrie autour de sa composante centrale.  
Les composantes $q_i (k)$ se regroupent donc en :

- une composante centrale $q_c (k)$,
- $m = floor(n / 2)$ paires symétriques $(q_i (k), q_(n-i+1) (k))$.

Cela implique que le quplet peut être écrit sous la forme :

$ Q_k (n,d) = (q_m (k), dots, q_1 (k), q_c (k), q_1 (k), dots, q_m (k)) $

Le nombre de trajectoires analytiques distinctes est donc $ceil(n / 2)$.

=== Caractéristiques analytiques

Les trajectoires $q_i (k)$ présentent plusieurs propriétés remarquables :

- Elles sont toutes *différentiables* sur $k ∈ ]0,1[$.
- À la limite $k → 0$, toutes les composantes convergent vers $1/n$.
- À la limite $k → 1$, les composantes convergent vers une configuration combinatoire discrète alignée sur $d$.
- Chaque trajectoire admet un *point d'inflexion* caractéristique, souvent autour de $k = n / (n + d)$.
- Toutes les trajectoires ont une *dérivée première nulle en $k → 1$*, traduisant une stabilisation asymptotique.

=== Typologie par degré de complexité

On observe empiriquement que les trajectoires $q_i(k)$ ne sont pas toutes de même nature analytique.  
Elles se différencient selon leur *ordre de dérivée annulée* en certains points :

- Pour $n = 3$ (donc 2 trajectoires distinctes), aucune trajectoire ne présente de croisement, et les courbes sont de type *quadratique* ou *exponentiel doux*.
- Pour $n = 5$ (3 trajectoires), une des trajectoires centrales présente un *point d’inflexion net*, suggérant un zéro de la dérivée seconde.
- Pour $n = 7$ (4 trajectoires), une trajectoire de type supérieur apparaît, possiblement avec un zéro de la dérivée troisième.
- Pour $n = 9$ et au-delà, plusieurs *familles analytiques* distinctes coexistent, formant une *hiérarchie de complexité rythmique* croissante avec $n$.

=== Interprétation géométrique

Ces trajectoires peuvent être vues comme des *flots différentiables dans le simplexe rythmique*, où chaque $q_i (k)$ décrit un couloir d’évolution propre.

Les croisements entre trajectoires ne traduisent pas des singularités, mais des *reconfigurations combinatoires* dans l’ordre des composantes du quplet.

Chaque type analytique de trajectoire peut être associé à une *structure de courbure propre**,  
et leurs croisements autour de $k = n/(n+d)$ marquent des **bifurcations symboliques* dans le motif rythmique.


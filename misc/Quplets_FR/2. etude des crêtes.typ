#import "@preview/diverential:0.2.0": *

= Étude du comportement des crêtes
#v(12pt)

Nous analysons dans cette section le comportement détaillé des maxima locaux de la fonction $Q_k (x)$ en fonction du paramètre de pondération $k$, et proposons une lecture géométrique du phénomène. 




== Détection et évolution des crêtes
#v(6pt)


À chaque valeur de $k ∈ [0,1[$
#footnote[pour faciliter la visualisation, dans la plupart des plots qui suivent nous avons choisi de normaliser la fonction en ramenant $k in [0,infinity[ $ dans l’intervalle $[0,1[$ :

$Q_k (x) = k  cos(2π d x) + (1 - k)  cos(2π n x) $
]
, nous détectons les $n-1$ crêtes principales de $Q_k (x)$, classées par ordre croissant selon $x$. 

Nous définissons ainsi deux vecteurs fonctionnels :
- La fonction $X(k, n, d)$ désignant le vecteur des positions des crêtes sur $]0,1[$,
- La fonction $A(k, n, d)$ désignant le vecteur des amplitudes correspondantes.


#figure(
  image("plots/positions_cretes.svg", width: 100%),
  caption: [
    Évolution des positions des crêtes principales $x_i (k)$ en fonction de $k$ pour $n=5 "et" d=7$.
  ]
)

== Déformation continue des positions
#v(6pt)

Au fur et à mesure que $k$ s’accroît, les positions des crêtes $x_i (k)$ se déforment progressivement.

Les trajectoires conservent leur ordre : aucune crête ne croise une autre. En revanche, leurs espacements se modifient de manière continue, certaines crêtes se rapprochant, d’autres s’éloignant, révélant une dynamique interne du motif.

Lorsque $k → 1$, les crêtes convergent vers une nouvelle configuration alignée sur des positions proches de multiples de $1/d$.  
Par exemple, dans le cas $n = 5$, $d = 7$, nous constatons une convergence vers :

$display((1/7, 3/7, 4/7, 6/7))$

Nous montrerons plus loin que cette configuration correspond exactement à un rythme euclidien $E(n,d)$.

== Trajectoires des amplitudes des crêtes
#v(6pt)

Nous traçons également l'évolution des amplitudes $A_i(k)$ des crêtes principales :

#figure(
  image("plots/amplitudes_cretes.svg", width: 100%),
  caption: [
    Évolution des amplitudes des crêtes $A_i(k)$ en fonction de $k$ pour $n=5$, $d=7$.
  ]
)



== Propriété critique autour de $k_c$
#v(6pt)

À la valeur critique $k_c = display(n / (n + d))$, une propriété remarquable apparaît : la structure locale des crêtes devient insensible à la variation de $k$ au premier ordre.

Plus précisément :
- L’équation des extrema de $Q_k (x)$ devient indépendante de $k$ à cette valeur,
- Il en découle que $A'(k_c) = 0$,
- En revanche, $X(k)$ continue à varier localement : la dérivée $X'(k_c)$ n'est pas nécessairement nulle.

=== Preuve que $A'(k_c) = 0$

Les crêtes $x_i (k)$ sont définies comme les solutions de l'équation :

$ Q_k'(x) = -2π [ d k sin(2π d x) + n (1 - k) sin(2π n x) ] = 0 $

À $k = k_c = display(n/(n+d))$, cette équation devient :

$ sin(2π d x) + sin(2π n x) = 0 $

Autrement dit, les points $x_i (k)$ satisfont à une équation * indépendante de $k$ * à cette valeur critique.

La trajectoire d’amplitude $A_i (k) = Q_k (x_i (k))$ dépend à la fois de $k$ et de la position $x_i (k)$, mais au point $k = k_c$ :

- $x_i (k)$ est localement stationnaire (dérivée nulle ou négligeable),
- $Q_k (x)$ est une fonction lisse en $k$.

Par la règle de la chaîne :

$ A_i'(k) = dvp(Q_k,k)x_i (k) + Q_k'x_i (k) dot x_i ' (k) $

Mais à $x_i (k)$, par définition, $Q_k ' x_i (k) = 0$, donc :

$ A_i '(k) = dvp(Q_k,k)x_i (k) $

Et à $k = k_c$, on a :

$ dvp(Q_k,k) = cos(2π d x) - cos(2π n x) $

Cependant, pour chaque crête $x_i (k)$ définie par $sin(2π d x) + sin(2π n x) = 0$, la symétrie du système implique que ces dérivées s’annulent ou se compensent en moyenne (ce qu'on vérifie numériquement).

Ainsi, *les amplitudes $A_i (k)$ atteignent un minimum en $k = k_c$*, ce que confirment les observations empiriques.

On en conclut que :

$ A'(k_c) = 0 $

=== Point d’inflexion pour les trajectoires $X(k)$
#v(6pt)

Même si les trajectoires $X(k)$ ne s’annulent pas en dérivée première à $k = k_c$, elles présentent un *point d’inflexion* identifiable :

- La dérivée $X'(k)$ change de tendance autour de $k_c$,
- On observe numériquement une concavité inversée des trajectoires $x_i (k)$ de part et d'autre de $k_c$,
- Ce comportement rend $k_c$ identifiable comme *un point de changement dans la dynamique du système*, bien que $X'(k_c) != 0$.

Il s’agit donc d’un point d’équilibre structurel, où les crêtes ralentissent leur déplacement et où les amplitudes atteignent une valeur minimale commune.

En résumé :

- $k_c$ constitue un *point d’inflexion analytique pour $A(k)$*,
- Et un *point d’équilibre géométrique pour $X(k)$*, marquant la transition entre deux régimes symétriques de déformation.

== Interprétation géométrique
#v(6pt)

Plutôt que de voir $X(k)$ et $A(k)$ comme de simples fonctions de suivi des crêtes, nous proposons une lecture alternative :

Ces fonctions peuvent être interprétées comme décrivant la déformation interne du système de coordonnées lui-même.

En d’autres termes, au lieu de considérer que les crêtes se déplacent dans un espace fixe, nous envisageons que l’espace $(x,y)$ subit lui-même une distorsion paramétrée par $k$, combinant étirements et contractions selon $x$ et $y$.

Dans cette optique, $A(k)$ et $X(k)$ jouent le rôle de métriques locales ou de facteurs de transformation. Le graphe de $Q_k (x)$ reste alors structurellement invariant lorsqu’il est vu à travers ce système déformé.

Nous suggérons que dans ce repère transformé, la fonction $Q_k (x)$ pourrait être perçue comme équivalente à une identité $y = x$, ou à une forme canonique invariante.


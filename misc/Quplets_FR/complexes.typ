
// Typst — Crêtes de F_k(x) (version sans `op`, syntaxe 2025)
#set text(lang: "fr")

= Crêtes de $F_k(x)$ : formulation complexe, corrélation $A$–$X$ et flux de niveaux

== Définition
Soient des entiers $d > n > 0$ et $x in ℝ "/" ℤ$. On pose
$ F_k (x) = k cos(2π d x) + cos(2π n x). $

En variables complexes, avec $z = e^(i 2π x)$ (donc $|z| = 1$),
$ F_k (x) = Re(k z^d + z^n) $

On note les dérivées en $x$ :
$ G(k,x) = -2π [ k d sin(2π d x) + n sin(2π n x) ], $
$ H(k,x) = -(2π)^2 [ k d^2 cos(2π d x) + n^2 cos(2π n x) ]. $

== Crêtes (conditions locales)
Une crête (maximum local en $x$) est caractérisée par
$G(k,x) = 0$ et $H(k,x) < 0$.

En complexe (somme réelle puis test de concavité) :
$ Im(k d z^d + n z^n) = 0, $
$ k d^2 Re(z^d) + n^2 Re(z^n) > 0. $

== Paramétrisation par le phasor $z$

Pour $|z| = 1$ (i.e. $z = e^(i θ)$, $θ = 2π x $), la condition $Im(k d z^d + n z^n) = 0$ donne
$ k(z) = - (n/d) (z^n - z^(-n)) / (z^d - z^(-d)) $
Alors
$ A(z) = Re(z^n) + k(z) Re(z^d), 
\ quad X(z) = (1/(2π)) arg z $

Lien de Chebyshev (avec $c = cos θ$) :
$ k(c) = - (n/d) U_(n-1)(c) / U_(d-1)(c), \ quad  A(c) = T_n(c) + k(c) T_d(c),
\ quad X(c) = (1/(2π)) arccos(c). $

== Corrélation forte entre $A(k)$ et $X(k)$
Sur une crête $(k, X(k))$ :
$ A(k) = F_k (X(k)), 
 quad A'(k) = cos(d θ) " avec "θ = 2π X(k) $

Ainsi $A'(k)$ révèle $d θ$. En posant $ c_d := A'(k) = cos(d θ) $ et $ s_d := ± sqrt(1 - c_d^2) "(signe fixé par continuité)" $ , on obtient
$ sin(n θ) = - (d/n) k s_d, quad cos(n θ) = A(k) - k A'(k) $
Puis
$ θ(k) = (1/n) tan( sin(n θ), cos(n θ) ), quad X(k) = θ(k) / (2π) $

== Dérivées $X'(k)$ et $A''(k)$ le long d’une crête
Avec $θ = 2π X(k)$ :
$ X'(k) = - d sin(d θ) / { 2π [ k d^2 cos(d θ) + n^2 cos(n θ) ] } $
En remplaçant $cos(d θ) = A'(k)$, $sin(d θ) = ± sqrt(1 - (A')^2)$ et $cos(n θ) = A - k A'$ :
$ X'(k) = - d sqrt(1 - (A')^2) / { 2π [ k d^2 A' + n^2 (A - k A') ] } "(signe par continuité)" $ 


La convexité de $A$ le long de la crête vaut
$ A''(k) = d^2 sin^2(d θ) / [ k d^2 cos(d θ) + n^2 cos(n θ) ] 
\ = d^2 [ 1 - (A')^2 ] / [ k d^2 A' + n^2 (A - k A') ]. $

Événements (plis) : ils surviennent lorsque
$k d^2 cos(d θ) + n^2 cos(n θ) = 0,$ ce qui se manifeste par une divergence de $A''(k)$.

== Extrema de $A(k)$ et jalons pour $X(k)$
On a $A'(k) = 0 $ si $cos(d θ) = 0$. 
En écrivant $θ = ((2m+1) π) / (2d)$, on obtient
$ x_m = (2m+1) / (4d) , (mod 1), quad k_m = - (n/d) (-1)^m sin( ((2m+1) n π) / (2d) ). $
On retient les $m$ tels que $k_m ≥ 0$ et $cos( ((2m+1) n π) / (2d) ) > 0$ (test de maximum en $x$).

== Flux de niveaux : généralisation de $X(k)$ à tout point de $F_0$
Pour un niveau $c in [-1,1]$ et un point initial $x_0$ tel que $F_0(x_0) = cos(2π n x_0) = c$, on définit $x_c (k)$ par
$ F_k (x_c (k)) = c,  x_c (0) = x_0. $
Par différentiation implicite :
$ d x_c / d k = cos(d θ) / { 2π [ k d sin(d θ) + n sin(n θ) ] }, quad θ = 2π x_c (k). $
Quand le dénominateur s’annule $k d sin(d θ) + n sin(n θ) = 0$, on a une tangence de niveau : la solution se dédouble (pli). Les crêtes correspondent au cas particulier où, de plus, $G = 0$.

== Observations clés
- $A(k)$ détermine $X(k)$ (à choix de branche près) et révèle nettement les plis via $A''(k)$.
- Les zéros de $A'(k)$ fournissent des jalons réguliers de la trajectoire $X(k)$.
- Le flux de niveaux $x_c(k)$ généralise la notion de déplacement des crêtes à tout point de $F_0$ et explique les dédoublements aux événements.

== (Option) Cas normalisé $F_k = k cos(2π d x) + (1 - k) cos(2π n x)$
Dans ce cas, toutes les branches $A_i(k)$ atteignent un minimum commun en
$k^* = n / (n + d),$ avec $A'(k^*) = 0$ et $θ = 2π ℓ / (n + d)$ tel que $cos θ > 0$. (Détails omis.)

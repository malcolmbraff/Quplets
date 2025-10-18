== Explication — Complex parametrization, ODE, and reconstruction
#v(6pt)
	1.	Définir analytiquement les crêtes (sans “deviner” numériquement).
On part de $F_k (x)=k cos(2π d x)+cos(2π n x)$.

Une crête (maximum local) vérifie
$G(k,x)=∂_x F_k (x)=0$ et $H(k,x)=∂_(x x) F_k (x)<0$.

En posant $θ=2π x$ et $z=e^(i θ)$, la stationnarité devient
$k d sin(d θ)+n sin(n θ)=0$, d’où la formule explicite
$k(θ)=-(n/d) sin(n θ)/sin(d θ)$ (là où $sin(d θ)≠0$).

Idée : pour chaque $θ$ entre deux pôles ($sin(d θ)=0$), si le test
$k d^2 cos(d θ)+n^2 cos(n θ)>0$
est vrai, alors $x=θ/(2π)$ est une crête au paramètre $k=k(θ)$. 

En faisant varier $θ$ par continuité entre deux pôles, on suit une branche de crête.
#v(10pt)


	2.	Donner une ODE pour suivre une crête $x=X(k)$.
Sur une branche $x=X(k)$ (avec $θ=2π X(k)$), on obtient
$X’(k)=- d sin(d θ) / ( 2π ( k d^2 cos(d θ)+n^2 cos(n θ) ) ).$

Le dénominateur s’annule exactement quand $H=0$ : ce sont les plis (la branche devient verticale dans le plan $(k,x)$ et peut tourner ou se scinder).

Tant qu’il n’y a ni pôle ni pli, $X(k)$ est analytique (théorème des fonctions implicites) et l’ODE permet de la tracer proprement.

#v(10pt)
	3.	Lier amplitude et position, puis reconstruire $X$ à partir de $A$.
Sur une branche, l’amplitude de crête $A(k)=F_k(X(k))$ satisfait
$A’(k)=cos(d θ).$

Avec $A$ et $A’$, on reconstitue $θ$ via
$sin(d θ)=± sqrt(1-(A’)^2),#h(5pt) sin(n θ)=-(d/n) k sin(d θ),#h(5pt) cos(n θ)=A-k A’.$

Puis $θ=(1/n) arctan( sin(n θ)/cos(n θ) )$ (quadrant fixé par continuité), d’où $X(k)=θ/(2π)$ (mod 1).

En pratique : si l’on observe $A(k)$, on peut retrouver $X(k)$.

#v(10pt)
	4.	Repérer où les branches “accrochent”.
-	Pôles de $k(θ)$ : $θ=ℓ π/d$ ($ℓ in ℤ$). Ils découpent l’axe des $θ$ en intervalles de suivi.
-	Plis ($H=0$) : là, l’ODE explose et signale un changement de branche ou un retournement.

#v(10pt)

	5.	Rappeler les trois régimes “résonants” globaux.
$k=0$ (grille $1/n$),#h(5pt) $k=n/d$ (grille $1/(n+d)$),#h(5pt) $k→∞$ (grille $1/d$).

#v(4pt)
Résumé opérationnel.

-	Deux descriptions équivalentes d’une crête :
(i) Paramétrique en $θ$ : $(k(θ),X(θ)=θ/(2π))$ avec $H<0$ sur chaque intervalle entre pôles.

(ii) En $k$ via l’ODE : résoudre $X’(k)$ (ou utiliser $A,A’$) depuis une condition initiale (p.ex. à $k=0$).

-	Ce que fournit la section : une classe de fonctions $X_(i,n,d)(k)$ bien définies, traçables par ODE, reconstructibles via $A$, et des règles claires pour gérer pôles et plis.
C’est l’outillage pour calculer/visualiser les trajectoires des crêtes pour des $i,n,d$ donnés.
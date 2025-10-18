= Fonction de base et construction des quplets
#v(12pt)
== Fonction $Q(x)$
#v(6pt)

Nous introduisons une famille de fonctions harmoniques définies sur l’intervalle $x ∈ [0,1]$, par :
#v(6pt)
$ Q(x) = k  cos(2π d x) + (k-1)cos(2π n x) $ <fonction_Q>
#v(6pt)
où :
- $n, d ∈ NN$, avec $1 < n < d$,
- $k ∈ [0, 1[$ est un paramètre de pondération.

Cette fonction combine deux fréquences harmoniques $n$ et $d$ pondérées selon $k$. L’analyse de cette fonction permet de construire un motif rythmique fondé sur la distribution des crêtes locales.

== Définition du vecteur rythmique
#v(6pt)

Soit $x_1 < x_2 < … < x_(n-1)$ les $n - 1$ maxima principaux de $Q(x)$ sur l'intervalle $]0,1[$, sélectionnés selon leur hauteur et leur ordre croissant. On définit alors  $X_k (n,d) = [x_1, x_2, ..., x_(n-1)]$

Et le vecteur d’intervalles (ou *quplet associé*) :
#v(6pt) 

$  sans(Q)_k (n,d) = [x_1 - 0, x_2 - x_1, ..., 1 - x_(n-1)] ∈ RR^n $<Q_k>
#v(6pt)
Ce vecteur représente un motif rythmique discrétisé, que nous appellerons *quplet harmonique* associé à $k$.


#figure(caption: [$Q(x)$ pour $n=5$, $d=7$ et $k=0.75$], image("plots/Q(x).svg"))<fig1>



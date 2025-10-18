#let nonum(eq) = math.equation(block: true, numbering: none, eq)
#let Huplet = math.italic("Huplet")

#let nonum(eq) = math.equation(block: true, numbering: none, eq)
#let Huplet = math.italic("Huplet")

= Huplet–Quplet identity and Euclidean reduction
#v(6pt)

== Huplet

For a given $k$, let the $n$ crest phases be
$ S(k) = { X_(i,n,d)(k) }_(i=0)^(n-1) #h(7pt), $ 
sorted in $[0,1)$ as $0 = x_0 ≤ … ≤ x_(n-1) < 1$.

== Anchoring and orientation

We fix the anchor as the branch $X_(0,n,d)$ continued from $x=0$ at $k=0$.

For any $k$, list the crest phases in *circular order starting at the anchor*:
$Y_0(k) = X_(0,n,d)(k)$, and for $j = 1,…,n-1$ let $Y_j (k)$ be the next crest encountered when increasing $x$ mod $1$.

Define the *Huplet* (harmonic tuplet) as
#nonum[$ Huplet(n, d, k) = ( Y_1(k)-Y_0(k), …, Y_(n-1)(k)-Y_(n-2)(k), 1-( Y_(n-1)(k)-Y_0(k) ) ) $]

== Quplet (definition)

With the anchor above, define the *Quplet* as the $k→∞$ limit of the Huplet:
$ Q(n, d) := lim_(k → ∞) Huplet(n, d, k). $ <Q>

Equivalently, write $Q(n,d)=(q_0,…,q_(n-1))$ with the explicit formula
$ q_i = (1/d)( floor( (i+1) d / n ) - floor( i d / n ) ) $ <Qfloor>
for $i=0,…,n-1$.

If $d = s n + r$ with $0 ≤ r < n$, then exactly $r$ entries of $Q(n,d)$ equal $(s+1)/d$ and the other $n-r$ equal $s/d$, arranged as evenly as possible (Euclidean rhythm $E(n,d)$) with the anchor at $X_(0,n,d)$.

== Threshold–extension identity

*Theorem (threshold–extension).* 

For coprime $d>n>0$ (with the anchoring above),
#nonum[$ Huplet(n, d, n/d) = Q(n, n+d). $]

*Proof.*  
Set $k = n/d$ and write $θ = 2π x$. The stationarity condition
$ k d sin(d θ) + n sin(n θ) = 0 $
reduces to
#nonum[$ sin(d θ) + sin(n θ) = 0 " iff "2 sin((d+n) θ / 2)\, cos((d-n) θ / 2) = 0. $]

Thus every stationary point belongs to one of two families:

1) $sin((d+n) θ / 2) = 0$, #h(5pt) i.e. #h(5pt) $θ = 2π m / (d+n)$ with $m in {0,…,d+n-1}$;

2) $cos((d-n) θ / 2) = 0$, #h(5pt) i.e.#h(5pt) $(d-n) θ = (2ℓ+1) π$ for some $ℓ in ℤ$.

Along family 1) we have $n θ ≡ - d θ$ (mod $2π$),\ hence
$cos(n θ) = cos(d θ)$ and $ sin(n θ) = - sin(d θ)$. 

Along family (2) we have $n θ ≡ d θ + π$ (mod $2π$),\ hence
$cos(n θ) = - cos(d θ)$ and $sin(n θ) = - sin(d θ)$.

At $k = n/d$, the second derivative test reads
#nonum[$H(k, x) < 0 "iff "d,cos(d θ) + n,cos(n θ) > 0.$]

Using the identities above:
- on family 1): $d,#h(5pt) cos(d θ) + n,#h(5pt) cos(n θ) = (d+n),#h(5pt) cos(d θ)$;
- on family 2): $d,#h(5pt) cos(d θ) + n,cos(n θ) = (d-n),#h(5pt) cos(d θ)$.

Hence *crests* among grid points $θ = 2π m/(d+n)$ are exactly those with $cos(d θ) > 0$;\
points of family 2) are never needed to realize crests at the threshold (they contribute troughs or folds depending on $cos(d θ)$).

Now consider the ordered set of crest phases on the $(d+n)$–grid selected by $cos(d θ) > 0$, with the anchor at $m=0$. Because multiplication by $d$ is a permutation of $ℤ/(d+n)$ (coprimality), the sequence
$ m ↦ d m " (mod " d+n) $
runs uniformly on the circle; picking the arcs where $cos(2π (d m)/(d+n)) > 0$ yields a *balanced* selection of exactly $n$ sites spaced by the two steps $⌊(d+n)/n⌋$ and $⌈(d+n)/n⌉$ in $m$–index, i.e. the Euclidean pattern $E(n, d+n)$ in circular order (Christoffel property). Anchoring at $m=0$ matches the rotation in the definition of $Q(n,d+n)$.

Finally, for the pair $(n, d+n)$ at $k→∞$, crest trajectories land on the $(d+n)$–grid and (by the nearest–site rule proved in the rotation–selection section) select the *same anchored rotation* as at the threshold. Therefore
$ Huplet(n, d, n/d) = Q(n, d+n) $, as claimed. □

== Euclidean reduction

*Corollary (Euclidean reduction).*  
For coprime $d>n>0$ (same anchoring),
#nonum[$ Q(n, d) = Huplet( n, d-n, n / ( d-n ) ). $]

*Proof.*  
Let $d_1 = d - n$. Apply the threshold–extension theorem to $(n, d_1)$:
#nonum[$ Huplet(n, d_1, n / d_1) = Q(n, n + d_1) = Q(n, d). $]
This is exactly the stated identity. Iterating along the Euclidean algorithm gives
$ Q(n, d) = Huplet( n, r, n / r ) $ with $r = d " mod " n$ and $0 < r < n$. □

*Remarks.*  
- Identities are about *spacing vectors* computed with the fixed anchor; the rotation is thus canonical.  
- The reduction exhibits $Q(n,d)$ as the endpoint of a chain of *thresholds* with decreasing second parameter, mirroring the Euclidean algorithm.

/*
= Huplet–Quplet identity and Euclidean reduction
#v(6pt)

== Huplet

For a given $k$, let the $n$ crest phases be
$S(k) = { X_(i,n,d)(k) }_(i=0)^(n-1)$, sorted in\ $[0,1)$ as $0=x_0≤…≤x_(n-1)<1$.

== Anchoring and orientation

We fix the anchor as the branch $X_(0,n,d)$ continued from $x=0$ at $k=0$. 

For any $k$, list the crest phases in *circular order starting at the anchor*:
$Y_0(k)=X_(0,n,d)(k)$, and for $j=1,…,n-1$ let $Y_j(k)$ be the next crest encountered when increasing $x$ mod $1$.

Define the *Huplet* (harmonic tuplet) as
#nonum[$ Huplet(n, d, k) = ( Y_1(k)-Y_0(k), …, Y_(n-1)(k)-Y_(n-2)(k), 1-( Y_(n-1)(k)-Y_0(k) ) ) $]


== Quplet (definition)

With the anchor above, define the *Quplet* as the $k→∞$ limit of the Huplet:
$ Q(n, d) := lim_(k → ∞) Huplet(n, d, k). $<Q>

Equivalently, write $Q(n,d)=(q_0,…,q_(n-1))$ with the explicit formula
$ q_i = (1/d) floor( (i+1) d / n ) - floor( i d / n )  $<Qfloor>
for $i=0,…,n-1$.

If $d = s n + r$ with $0 ≤ r < n$, then exactly $r$ entries of $Q(n,d)$ equal $(s+1)/d$ and the other $n-r$ equal $s/d$, arranged as evenly as possible (Euclidean rhythm $E(n,d)$) with the anchor at $X_(0,n,d)$.

== Threshold–extension identity


*Theorem* 

For coprime $d>n>0$ (with the anchoring above),
#nonum[$ Huplet(n, d, n/d) = Q(n, n+d). $]

*Proof (sketch)* 

At $k=n/d$, stationarity $k d sin(d θ)+n sin(n θ)=0$ becomes $sin(d θ)+sin(n θ)=0$, i.e.
#nonum[$ 2 sin( (d+n) θ / 2 ) cos( (d-n) θ / 2 ) = 0 $ ]

Thus $sin( (d+n) θ / 2 )=0$ forces the grid $x=m/(n+d)$ with $m in {0,…,n+d-1}$.

Among these grid points, the maximum test $k d^2 cos(d θ)+n^2 cos(n θ)>0$ selects exactly $n$ sites, which form the Euclidean rhythm $E(n,n+d)$ (unique up to rotation). 

For the pair $(n,n+d)$ as $k→∞$, crests converge to the $(n+d)$–grid and, by continuity from $k=0$ with the same anchor, select the *same rotation*. Hence $ Huplet(n, d, n/d) = Q(n, n+d) $<threshold-extension>

== Euclidean reduction


*Corollary* 

For coprime $d>n>0$ (same anchoring),
#nonum[$ Q(n, d) = Huplet( n, d-n, n / ( d-n ) ) $]

*Proof (sketch)* 

Let $d_1=d-n$. Applying the theorem to $(n,d_1)$ gives
#nonum[$ Huplet(n, d_1, n/d_1) = Q(n, n+d_1) = Q(n, d) $ ]
Thus the Quplet for $(n,d)$ equals the threshold Huplet for $(n,d-n)$. Iterating along the Euclidean algorithm yields
$ Q(n, d) = Huplet( n, r, n / r ) $<euclid-reduction> where $r = d " mod " n$ and $0 < r < n$. 

*Remarks*
- Identities concern *spacing vectors*; with the anchor fixed, rotations are resolved canonically.
- The reduction shows that the endpoint pattern $Q(n,d)$ is determined by the remainder chain of $(n,d)$ via successive thresholds.
*/
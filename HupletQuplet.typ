#let nonum(eq) = math.equation(block: true, numbering: none, eq)
#let Huplet = math.italic("Huplet")

= Huplet–Quplet identity and Euclidean reduction
#v(6pt)

== Huplet
#v(6pt)

For a given $k$, let the $n$ crest phases be
#nonum[$ S(k) = { X_(i,n,d)(k) }_(i=0)^(n-1) #h(7pt), $]
sorted increasingly in $[0,1)$ as $0 = x_0 ≤ … ≤ x_(n-1) < 1$.  
(Only later do we specify which crest is anchored at $0$.)

#v(6pt)
== Anchoring and orientation
#v(6pt)

We fix the anchor as the branch $X_(0,n,d)$ continued from $x=0$ at $k=0$.  
For any $k$, list the crest phases in *circular order starting from the anchor*:  
$Y_0(k) = X_(0,n,d)(k)$, and for $j = 1,…,n-1$ let $Y_j (k)$ be the next crest encountered when increasing $x$ mod $1$ along the positive orientation.

Define the *Huplet* (harmonic tuplet) as the spacing vector
#nonum[
  $( Y_1(k)-Y_0(k), …, Y_(n-1)(k)-Y_(n-2)(k), 1-( Y_(n-1)(k)-Y_0(k) ) )$  
]

#v(6pt)
== Quplet (definition)
#v(6pt)

With the anchor above, define the *Quplet* (quantized tuplet) as the $k→∞$ limit of the Huplet:
$ Q(n, d) := lim_(k → ∞) Huplet(n, d, k). $ <Q>

Equivalently, write $Q(n,d)=(q_0,…,q_(n-1))$ with the explicit formula
$ q_i = (1/d)( floor( (i+1) d / n ) - floor( i d / n ) ) $ <Qfloor>
for $i=0,…,n-1$.

If $d = s n + r$ with $0 ≤ r < n$, then exactly $r$ entries of $Q(n,d)$ equal $(s+1)/d$ and the other $n-r$ equal $s/d$, arranged as evenly as possible (the Euclidean rhythm $E(n,d)$) with the anchor at $X_(0,n,d)$.

#v(10pt)
== Threshold–extension identity
#v(4pt)

*Theorem (threshold–extension).*  
For coprime $d>n>0$ (with the anchoring above),
#nonum[$ Huplet(n, d, n/d) = Q(n, n+d). $]

*Proof.*  
Set $k = n/d$ and write $θ = 2π x$. The stationarity condition  
#nonum[$ k d sin(2π d x) + n sin(2π n x) = 0 $]  
becomes
#nonum[
  $ sin(d θ) + sin(n θ) = 0 $
  " iff "
  $ 2 sin((d+n) θ / 2) cos((d-n) θ / 2) = 0. $
]

Thus every stationary point belongs to one of two families:

1) $sin((d+n) θ / 2) = 0$, i.e. $θ = 2π m / (d+n)$ with $m in {0,…,d+n-1}$;

2) $cos((d-n) θ / 2) = 0$, i.e. $(d-n) θ = (2ℓ+1) π$ for some $ℓ in ℤ$.

Along family 1) we have $n θ ≡ - d θ$ (mod $2π$), hence  
$cos(n θ) = cos(d θ)$ and $ sin(n θ) = - sin(d θ)$.

Along family 2) we have $n θ ≡ d θ + π$ (mod $2π$), hence  
$cos(n θ) = - cos(d θ)$ and $sin(n θ) = - sin(d θ)$.

At $k = n/d$, the second derivative test reads
#nonum[
  $H(k, x) < 0 "iff" d cos(d θ) + n cos(n θ) > 0.$
]

Using the identities above:

- on family 1): $d cos(d θ) + n cos(n θ) = (d+n) cos(d θ)$;  
- on family 2): $d cos(d θ) + n cos(n θ) = (d-n) cos(d θ)$.

Thus crests among grid points $θ = 2π m/(d+n)$ occur *precisely* when $cos(d θ) > 0$;

points of family 2) never yield crests at the threshold.

Because multiplication by $d$ is a permutation of $ℤ/(d+n)$, the sequence  
$m ↦ d m$ (mod $d+n$) runs uniformly on the circle. Selecting the values where  
$cos(2π (d m)/(d+n)) > 0$ produces a balanced set of exactly $n$ sites, spaced by  
the two steps $⌊(d+n)/n⌋$ and $⌈(d+n)/n⌉$ in $m$–index: the Euclidean pattern  
$E(n, d+n)$ in circular order. Anchoring at $m=0$ matches the rotation in the  
definition of $Q(n,d+n)$.

Finally, for the pair $(n, d+n)$ as $k→∞$, crest trajectories land on the  
$(d+n)$–grid and preserve circular order. The anchored continuation therefore  
selects the *same anchored rotation* as at the threshold.  
Hence
$ Huplet(n, d, n/d) = Q(n, d+n). $ <thresh-ext>  
□


== Euclidean reduction


*Corollary (Euclidean reduction).*  
For coprime $d>n>0$ (same anchoring),
#nonum[$ Q(n, d) = Huplet( n, d-n, n / ( d-n ) ). $]

*Proof.*  
Let $d_1 = d - n$. Coprimality ensures $gcd(n,d_1)=1$.  
Applying the threshold–extension theorem to $(n, d_1)$ gives
#nonum[
  $ Huplet(n, d_1, n / d_1) = Q(n, n + d_1) = Q(n, d). $
]
This is the stated identity. Iterating along the Euclidean algorithm gives
$ Q(n, d) = Huplet( n, r, n / r ) $ <euc-red>
with $r = d " mod " n$ and $0 < r < n$.  
□

*Remarks.*  
- Identities are about *spacing vectors* computed with the fixed anchor; rotations are therefore canonical.  
- The reduction expresses $Q(n,d)$ as the endpoint of a chain of *thresholds* with decreasing second parameter, mirroring the Euclidean algorithm.

#v(10pt)
== Example $(n,d)=(5,7)$
#v(6pt)

At $k=0$: crests at $x=i/5$;  
$Huplet(5,7,0) = 1/5 ·  (1, 1, 1, 1, 1)$.

At $k=n/d=5/7$: crests lie on the $(n+d)$–grid $x=m/12$.  
Selecting the phases with $H<0$ yields the anchored rotation of $E(5,12)$:  
$Huplet(5,7,5/7) = 1/12 · (2, 3, 2, 3, 2)$.

As $k→∞$: crests converge to the $d$–grid; anchored continuation gives  
$Q(5,7) = Huplet(5,7,∞) = 1/7 · (1, 2, 1, 2, 1)$.

#table(
  columns: 3,
  align: (left, left, left),
  column-gutter: 1.2em,
  stroke: none,
  [Regime], [Anchored positions], [Huplet or Quplet],
  [$k=0$], [$0, 1/5, 2/5, 3/5, 4/5$], [$Huplet=1/5 dot (1,1,1,1,1)$],
  [$k=5/7$], [$0, 2/12, 5/12, 7/12, 10/12$], [$Huplet=1/12·(2,3,2,3,2)$],
  [$k→∞$], [$0, 1/7, 3/7, 4/7, 6/7$], [$Q=1/7·(1,2,1,2,1)$],
)
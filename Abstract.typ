#let nonum(eq) = math.equation(block: true, numbering: none, eq)

#let Huplet = math.italic("Huplet")

== Abstract
#line(length: 100%)
We introduce quplets: rhythmic spacing vectors generated not by subdivision but by interference. Let
$F_k (x) = k cos(2π d x) + cos(2π n x)$
with integers $d>n>0$ (coprime unless stated), phase $x in ℝ \/ ℤ$, and modulation $k≥0$. As $k$ varies, each local maximum of $F_k$ follows an analytic crest trajectory; with the phasor variable $θ=2π x$ we obtain the explicit relation
$k(θ) = - (n/d) sin(n θ) / sin(d θ)$
and the crest test $k d^2 cos(d θ)+n^2 cos(n θ)>0$, together with an ODE that tracks the motion $k ↦ X_i(k)$.

A central finding is the appearance of metric grids: all crests lie on a single rational grid only for $k in { 0, n/d, ∞ }$ — the $n^(-1)$ grid at $k=0$, the $(n+d)^(-1)$ grid at the critical value $k=n/d$, and the $d^(-1)$ grid as $k → ∞$. At the latter two regimes the selected crests form Euclidean rhythms in the sense of Toussaint#footnote[Godfried T. Toussaint, “The Euclidean algorithm generates traditional musical rhythms” (2005).]: $E(n,n+d)$ at the threshold and $E(n,d)$ at the endpoint.

To encode spacing, we define the Huplet $Huplet(n,d,k)$ as the anchored spacing vector of the $n$ crest phases, read in circular order from the branch continued from $x=0$ at $k=0$ (downbeat). Its endpoint
$Q(n,d) := lim_(k→∞) Huplet(n,d,k)$
is the Quplet (quantized tuplet): a rotation–constrained Euclidean rhythm. We prove the threshold–extension identity
$Huplet(n,d,n/d) = Q(n,n+d)$
and the Euclidean reduction
$Q(n,d) = Huplet(n,d-n,n/(d-n))$.

Among all rotations of $E(n,d)$ on the $d$–grid, the dynamics select the unique rotation with maximum alignment entropy (zero temperature), equivalently the one nearest (in circular distance) to the regular $n$–multiplet $U={ i/n : i=0,…,n-1 }$. Thus the Quplet is not only Euclidean in spacing, but also endogenously rotated by the crest flow.

We organize quplets by order. In $Q(n,d)$ the $n$ components take exactly two values (call them $α$ and $β$). Let $r := d  mod  n$; their multiplicities are $r$ and $n-r$, and the order is
$O(n,d) := | n - 2 r |.$
For fixed $n$, twin quplets (residues $r$ and $n-r$) share the same order and simply exchange the roles of $α$ and $β$ (mirror combinatorics, up to the anchor).

Finally, in the $(n-1)$–simplex of spacing vectors
$Σ_n := { q in ℝ^n_+ : sum q_i = 1 }$,
all quplets of the same order are colinear: there exists a direction $m_(n,r)$ (depending only on the residue $r$) such that
$Q(n, s n + r) = t_n + λ(d) · m_(n,r)$
with $t_n=(1/n,…,1/n)$ and $λ(d)=r(n-r)/(n d)$. Thus the discrete family ${ Q(n, d + i n) : i≥0 }$ scales a single direction by rational amplitudes. Extending $λ$ from these rational values to all $λ in ℝ$ yields a continuous irrational–quplet curve
$Q_λ (n,r) = t_n + λ m_(n,r)$ (with $λ=0$ at the regular tuplet),
which interpolates between twin quplets and complements the Euclidean endpoints selected by the crest dynamics.

#line(length: 100%)
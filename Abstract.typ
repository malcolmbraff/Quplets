#let Huplet = math.italic("Huplet")

== Abstract
#line(length: 100%)

We study the superposition
$F_k (x) = k cos(2π d x) + cos(2π n x)$
as $k$ varies (modulation factor $k in ℝ$, $k ≥ 0$ ), i.e., a *morphing* (crossfade) between the two frequencies $n$ and $d$. Integers $d>n>0$ (coprime unless stated) represent two subdivision systems (_tuplets_) of one cycle, and $x in ℝ \/ ℤ$ represents the phase. For $k=0$ the first term of the superposition is canceled, leaving $F_0 (x)=cos(2π n x)$, whose peaks align with the $n$–_tuplet_. When $k -> infinity$, the second term becomes negligible and we have $F_infinity (x)= cos(2π d x)$, with peaks showing the $d$-_tuplet_.  

We track how the $n$ crests (local maxima) move with $k$: for each $i=0,…,n-1$. The *crest trajectory* $X_(i,n,d)(k)$ is the continuation in $k$ of the $i$-th maximum of $F_0(x)=cos(2π n x)$. On parameter intervals without folds (no pair $(k,x)$ with first derivative $G=0$ and second derivative $H=0$), these trajectories are well-defined and real-analytic. Using the phasor variable $θ=2π x$, we obtain the explicit relation
$k(θ) = - (n/d) sin(n θ) / sin(d θ)$
(valid when $sin(d θ)≠0$), the maximum test $k d^2 cos(d θ)+n^2 cos(n θ)>0$, and an ODE for the motion $k ↦ X_i (k)$ that renders the morphing quantitatively trackable.

A central musical finding is the emergence of *metric grids*. We prove that all crests align on a single rational grid only for
$k in { 0, n/d, ∞ }$: at $k=0$ they lie on the $1/n$ grid; at the critical value $k=n/d$ they snap to the $(n+d)$–grid; as $k→∞$ they land on the $1/d$ grid. At the latter two regimes, the selected crests form Euclidean rhythms in the sense of Toussaint#footnote[Godfried T. Toussaint. “The Euclidean algorithm generates traditional musical rhythms.” (2005)]: $E(n,n+d)$ at the threshold and $E(n,d)$ at the endpoint.

To encode spacing, we introduce the *Huplet* $Huplet(n,d,k)$: the *anchored* spacing vector obtained by listing the $n$ crest phases in circular order starting at the branch continued from $x=0$ at $k=0$ (the downbeat). Its endpoint
$Q(n,d) := lim_(k→∞) Huplet(n,d,k)$
is the *Quplet* (quantized tuplet): a rotation–constrained Euclidean rhythm (two step sizes arranged as evenly as possible with a canonical anchor). We prove the *threshold–extension identity*
$Huplet(n,d,n/d) = Q(n,n+d)$
and the *Euclidean reduction*
$Q(n,d) = Huplet(n,d-n,n/(d-n))$,
which iterates along the Euclidean algorithm.

Among all rotations of $E(n,d)$ on the $d$–grid, our dynamics select the one with *maximum alignment entropy* (zero temperature), equivalently the rotation *nearest* (in circular distance) to the regular $n$–multiplet $U={ i/n : i=0,…,n-1 }$. In other words among all $E(n,d)$, $Q(n,d)$ corresponds to the one requiring the minimum energy to morph from and to the straight $n$-_tuplet_. Thus the Quplet is not only Euclidean in spacing, but also *endogenously rotated* by the crest flow.

In $Q(n,d)$, the $n$ components take exactly two distinct values, call them $α$ and $β$. Let $r := d mod n$; then $α$ occurs $r$ times and $β$ occurs $n-r$ times (here $m"_"Q(·)$ denotes the number of occurrences in the vector). We define the *order* of a Quplet by
$O(n,d) := | n - 2 r | = | m"_"Q(α) - m"_"Q(β) |.$
For fixed $n$, twin quplets are the pair with residues $r$ and $n-r$: they share the same order and simply exchange the roles of $α$ and $β$, i.e. longs and shorts (mirror combinatorics, up to the anchor).

Define the $(n−1)$-simplex of spacing vectors
$Σ_n := { q in ℝ^n_+ : sum q_i = 1 }$. For any fixed $n$, Quplets of the same order are colinear in the simplex: there exists a direction $m_(n,r)$ (depending only on the residue $r$) such that
$Q(n, s n + r) = t_n + λ(d) · m_(n,r) $
with $t_n = (1/n, …, 1/n)$ and $λ(d) = r ( n - r ) / ( n d )$.
Thus the discrete family ${Q(n, d + i n):i ≥ 0$} is obtained by scaling the same direction by rational amplitudes $λ(d + i n) = r ( n - r ) / ( n ( d + i n ) )$. Extending $λ$ from these rational values to all $λ in ℝ$ yields a continuous *"irrational–quplet"* extension $Q_λ (n,r) = t_n + λ m_(n,r) $,  with  $0 ≤ λ ≤ λ_*(n,r)$
that interpolates between twin quplets and passes through the regular tuplet at $λ = 0$.


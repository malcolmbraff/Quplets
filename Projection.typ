#let nonum(eq) = math.equation(block: true, numbering: none, eq)

#let Huplet = math.italic("Huplet")

= Projection viewpoint: quplets as block–sum images of a simplex barycenter
#v(6pt)

== Setup
#v(6pt)

Let $u_d = (1/d,dots,1/d) in ℝ^d$ be the barycenter of the $(d-1)$–simplex $Δ^(d-1) = { w in ℝ^d_+ : sum_j w_j = 1 }$.

Fix $n$ and choose the anchored $d$–grid onset set
$R = { r_0 < r_1 < … < r_(n-1) } subset { 0,…,d-1 }$
corresponding to the rotation selected by the nearest–site rule (with our anchor).

Define the $n$ contiguous blocks (arcs) on the circle
#nonum[$ B_i = { r_i, r_i+1, …, r_(i+1)-1 } ("indices" mod d), $]
so that the block lengths are exactly the integers $|B_i|$ that sum to $d$ and
#nonum[$ Q(n,d) = ( (|B_0|) /d,dots, (|B_(n-1)|)/d ). $]

== Block–sum projection matrix

#v(6pt)
Define the block–incidence (column–stochastic) matrix #nonum[$ Π(n,d;R) in {0,1}^(n "x" d) "by" Π_(i,j) = 1 "iff" j in B_i, "and" Π_(i,j) = 0 "otherwise" $]  Then
$ Π(n,d;R) · u_d = Q(n,d). $<P1>
- Each column belongs to exactly one block ⇒ column sums of $Π$ are $1$.
- For any $w in Δ^(d-1)$, $Π w in Σ_n := { q in ℝ^n_+ : sum_i q_i = 1 }$.
- With the canonical choice of $R$ (anchor + nearest–site rotation), $Π(n,d;R)$ is uniquely determined and $Q(n,d)$ is your anchored Quplet.

== Example: $(n,d)=(5,7)$

#v(6pt)
Choose the anchored onset indices $R = {0,1,3,4,6}$ on the $7$–grid.
The blocks are
$B_0={0}$, $B_1={1,2}$, $B_2={3}$, $B_3={4,5}$, $B_4={6}$,
so the block lengths are $(1,2,1,2,1)$ and
$Q(5,7) = 1/7 (1,2,1,2,1)$.

The projection matrix is

#nonum($ Π(5,7) =
mat(1, 0, 0, 0, 0, 0, 0;
 0, 1, 1, 0, 0, 0, 0;
 0, 0, 0, 1, 0, 0, 0;
 0, 0, 0, 0, 1, 1, 0;
 0, 0, 0, 0, 0, 0, 1) $)

Multiplying the barycenter $u_7 = (1/7,…,1/7)$ gives
#nonum[$ Π(5,7)·u_7 = (1,2,1,2,1)/7 = Q(5,7) .$]

Note: the “selector” matrix that has a single 1 at the start of each block would send $u_7$ to $(1/7,1/7,1/7,1/7,1/7)$ — not the spacing vector.
The correct projection sums over each block, hence the ones across the whole block in each row.

== Relation to the colinearity formula

#v(6pt)
Write $t_n=(1/n,…,1/n)$ and let $m_(n,r)$ be the order–$r$ direction in the simplex.

Since $u_d=(1/d)·1_d$ and row sums of $Π$ are the block lengths,
$ Π u_d - t_n = (1/d)·(|B_i|)i - (1/n)·1_n = λ(d)·m(n,r) $<P2>
with #nonum[$ λ(d) = r(n-r)/(n d) ,$] recovering
#nonum[$ Q(n, s n + r) = t_n + λ(d) m_(n,r) .$]

== Threshold case

#v(6pt)
At $k = n/d$, replace $d$ by $d’ = n + d$ and build $Π(n,d’;R’)$ from the $(n+d)$–grid onset set $R’$ (selected by the crest test). Then
$ Π(n,n+d;R’)·u_(n+d) = Q(n,n+d) = Huplet(n,d,n/d) $<P3>
(the threshold–extension identity).


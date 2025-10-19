#let nonum(eq) = math.equation(block: true, numbering: none, eq)

#let Huplet = math.italic("Huplet")

= Rotation selection: optimal transport & an entropy view
#v(6pt)

== Setup (anchored endpoints) 

#v(6pt)
Let the regular $n$–multiplet be $U = { i/n : i=0,…,n-1 }$.

At $k → ∞$, crests land on the $d$–grid ${ m/d : m=0,…,d-1 }$. 

With the anchor fixed at $X_(0,n,d)$, the *Quplet* $Q(n,d)$ corresponds to a unique choice of $n$ grid sites in circular order.
#v(6pt)
== Circular distance

#v(6pt)
For $x,y in ℝ / ℤ$, define
$ "dist"_∘(x,y) = min_(m in ℤ) | x - y + m |. $<dist>

#v(6pt)
== Nearest–site rule (geometric selection)

#v(6pt)
For $i=0,…,n-1$ set
$ a_i = round( (d/n) i ) $<nearest> (ties fixed by the anchor convention).

Then the anchored $d$–grid phases
#nonum[$ R = { a_i / d : i=0,…,n-1 } $] (in circular order)
are exactly the crest limits as $k → ∞$, hence they realize $Q(n,d)$.

*Sketch*

The anchored branches $X_(i,n,d)(k)$ are monotone in $k$ near the endpoint and approach the nearest available $d$–grid sites to $i/n$. Continuity from $k=0$ fixes the tie–break consistently with the anchor.

#v(6pt)
== Optimal transport formulation (convex losses)

#v(6pt)
Let $φ : ℝ_+ → ℝ_+$ be convex and define the alignment energy
$ 𝔈_φ(R) = sum_(i=0)^(n-1) φ( "dist"_∘( a_i / d , i / n ) ). $<energy>
Among all circular shifts of the $E(n,d)$ pattern on the $d$–grid, the energy $𝔈_φ$ is minimized *uniquely* by the anchored $R$ given by the nearest–site rule above.

*Idea of proof*

On the circle, the optimal matching between two ordered sets is monotone. With convex $φ$, each pairwise term is minimized by choosing the nearest site, which yields the stated $a_i$. The anchor removes the remaining global shift.

#v(6pt)


== Entropy (soft assignment) view

#v(6pt)
For $τ>0$, define the “alignment entropy”
$ 𝒮_τ(R) = (1/n) sum_(i=0)^(n-1) log sum_(j=0)^(n-1) exp( - "dist"_∘( a_i / d , j / n )^2 / (2 τ) ). $<entropy>
Then $𝒮_τ$ is maximized by the same anchored $R$ for every $τ>0$, and
$ 𝒮_τ(R) → - min_(π in S_n) sum_i "dist"_∘( a_i / d , π(i) / n )^2 $<entropy-limit>
as $τ ↓ 0$, where $S_n$ is the symmetric group on $\{0,…,n-1\}$.
This shows that “maximum alignment entropy” coincides with “minimal cumulative tension”, i.e., the same selection as the geometric nearest–site rule and as the crest dynamics.
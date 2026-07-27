#let nonum(eq) = math.equation(block: true, numbering: none, eq)

#let Huplet = math.italic("Huplet")


= Rotation selection: optimal transport & an entropy view
#v(6pt)

== Setup (anchored endpoints)
#v(6pt)

We fix integers $d>n>0$ with $gcd(n,d)=1$, and we work on the phase space $ℝ / ℤ$.  
Let the regular $n$–multiplet be
$ U = { i/n : i=0,…,n-1 }. $

From Section 2, the interference model $F_k$ produces $n$ crest branches  
$X_(i,n,d)(k)$ that are continuous in $k$, anchored at $X_(0,n,d)(0)=0$, and satisfy:

- at $k=0$, the crests lie at $U$,
- as $k → ∞$, all $n$ crests land on the $d$–grid  
  ${ m/d : m=0,…,d-1 }$ (global resonance at $k=∞$).

Thus the only remaining question is:
*which $n$ of the $d$ grid sites correspond to the continuation from $k=0$ under the fixed anchor?*

#v(10pt)
== Circular distance
#v(6pt)

For $x,y in ℝ / ℤ$, define the circular distance
$ "dist"_∘(x,y) = min_(m in ℤ) | x - y + m |. $ <dist>

This is the natural notion of distance when matching phases on the circle.

#v(10pt)
== Nearest–site rule (geometric selection)
#v(6pt)

For $i=0,…,n-1$ set
$ a_i = round( (d/n) i ) $ <nearest>
with ties resolved by continuity from the anchored branch $X_(0,n,d)$.

Define the anchored $d$–grid phases
#nonum[
$ R = { a_i / d : i=0,…,n-1 } $
]
listed in circular order starting from the anchor.  
These $R$ are exactly the crest limits as $k → ∞$, and therefore they realize the *Quplet* $Q(n,d)$.

*Sketch*

Near $k=∞$, each crest branch $X_(i,n,d)(k)$ is monotone in $k$: all crossings between branches occur at finite $k$, and no reordering is possible beyond the last crossing.  
Therefore each branch must converge to the nearest available $d$–grid site to its starting point $i/n$.  
Since $X_(0,n,d)$ is anchored at $0$, the tie-break is fixed consistently by continuity.

#v(10pt)
== Optimal transport formulation (convex losses)
#v(6pt)

Let $φ : ℝ_+ → ℝ_+$ be convex and define the alignment energy
$ 𝔈_φ(R) = sum_(i=0)^(n-1) φ( "dist"_∘( a_i / d , i / n ) ). $ <energy>

Among all circular shifts of the $E(n,d)$ pattern on the $d$–grid, this energy $𝔈_φ$ is minimized *uniquely* by the anchored configuration $R$ given by the nearest–site rule.

*Idea of proof*

On the circle, the optimal matching between two ordered point sets is monotone.  
For convex $φ$, each term $φ("dist"_∘(x,y))$ is minimized by choosing the nearest partner, which yields precisely the integers $a_i$.  
The global circular shift freedom is removed by the fixed anchor at $i=0$.

#v(10pt)
== Entropy (soft assignment) view
#v(6pt)

For $τ>0$, define the “alignment entropy”
$ 𝒮_τ(R) = (1/n) sum_(i=0)^(n-1)
    log sum_(j=0)^(n-1)
      exp( - "dist"_∘( a_i / d , j / n )^2 / (2 τ) ). $ <entropy>

This quantity measures how sharply each $a_i/d$ prefers the regular sites $j/n$.  
For every $τ>0$, $𝒮_τ$ is *maximized* by the same anchored $R$ produced by the nearest–site rule.

As $τ ↓ 0$, the log–sum–exp tends to a soft minimum:
$ 𝒮_τ(R) → - min_(π in S_n)
      sum_(i=0)^(n-1)
        "dist"_∘( a_i / d , π(i) / n )^2 , $ <entropy-limit>
where $S_n$ is the symmetric group.  
Thus “maximum alignment entropy’’ coincides with “minimal cumulative tension’’—the same solution selected by the geometric rule and by the crest dynamics of $F_k$.
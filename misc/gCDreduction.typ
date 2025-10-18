#let Huplet = math.italic("Huplet")
#let nonum(eq) = math.equation(block: true, numbering: none, eq)

= GCD reduction and parity bifurcation
#v(6pt)

== GCD reduction
#v(4pt)

*Statement.* Let $g = "gcd"(n,d)$ and write $n=g  n_0$, $d=g d_0$. 

For every $k≥0$,
the oriented Huplet factors as
$ Huplet(n,d,k) = (1/g) · "concat"_g ( Huplet(n_0,d_0,k) ) $<gcd>
i.e. the vector obtained by concatenating $g$ copies of $Huplet(n_0,d_0,k)$ (in cyclic order) and scaling all entries by $1/g$.

*Proof (sketch)* 

Set $y=g x$  (mod 1) . 

Then
$G(k,x)=0 ⇔ k d sin(2π d x)+n sin(2π n x)=0 ⇔ k d_0 sin(2π d_0 y)+n_0 sin(2π n_0 y)=0$,\
and similarly the maximum test is preserved:
$H(k,x)<0 ⇔ k d_0^2 cos(2π d_0 y)+n_0^2 cos(2π n_0 y)>0 $.

Thus the $n$ crest phases on $[0,1)$ for $(n,d)$ are the $g$-fold replication (scaled by $1/g$) of those for $(n_0,d_0)$, starting from the anchored branch $X_(0,n,d)$. 

Reading spacings along the anchored circular order yields the stated concatenation formula. 

*Remark.* In particular, it suffices to treat the coprime case $"gcd"(n,d)=1$; all other cases follow by replication and scaling.

#v(10pt)
== Parity-induced central bifurcation (at $x=1/2$)
#v(4pt)

=== Stationarity at the center

For all $k$, $G(k,1/2)=0$ because $sin(2π m · 1/2)=0$ for all integers $m$.

=== Nature via curvature 

Set
$ S(k) := k d^2 (-1)^d + n^2 (-1)^n $<S>.

Since $H(k,1/2)=-(2π)^2 S(k)$, the point $x=1/2$ is 
- a *crest* iff $S(k)>0$, 
- a *trough* iff $S(k)<0$, 
- and a *fold* iff $S(k)=0$.

=== Two cases
- If $d$ and $n$ have the *same parity*, then $(-1)^d=(-1)^n$ and the sign of $S(k)$ is constant in $k$: the center never changes nature.
- If $d$ and $n$ have *opposite parity*, there is a unique threshold
  $ k_* = n^2 / d^2 $<k-star>
  such that $S(k_*)=0$.

=== Pitchfork opening 

Write $θ=π+δ$ (so $x=1/2+δ/(2π)$). 

A Taylor expansion of $F_k$ at $δ=0$ yields
#nonum[$ F_k (δ) = C + (1/2) F_"xx" (k,1/2) δ^2 + (1/4!) F_"xxxx" (k_*,1/2) δ^4 + O(δ^6) $]
with $F_"xx" (k,1/2) ∝ S(k)$ and $F_"xxxx" (k_*,1/2)>0$. 

Hence, for $k>k_*$ small,
two symmetric crests are born at
$x_±(k) = 1/2 ± Δ(k)$ 

with the square-root law
$ Δ(k) ∼ [ 1 / (2π) ] sqrt( 6 ( k d^2 - n^2 ) / ( n^2 ( d^2 - n^2 ) ) ) $ as $k ↓ k_* $<delta>.

=== Consequences for Huplets 

When $d$ and $n$ have opposite parity, the anchored branch $X_(0,n,d)$ passes through the central fold at $k_*$; beyond $k_*$ the oriented Huplet reads the two newborn crests in the anchored circular order, so the last component (closing gap) adjusts by $± 2 Δ(k)$ accordingly.
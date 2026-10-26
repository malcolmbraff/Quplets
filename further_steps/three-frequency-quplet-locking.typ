// Companion note: the balanced (3,4,5) profile and Q(5,8)
// Intended location: further_steps/three-frequency-quplet-locking.typ

#set page(margin: (x: 2.6cm, y: 2.6cm))
#set par(justify: true, leading: 0.62em)
#set text(size: 10.5pt)
#set heading(numbering: "1.1.")
#set math.equation(numbering: "(1)")

#let statement(body) = block(above: 1.1em, below: 1.1em)[#body]
#let qed = [#h(1fr) $square$]

#align(center)[
  #text(size: 15pt)[*Three-frequency Quplet locking at $(3,4,5)$*] \
  #v(0.3em)
  #text(size: 11pt)[A companion note to _Introducing Quplets_] \
  #v(0.3em)
  Malcolm Braff, HSM Basel, FHNW
]

#v(1em)

*Abstract.*
The balanced three-frequency profile with frequencies $(3,4,5)$ has five
crests at the sites
$0,2/8,3/8,5/8,6/8$. Its circular spacing vector is therefore
$(1/8)(2,1,2,1,2)$, exactly the anchored Quplet $Q(5,8)$. The mechanism is
arithmetic: $3,4,5$ form an arithmetic progression, so the balanced stationary
equation contains the factor $sin(8 pi x)$; the remaining stationary points,
at $1/3$ and $2/3$, are troughs. The equality is stable along a full
one-parameter family of positive weights. We determine that locking interval
and the two degeneracies at which the crest configuration changes.

= The symmetric derivative-weight family

Consider

$
  F_rho(x)
  =
  k_3 cos(6 pi x)
  + k_4 cos(8 pi x)
  + k_5 cos(10 pi x),
$

where $rho>0$ and

$
  (k_3,k_4,k_5)
  =
  1/(32+15 rho) (20,15 rho,12).
$ <weight-family>

The coefficients are positive and sum to one. Their derivative weights satisfy

$
  3 k_3=5 k_5=60/(32+15 rho),
  quad
  4 k_4=rho 60/(32+15 rho).
$

Thus $rho$ measures the derivative weight of the middle frequency relative to
the common derivative weight of the two outer frequencies. At $rho=1$ all
three derivative weights coincide, and @weight-family becomes the balanced
simplex weight

$
  (k_3,k_4,k_5)=1/47(20,15,12).
$

#statement[
*Proposition 1.1* (Arithmetic-progression factorization).
For every $rho>0$,

$
  F_rho'(x)
  =
  -2 pi 60/(32+15 rho) G_rho(x),
$

where

$
  G_rho(x)
  =
  sin(8 pi x) (rho+2 cos(2 pi x)).
$ <factorization>
]

#statement[
*Proof.* Differentiation gives

$
  G_rho(x)
  =
  sin(6 pi x)+rho sin(8 pi x)+sin(10 pi x).
$

Since the outer frequencies are symmetric about $4$,

$
  sin(6 pi x)+sin(10 pi x)
  =
  2 sin(8 pi x) cos(2 pi x).
$

Factoring out $sin(8 pi x)$ proves @factorization. #qed
]

Because the prefactor in $F_rho'=-2 pi 60/(32+15 rho)G_rho$ is negative, a
nondegenerate stationary point is a crest precisely when

$
  G_rho(x)=0
  quad "and" quad
  G_rho'(x)>0.
$ <crest-test>

= Exact locking to $Q(5,8)$

#statement[
*Proposition 2.1* (Quplet-locking interval).
If

$
  0<rho<sqrt(2),
$

then the complete crest set of $F_rho$ is

$
  C_rho
  =
  {0,2/8,3/8,5/8,6/8}.
$ <locked-crest-set>

Consequently its circular spacing vector is independent of $rho$ on this
interval and equals

$
  1/8(2,1,2,1,2)=Q(5,8).
$ <quplet-identity>
]

#statement[
*Proof.* The plan is to classify separately the zeros of the two factors in
@factorization.

*Step 1: the $8$-grid zeros.* At $x=m/8$,

$
  G_rho'(m/8)
  =
  8 pi (-1)^m (rho+2 cos(pi m/4)).
$ <node-sign>

For $0<rho<sqrt(2)$, the signs of the expression following $8 pi$, in the
order $m=0,dots,7$, are

$
  (+,-,+,+,-,+,+,-).
$

By @crest-test, the crest indices on the $8$-grid are therefore

$
  0,2,3,5,6.
$

*Step 2: the remaining zeros.* Since $0<rho<2$, the equation

$
  rho+2 cos(2 pi x)=0
$

has the two solutions $alpha$ and $1-alpha$, where

$
  alpha
  =
  1/(2 pi) arccos(-rho/2)
  in (1/4,3/8).
$ <mobile-root>

At $x=alpha$, the factor $sin(8 pi x)$ is positive, whereas the derivative of
$rho+2 cos(2 pi x)$ is negative. Hence $G_rho'(alpha)<0$. By reflection the
same inequality holds at $1-alpha$. Both additional stationary points are
therefore troughs.

The five grid points found in Step 1 are consequently all the crests. Their
successive circular gaps are

$
  2/8,1/8,2/8,1/8,2/8.
$

Finally, the anchored endpoint indices defining $Q(5,8)$ are

$
  floor((8 i)/5+1/2),
  quad i=0,dots,4,
$

namely $(0,2,3,5,6)$. The positions, anchoring at $0$, and cyclic order agree,
so the equality in @quplet-identity is exact rather than merely equality up to
cyclic rotation. #qed
]

#statement[
*Corollary 2.2* (The balanced coincidence).
At $rho=1$,

$
  "Spacing"(F_1)=Q(5,8)=1/8(2,1,2,1,2).
$

Thus the balanced $(3,4,5)$ profile is an interior point of the locking
interval, not an isolated coincidence.
]

= The arithmetic behind the $8$-grid

The identity $3^2+4^2=5^2$ plays no role. The relevant relation is

$
  3+5=2 dot 4=8.
$ <arithmetic-relation>

More generally, for an arithmetic-progression triple

$
  (d-delta,d,d+delta),
$

equal derivative weights give

$
  sin(2 pi (d-delta)x)
  +sin(2 pi d x)
  +sin(2 pi (d+delta)x)
  =
  sin(2 pi d x)(1+2 cos(2 pi delta x)).
$ <general-ap-factorization>

The outer-frequency sum $2d$ therefore creates the stationary grid
$(1/(2d)) ZZ$. For $(d,delta)=(4,1)$ this is the $8$-grid. The second factor
creates the additional stationary points $1/3$ and $2/3$; the congruence
$4 equiv 1 quad (mod 3)$ makes both of them troughs. Hence the arithmetic
progression creates the grid, while the residue class of the middle frequency
determines whether the off-grid stationary points contribute crests.

= Exchange of crest status

The factorization also describes the two bifurcations on the symmetric
weight line.

#statement[
*Proposition 4.1* (Crest regimes on the symmetric line).
Let $alpha(rho)$ be defined by @mobile-root whenever $0<rho<2$.

+ If $0<rho<sqrt(2)$, the crest set is the locked set @locked-crest-set.

+ At $rho=sqrt(2)$, the stationary points $3/8$ and $5/8$ are degenerate.

+ If $sqrt(2)<rho<2$, the crest set is
  $
    {0,1/4,alpha(rho),1-alpha(rho),3/4}.
  $
  All five crests are rational if and only if $alpha(rho)$ is rational,
  equivalently if
  $
    rho=-2 cos(2 pi r)
  $
  for some $r in QQ$ satisfying $3/8<r<1/2$.

+ At $rho=2$, the stationary point $1/2$ is degenerate.

+ If $rho>2$, the crest set is the uniform $4$-grid
  $
    {0,1/4,1/2,3/4}.
  $
]

#statement[
*Proof.* The grid signs follow from @node-sign. For $0<rho<2$, the two
non-grid roots are $alpha(rho)$ and $1-alpha(rho)$. As $rho$ increases,
$alpha(rho)$ moves strictly from $1/4$ toward $1/2$. It reaches $3/8$ at
$rho=sqrt(2)$, where the mobile and grid stationary branches are both
degenerate. Beyond this value the mobile branches satisfy $G_rho'>0$ and are
crests, while the fixed branches at $3/8$ and $5/8$ become troughs. At
$rho=2$, the mobile roots meet at $1/2$. For $rho>2$, the second factor in
@factorization is everywhere positive, so the alternating zeros of
$sin(8 pi x)$ give the four stated crests. The rationality statement follows
directly from the formula for $alpha(rho)$. #qed
]

= Geometric interpretation and open problem

In the positive weight simplex, the equation $3 k_3=5 k_5$ defines the
symmetric derivative-weight line. Proposition 2.1 identifies the segment
$0<rho<sqrt(2)$ of this line as a *Quplet-locking region*: the weights vary,
but the five crest positions and their spacing vector remain fixed at
$Q(5,8)$.

At $rho=sqrt(2)$ the line meets the discriminant of degenerate stationary
points. The fixed grid branches exchange crest status with the two mobile
branches. This gives an explicit model for the general three-frequency
geometry: anchored crest curves become sheets over the weight simplex, and
the discriminant divides that simplex into regions with different crest
configurations.

The natural classification problem is to determine, for every frequency
triple, all connected weight loci on which the rational crest configuration
is a Quplet $Q(K,L)$. The present calculation gives the first nontrivial
example:

$
  (3,4,5)
  quad arrow.r.long
  (K,L)=(5,8),
$

with an explicit positive-dimensional locking family rather than a single
balanced point.

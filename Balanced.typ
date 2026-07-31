#import "definitions.typ": *

= The balanced threshold configuration

We retain the interference function $F_k$ and the notation introduced in the
preceding section. Thus $1<n<d$, $k in [0,1]$, and
$x in RR \/ ZZ$ denotes phase on the unit cycle.

The purpose of this section is to describe the complete stationary set at a
distinguished value of the modulation parameter. This threshold configuration
is defined independently of the $n$ anchored crest branches issued from the
initial $n$-grid. Its relation to those branches will remain conditional on a
branch-selection result.

== The slope-balanced parameter

Writing $theta=2 pi x$, the stationarity condition $G_k (x)=0$ from
@G becomes

$
k d sin(d theta)
+
(1-k)n sin(n theta)
=
0.
$ <stationarity>

The two contributions to @stationarity have equal coefficients when

#nonum[
  $
  k d=(1-k)n.
  $
]

This determines the unique parameter

$
k_c=frac(n,n+d).
$ <kc>

Indeed,

#nonum[
  $
  k_c d
  =
  (1-k_c)n
  =
  frac(n d,n+d).
  $
]

We call $k_c$ the *slope-balanced parameter*. The term balanced refers to
the derivative contributions in @stationarity, not to equal coefficients in
the original function $F_k$. At $k=k_c$, the coefficients of the two cosine
terms are

#nonum[
  $
  k_c=frac(n,n+d)
  quad "and" quad
  1-k_c=frac(d,n+d),
  $
]

whereas their contributions to the phase derivative have the common
coefficient $n d/(n+d)$.

At $k=k_c$, @stationarity reduces to

#nonum[
  $
  sin(d theta)+sin(n theta)=0.
  $
]

Using

#nonum[
  $
  sin(A)+sin(B)
  =
  2
  sin(frac(A+B,2))
  cos(frac(A-B,2)),
  $
]

we obtain

$
sin(d theta)+sin(n theta)
=
2
sin(frac((d+n)theta,2))
cos(frac((d-n)theta,2)).
$ <threshold-factor>

Consequently, the stationary points at $k=k_c$ belong to the two families

#nonum[
  $
  sin(frac((d+n)theta,2))=0
  quad "or" quad
  cos(frac((d-n)theta,2))=0.
  $
]

We call them respectively the *resonant grid family* and the
*complementary family*.

Their intersections are degenerate stationary points. Indeed, at an
intersection one has

#nonum[
  $
  (d+n)theta=2 m pi
  quad "and" quad
  (d-n)theta=(2 ell+1)pi
  $
]

for some $m,ell in ZZ$. Adding these equations gives

#nonum[
  $
  2 d theta
  =
  (
    2m+2ell+1
  )pi,
  $
]

and hence

#nonum[
  $
  cos(d theta)=0.
  $
]

The curvature formulas below then imply $H_(k_c) (x)=0$.

== The resonant $(n+d)$-grid family

The first factor in @threshold-factor vanishes when

#nonum[
  $
  theta=frac(2 pi m,n+d),
  quad
  m in ZZ.
  $
]

Equivalently,

#nonum[
  $
  x=frac(m,n+d)
  quad (mod 1).
  $
]

Thus the resonant family is the regular $(n+d)$-grid.

At such a point,

#nonum[
  $
  n theta equiv -d theta
  quad (mod 2 pi),
  $
]

so that

#nonum[
  $
  cos(n theta)=cos(d theta)
  $
]

and

#nonum[
  $
  sin(n theta)=-sin(d theta).
  $
]

Substituting $k=k_c$ into @H gives

#nonum[
  $
  H_(k_c) (x)
  =
  -(2 pi)^2
  (
    frac(n d^2,n+d) cos(d theta)
    +
    frac(d n^2,n+d) cos(n theta)
  ).
  $
]

Using $cos(n theta)=cos(d theta)$, this becomes

#nonum[
  $
  H_(k_c) (x)
  =
  -(2 pi)^2 n d cos(d theta).
  $
]

Consequently, a resonant grid point is a crest precisely when

$
cos(d theta)>0.
$ <grid-crest-test>

It is a trough when $cos(d theta)<0$ and degenerate when
$cos(d theta)=0$.

== Joint criticality of the resonant grid

The resonant grid is distinguished not only by stationarity in the phase
variable. Since

#nonum[
  $
  partial_k F_k (x)
  =
  cos(d theta)-cos(n theta),
  $
]

the identity $cos(d theta)=cos(n theta)$ implies

#nonum[
  $
  partial_k F_(k_c) (x)=0
  $
]

at every resonant grid point.

We therefore obtain the following intrinsic characterization.

*Proposition (joint criticality of the resonant grid).*  

Every point $x=m/(n+d)$ satisfies

$
partial_x F_(k_c) (x)
=
partial_k F_(k_c) (x)
=
0.
$ <threshold-joint-critical>

Thus the resonant grid consists of joint critical points of the two-variable
surface determined by $F_k (x)$. $square$

The proposition has a direct consequence for crest-amplitude trajectories.

*Corollary (threshold amplitude turning).*  
Suppose that a nondegenerate crest branch $X_i (k)$ passes through a resonant
grid point at $k=k_c$. Then

#nonum[
  $
  A_i ' (k_c)=0.
  $
]

By the convexity identity @A-second-deriv, $k_c$ is a minimum of $A_i$ on
every interval of nondegenerate crest continuation containing $k_c$.

If $gcd(n,d)=1$ and the resonant point is not $x=0$, this minimum is strict.

*Proof.*  
The first statement follows from @threshold-joint-critical and @A-deriv.
Convexity then gives the minimum property.

For strictness, observe that on the resonant grid,

#nonum[
  $
  partial_(k x) F_(k_c) (x)
  =
  -2 pi
  (
    d sin(d theta)-n sin(n theta)
  )
  =
  -2 pi(d+n)sin(d theta).
  $
]

If this vanishes, then $sin(d theta)=0$. At
$theta=2 pi m/(n+d)$ and under $gcd(d,n+d)=1$, this forces
$m=0$ modulo $n+d$. Thus the only non-strict resonant crest is the fixed
point $x=0$. $square$

// FIGURE PLACEHOLDER 3A
// Possible figure: the threshold waveform F_(k_c)(x) for (n,d)=(5,7),
// with resonant-grid stationary points and complementary stationary points
// distinguished by marker shape. Highlight the n highest resonant crests.
// Suggested label: <fig-threshold-waveform>

== The complementary stationary family

The second factor in @threshold-factor vanishes when

#nonum[
  $
  (d-n)theta=(2 ell+1)pi,
  quad
  ell in ZZ.
  $
]

Equivalently,

#nonum[
  $
  theta=frac((2 ell+1)pi,d-n).
  $
]

At such a point,

#nonum[
  $
  n theta
  =
  d theta-(2 ell+1)pi,
  $
]

and therefore

#nonum[
  $
  cos(n theta)=-cos(d theta).
  $
]

Substitution into @H gives

#nonum[
  $
  H_(k_c) (x)
  =
  -(2 pi)^2
  frac(n d(d-n),n+d)
  cos(d theta).
  $
]

Since $d-n>0$, a complementary stationary point is a crest precisely when

$
cos(d theta)>0.
$ <complementary-crest-test>

It is a trough when $cos(d theta)<0$ and degenerate when
$cos(d theta)=0$.

Thus the complementary family cannot in general be discarded as a family of
troughs: depending on phase, it may contain crests, troughs, and degenerate
stationary points.

Unlike the resonant grid family, the complementary family is generally not
critical in the modulation direction. Indeed,

#nonum[
  $
  partial_k F_(k_c) (x)
  =
  cos(d theta)-cos(n theta)
  =
  2 cos(d theta).
  $
]

Consequently, every nondegenerate complementary crest satisfies

#nonum[
  $
  partial_k F_(k_c) (x)>0.
  $
]

A complementary crest therefore continues increasing in amplitude as the
parameter passes through $k_c$. It is stationary in phase at the threshold
slice, but not stationary with respect to the modulation parameter.

== Amplitudes of the two threshold families

The two stationary families are separated by the signs of their crest
amplitudes.

At a resonant grid point, $cos(n theta)=cos(d theta)$. Hence


  $
  F_(k_c) (x)
  =
  frac(n,n+d) cos(d theta)
  +
  frac(d,n+d) cos(n theta)
  =
  cos(d theta).
  $
 <resonant-amplitude>

A resonant grid crest satisfies $cos(d theta)>0$, and therefore has positive
amplitude.

At a complementary stationary point,
$cos(n theta)=-cos(d theta)$. Hence


  $
  F_(k_c) (x)
  =
  frac(n,n+d) cos(d theta)
  -
  frac(d,n+d) cos(d theta)
  =
  frac(n-d,n+d) cos(d theta).
  $
 <complementary-amplitude>

A complementary crest also satisfies $cos(d theta)>0$. Since $d>n$, its
amplitude is negative.

We have therefore proved the following separation result.

*Proposition (threshold amplitude separation).*  
At $k=k_c$, every crest in the resonant $(n+d)$-grid family has positive
amplitude, whereas every crest in the complementary family has negative
amplitude. Consequently, every highest crest of $F_(k_c)$ belongs to the
resonant grid family. $square$

This separation gives the resonant family three simultaneous properties:

- its points lie on a regular $(n+d)$-grid;
- its crests have positive amplitude;
- its points are jointly critical in phase and modulation.

The complementary family has none of these three properties simultaneously.

== The $n$ highest threshold crests

Set

#nonum[
  $
  N=n+d.
  $
]

At the resonant grid point $x=m/N$, @resonant-amplitude gives

#nonum[
  $
  F_(k_c) (m/N)
  =
  cos(frac(2 pi d m,N)).
  $
]

Assume from now on that $gcd(n,d)=1$ and that $n$ is odd. Since

#nonum[
  $
  gcd(d,N)=gcd(d,n)=1,
  $
]

multiplication by $d$ permutes the residue classes modulo $N$.

The values

#nonum[
  $
  {
    cos(2 pi q/N)
    :
    q in ZZ/N ZZ
  }
  $
]

decrease with the absolute value of the centered residue of $q$. Since $n$ is
odd, the $n$ centered residues nearest to $0$ form the set

#nonum[
  $
  R_n
  =
  {
    -(n-1)/2,
    dots,
    -1,
    0,
    1,
    dots,
    (n-1)/2
  }.
  $
]

Because $d>n$, we have $N>2n$, and therefore every value indexed by
$R_n$ is positive. These points are consequently resonant crests by
@grid-crest-test.

The $n$ highest threshold crests are therefore precisely the grid points
$m/N$ satisfying

$
d m mod N in R_n,
$ <highest-threshold-sites>

where the residue is taken in centered form.

Since

#nonum[
  $
  d equiv -n
  quad (mod N),
  $
]

the condition in @highest-threshold-sites is equivalent, after replacing
$R_n$ by $-R_n=R_n$, to

#nonum[
  $
  n m mod N in R_n.
  $
]

// FIGURE PLACEHOLDER 3B
// Possible figure: amplitudes cos(2πdm/N) indexed around the N-grid,
// with the centered residue set R_n and the n selected highest values
// highlighted. This may be combined with Figure 3A rather than retained
// as a separate figure.
// Suggested label: <fig-threshold-amplitude-ranking>

== Euclidean spacing of the highest threshold crests

For $j=0,dots,n-1$, define

$
m_j
=
floor(frac(j N,n)+frac(1,2)).
$ <nearest-grid-sites>

Since $gcd(n,N)=gcd(n,d)=1$ and $n$ is odd, no number $j N/n$ is a
half-integer. Thus $m_j$ is the unique nearest integer to $j N/n$.

By the nearest-integer property,

#nonum[
  $
  -frac(1,2)
  <
  m_j-frac(j N,n)
  <
  frac(1,2).
  $
]

Multiplication by $n$ gives

#nonum[
  $
  -frac(n,2)
  <
  n m_j-j N
  <
  frac(n,2).
  $
]

Since $n m_j-j N$ is an integer and $n$ is odd,

#nonum[
  $
  n m_j-j N in R_n.
  $
]

Thus every index $m_j$ satisfies the centered-residue condition defining the
$n$ highest threshold crests.

The indices $m_j$ are distinct modulo $N$. Indeed, since $N/n>2$,
nearest-integer rounding preserves the strict ordering:

#nonum[
  $
  0=m_0<m_1<dots<m_(n-1)<N.
  $
]

The final inequality follows from

#nonum[
  $
  m_(n-1)
  =
  floor(
    N-frac(N,n)+frac(1,2)
  )
  <
  N.
  $
]

Hence the indices $m_j$ are distinct modulo $N$.

There are exactly $n$ such indices. They therefore exhaust the set defined by
@highest-threshold-sites.

Their consecutive differences are

#nonum[
  $
  m_(j+1)-m_j
  =
  floor(frac((j+1)N,n)+frac(1,2))
  -
  floor(frac(j N,n)+frac(1,2)).
  $
]

Write

#nonum[
  $
  N=a n+b,
  quad
  0<=b<n.
  $
]

Since

#nonum[
  $
  frac(N,n)=a+frac(b,n),
  $
]

each consecutive difference equals either $a$ or $a+1$. The sum of all
$n$ circular differences is $N=a n+b$, so exactly $b$ gaps have length
$a+1$ and exactly $n-b$ have length $a$.

The same conclusion includes the final circular gap

#nonum[
  $
  N+m_0-m_(n-1).
  $
]

Hence the circular gaps have the two integer lengths

#nonum[
  $
  floor(N/n)
  quad "and" quad
  ceil(N/n),
  $
]

distributed as evenly as possible. After normalization by $N$, they form the
Euclidean spacing pattern of $n$ points on an $N$-grid.

*Theorem (Euclidean structure of the highest threshold crests).*  
Let $1<n<d$ be coprime, with $n$ odd, and set $N=n+d$. At the
slope-balanced parameter $k_c=n/N$, the $n$ highest crests of
$F_(k_c)$ lie on the resonant $N$-grid. Their indices are the nearest
integers to

#nonum[
  $
  0,
  frac(N,n),
  frac(2N,n),
  dots,
  frac((n-1)N,n).
  $
]

Their circular gaps have lengths $floor(N/n)$ and $ceil(N/n)$ and form the
Euclidean spacing pattern of $n$ points on the $N$-grid. $square$

#figure(  image(    "Figures/Fk(x).svg",    width: 82%,  ),  caption: [    The threshold profile $F_(k_c)(x)$ for $(n,d)=(5,8)$, with $N=13$ and $k_c=5/13$.    The marked rational $13$-grid points identify the five highest crests, whose positions form the Euclidean threshold configuration.         ],) <fig-threshold-euclidean-circle>


== Relation to the anchored branches

The theorem identifies the $n$ highest crests at the threshold without using
global branch continuation. It is therefore an unconditional statement about
the threshold slice $F_(k_c)$.

To conclude that the anchored crest branches occupy these same sites, one
needs an additional branch-identification result. The amplitude-selection
conjecture from the preceding section would provide such a result: if the
anchored crests are precisely the $n$ highest local maxima of $F_k$ for
every $k in [0,1)$, then at $k=k_c$ they occupy the Euclidean threshold
configuration described above.

Under that hypothesis, every nonfixed anchored branch passes through a
resonant joint critical point. The corollary to
@threshold-joint-critical then implies that its amplitude reaches a strict
minimum at $k_c$.

Thus the conditional dynamical picture is

#nonum[
  $
  "anchored branch"
  arrow
  "highest threshold crest"
  arrow
  "resonant grid point"
  arrow
  "amplitude minimum at " k_c.
  $
]

The first implication is conjectural. The remaining implications are proved in
this section and in the convexity theorem of the preceding section.

== Transition

The slope-balanced parameter yields a completely explicit configuration for
the $n$ highest crests of $F_(k_c)$. These crests lie on the resonant
$(n+d)$-grid, are jointly critical in phase and modulation, and have
Euclidean circular spacing.

The next section passes from labeled crest branches to their circular order.
Writing the ordered positions as $Y_j (k)$, it introduces the spacing
functions

#nonum[
  $
  D_j (k)
  =
  Y_(j+1) (k)-Y_j (k)
  $
]

with cyclic indexing. Their normalized vector defines the Huplet trajectory in
the spacing simplex, while its endpoint gives the dynamical Quplet whenever
global continuation is available.
#import "definitions.typ": *

= The threshold configuration

We retain the interference function $F_k$ and the notation introduced in the
preceding section. Thus $1 < n < d$, $k in [0,1]$, and
$x in RR \/ ZZ$ denotes phase on the unit cycle.

The purpose of this section is to describe the complete stationary set at a
distinguished value of the modulation parameter. This set must be distinguished
from the $n$ anchored crest branches issued from the initial $n$-grid.

== The balanced derivative parameter

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

This determines the distinguished parameter

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

We call $k_c$ the *balanced derivative parameter*. At $k=k_c$,
@stationarity reduces to

#nonum[
  $
  sin(d theta)+sin(n theta)=0.
  $
]

Using the trigonometric identity

#nonum[
  $
  sin(A)+sin(B)
  =
  2 sin(frac(A+B,2)) cos(frac(A-B,2)),
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

These two families need not be disjoint. Their intersections correspond to
degenerate stationary points.

== The $(n+d)$-grid family

The first factor in @threshold-factor vanishes when

#nonum[
  $
  theta=frac(2 pi m,n+d) quad ,
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

Thus this stationary family consists of the rational $(n+d)$-grid.

At such a point,

#nonum[
  $
  n theta equiv -d theta quad (mod 2 pi),
  $
]

and therefore

#nonum[
  $
  cos(n theta)=cos(d theta).
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

Using $cos(n theta)=cos(d theta)$, this simplifies to

#nonum[
  $
  H_(k_c) (x)
  =
  -(2 pi)^2 n d cos(d theta).
  $
]

Consequently, a point in the $(n+d)$-grid family is a crest precisely when

$
cos(d theta)>0.
$ <grid-crest-test>

It is a trough when $cos(d theta)<0$ and degenerate when
$cos(d theta)=0$.

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
  theta=(2 ell+1)pi/(d-n).
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

so that

#nonum[
  $
  cos(n theta)=-cos(d theta).
  $
]

Substituting this relation into @H gives

#nonum[
  $
  H_(k_c) (x)
  =
  -(2 pi)^2
  frac(n d(d-n),n+d)
  cos(d theta).
  $
]

Since $d-n>0$, a point in the complementary family is a crest precisely when

$
cos(d theta)>0.
$ <complementary-crest-test>

It is a trough when $cos(d theta)<0$ and degenerate when
$cos(d theta)=0$.

In particular, the complementary family cannot in general be discarded as a
family of troughs: depending on the phase, it may contain crests, troughs, and
degenerate stationary points.

== Amplitudes of the two threshold families

The two stationary families have different amplitude signs.

At a point of the $(n+d)$-grid family, we have
$cos(n theta)=cos(d theta)$. Therefore

#nonum[
  $
  F_(k_c) (x)
  =
  frac(n,n+d) cos(d theta)
  +
  frac(d,n+d) cos(n theta)
  =
  cos(d theta).
  $
]

A grid-family crest satisfies $cos(d theta)>0$, and hence has positive
amplitude.

At a point of the complementary family, we have
$cos(n theta)=-cos(d theta)$. Therefore

#nonum[
  $
  F_(k_c) (x)
  =
  frac(n-d,n+d) cos(d theta).
  $
]

A complementary-family crest also satisfies $cos(d theta)>0$. Since $d>n$,
its amplitude is negative.

We have therefore proved the following separation result.

*Proposition (threshold amplitude separation).*  
At $k=k_c$, every crest in the $(n+d)$-grid family has positive amplitude,
whereas every crest in the complementary family has negative amplitude.
Consequently, all highest crests of $F_(k_c)$ belong to the
$(n+d)$-grid family. $square$

== The $n$ highest threshold crests

Set

#nonum[
  $
  N=n+d.
  $
]

At the grid point $x=m/N$, the amplitude is

#nonum[
  $
  F_(k_c) (m/N)
  =
  cos(frac(2 pi d m,N)).
  $
]

Assume now that $gcd(n,d)=1$ and that $n$ is odd. Since

#nonum[
  $
  gcd(d,N)=gcd(d,n)=1,
  $
]

multiplication by $d$ permutes the residue classes modulo $N$.

The $n$ largest values among

#nonum[
  $
  {cos(2 pi q/N) : q in ZZ/N ZZ}
  $
]

occur at the centered residue set

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

Thus the $n$ highest threshold crests are the grid points $m/N$ satisfying

$
d m mod N in R_n.
$ <highest-threshold-sites>

Because $d equiv -n mod N$, this condition is equivalent to requiring the
centered residue of $n m$ modulo $N$ to belong to $R_n$.

== Euclidean spacing of the highest threshold crests

For $j=0,dots,n-1$, define

$
m_j
=
floor(frac(j N,n)+frac(1,2)).
$ <nearest-grid-sites>

Since $n$ is odd, no number $j N/n$ is a half-integer. Thus $m_j$ is the
unique nearest integer to $j N/n$.

It satisfies

#nonum[
  $
  n m_j-j N in R_n.
  $
]

Conversely, every grid index satisfying this centered-residue condition is
equal to one of the $m_j$. Therefore the set

#nonum[
  $
  {m_0,dots,m_(n-1)}
  $
]

is exactly the set of the $n$ highest threshold crest indices.

The consecutive differences are

#nonum[
  $
  m_(j+1)-m_j
  =
  floor(frac((j+1)N,n)+frac(1,2))
  -
  floor(frac(j N,n)+frac(1,2)).
  $
]

Writing

#nonum[
  $
  N=a n+b,
  quad
  0 <= b<n,
  $
]

each difference equals either $a$ or $a+1$. Exactly $b$ of them have the
larger value.

The same statement holds for the final circular gap
$N+m_0-m_(n-1)$. Hence the circular gaps have the two integer lengths

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
Let $1<n<d$ be coprime, with $n$ odd, and set $N=n+d$. At the balanced
parameter $k_c=n/N$, the $n$ highest crests of $F_(k_c)$ lie on the
$N$-grid. Their indices are the nearest integers to

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


== Relation to the anchored branches

The theorem identifies the $n$ highest crests at the threshold without using
branch continuation.

To conclude that the anchored crest branches select these same sites, one
needs an additional amplitude-selection result: namely, that the anchored
crests are the $n$ highest crests of $F_k$ for every $k in [0,1)$.

Under that hypothesis, the anchored branches at $k=k_c$ occupy the Euclidean
set of threshold sites described above.

== Transition

The balanced parameter therefore yields a completely explicit Euclidean
configuration for the $n$ highest crests of $F_(k_c)$. The remaining dynamical
question is whether the anchored branches issued from the initial $n$-grid are
precisely the crests selected by this amplitude criterion.

The next section passes from ordered crest positions to circular spacing
vectors and introduces Huplets and Quplets.
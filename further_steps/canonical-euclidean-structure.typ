#import "../definitions.typ": *

= Canonical Euclidean structure

#emph[Companion note extracted from the commented “Expanded canonical-source discussion” block in #raw("../05-quplets-as-constrained-euclidean-rhythms.typ"). It records the full constrained-versus-unconstrained Euclidean comparison, the nearest-grid construction, and the Euclidean-gap argument that were condensed in the main article.]

== Constrained versus unconstrained Euclidean structure

The Euclidean class

#nonum[
  $
  E(n,d)
  =
  [bold(e) (n,d)]_("cyc")
  $
]

does not specify which point begins the spacing vector. It therefore identifies
all cyclic rotations of the same Euclidean gap word.

By @anchored-continuation, the Quplet is globally defined by/* Superseded wording: Assuming global continuation of the anchored crest branches, the Quplet is */

#nonum[
  $
  Q(n,d)
  =
  Huplet(n,d,1).
  $
]

This construction retains information that is absent from the ordinary
Euclidean class:

- each endpoint is inherited from a labeled branch $X_i$;
- the branch $X_0$, issued from $0$, fixes the anchor;
- the circular ordering is transported continuously from $k=0$ to $k=1$.

Theorem @euclidean-endpoint-theorem proves that/* Superseded wording: The Euclidean endpoint-selection conjecture states that */

#nonum[
  $
  Q(n,d) in E(n,d).
  $
]

This does not produce a new Euclidean cyclic class./* Superseded wording: If true, this does not produce a new Euclidean cyclic class. */ Rather, it equips
$E(n,d)$ with an additional dynamical constraint that selects one anchored
representative.

== Circular distance

For $x,y in RR \/ ZZ$, define the circular distance

$
"dist"_circle (x,y)
=
min_(m in ZZ)
abs(x-y+m).
$ <circular-distance>

This distance takes values in $[0,1/2]$.

== The nearest-grid configuration

For each $i=0,dots,n-1$, define

$
a_i
=
floor(
  i d/n
  +
  1/2
).
$ <nearest-endpoint>

Thus $a_i$ is the integer nearest to $i d/n$, and $a_i / d$ is the
$d$-grid point nearest to the initial crest $i/n$.

The nearest integer is unique. Indeed, if $i d/n$ were a half-integer, then

#nonum[
  $
  2 i d=(2q+1)n
  $
]

for some $q in ZZ$. Since $gcd(n,d)=1$, this would imply that $n$ divides
$2i$. Because $n$ is odd, it would follow that $n$ divides $i$, which is
impossible for $0<i<n$.

Define the ordered nearest-grid configuration

$
A_(n,d)
=
(
  a_0 ,
  a_1 ,
  dots,
  a_(n-1)
).
$ <nearest-configuration>

Since $a_0 = 0$ and $d/n>1$,

#nonum[
  $
  0=a_0 < a_1 < dots<a_(n-1) < d.
  $
]

Hence the nearest choices are distinct and occur in the same circular order as
the initial points. The branchwise nearest-site assignments are therefore
globally compatible.

== The canonical nearest-grid spacing vector

Define the circular integer gaps of $A_(n,d)$ by

#nonum[
  $
  g_i
  =
  a_(i+1) - a_i ,
  quad
  i=0,dots,n-2,
  $
]

and

#nonum[
  $
  g_(n-1)
  =
  d+a_0 - a_(n-1) .
  $
]

The *canonical nearest-grid spacing vector* is

$
CanonicalQuplet(n,d)
=
1/d
(
  g_0 ,
  dots,
  g_(n-1)
).
$ <canonical-Quplet>

Equivalently,

#nonum[
  $
  CanonicalQuplet(n,d)
  =
  1/d
  (
    a_1 - a_0 ,
    dots,
    a_(n-1) - a_(n-2) ,
    d+a_0 - a_(n-1)
  ).
  $
]

== Euclidean structure of the nearest-grid configuration

Write

#nonum[
  $
  d=s n+r,
  quad
  0<r<n.
  $
]

Define the circular integer gaps of $A_(n,d)$ by

#nonum[
  $
  g_i
  =
  a_(i+1) - a_i ,
  quad
  i=0,dots,n-2,
  $
]

and

#nonum[
  $
  g_(n-1)
  =
  d+a_0 - a_(n-1) .
  $
]

For $i=0,dots,n-2$,

#nonum[
  $
  g_i
  =
  floor(
    (i+1)d/n
    +
    1/2
  )
  -
  floor(
    i d/n
    +
    1/2
  ).
  $
]

Since

#nonum[
  $
  d/n=s+r/n,
  $
]

every gap equals either $s$ or $s+1$. Since the gaps sum to $d$, exactly
$r$ gaps have length $s+1$, and exactly $n-r$ gaps have length $s$.

The rounded indices $a_i$ coincide with the endpoint indices $m_i$ in
@nearest-grid-endpoints. Consequently, the all-scale statement proved in
@euclidean-endpoint-theorem applies to $A_(n,d)$: for every
$ell in {1,dots,n-1}$ and every $i$, the clockwise distance spanning $ell$
successive selected onsets belongs to

#nonum[
  $
  {floor((ell d) / n), ceil((ell d) / n)}.
  $
]

By the Euclidean-rhythm characterization invoked in
@euclidean-endpoint-theorem, this all-scale condition identifies the cyclic gap
class, up to rotation, as $E(n,d)$. Hence

$
CanonicalQuplet(n,d) in E(n,d).
$ <canonical-Euclidean>

Thus $CanonicalQuplet(n,d)$ is a distinguished anchored representative of
the Euclidean cyclic class $E(n,d)$.

/* Superseded direct floor-word route: the standard word uses
$i mapsto floor(i d/n)$ and the nearest-grid word uses
$i mapsto floor(i d/n+1/2)$. Concluding directly that the intercept change
preserves the cyclic class requires a separate intercept-to-rotation lemma. */

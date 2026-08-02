#import "definitions.typ": *

= Conclusion

This paper has studied the deformation of rhythmic spacing patterns generated
by the two-frequency interference function

#nonum[
  $
  F_k(x)
  =
  k cos(2 pi d x)
  +
  (1-k) cos(2 pi n x),
  $
]

with $1<n<d$ and $k in [0,1]$.

The local maxima issued from the regular $n$-grid define anchored crest
branches. Whenever these branches remain distinct and retain crest status,
their circular spacings form the Huplet

#nonum[
  $
  Huplet(n,d,k).
  $
]

If the branches extend to $k=1$, their endpoint spacings define the
dynamical Quplet

#nonum[
  $
  Q(n,d).
  $
]

The analysis separates the local analytic properties of these trajectories
from the global selection problem governing their endpoint configuration.


== The threshold configuration

A distinguished parameter occurs when the two contributions to the
stationarity equation have equal coefficients:

#nonum[
  $
  k_c
  =
  n/(n+d).
  $
]

At this parameter, the stationary equation factors into two explicit
trigonometric families. One lies on the regular $(n+d)$-grid, while the other
forms a complementary stationary family.

For coprime $n$ and $d$, with $n$ odd, the amplitude analysis proves that the
$n$ highest threshold crests belong to the $(n+d)$-grid family. Their indices
are the nearest integers to

#nonum[
  $
  0,
  (n+d)/n,
  2(n+d)/n,
  dots,
  (n-1)(n+d)/n,
  $
]

and their circular spacings form the Euclidean pattern of $n$ points on an
$(n+d)$-grid.

This threshold result is independent of global anchored-branch continuation.
Its identification with the threshold Huplet requires the additional
amplitude-selection conjecture asserting that the anchored crests are the
$n$ highest crests throughout the deformation.


== The canonical constrained Euclidean representative

Independently of the crest dynamics, the nearest-grid construction selects a
canonical labeled configuration on the $d$-grid. Each initial site $i/n$ is
sent to its unique nearest grid point

#nonum[
  $
  a_i/d,
  quad
  a_i
  =
  floor(
    i d/n
    +
    1/2
  ).
  $
]

The successive circular gaps of these sites define the canonical spacing
vector

#nonum[
  $
  CanonicalQuplet(n,d).
  $
]

This vector belongs to the Euclidean cyclic class $E(n,d)$, but contains more
information than the cyclic class alone: it fixes the labeling, anchoring, and
rotation determined by nearest-grid displacement.

The canonical configuration is distinguished by several closely related
static properties. It is obtained by nearest-grid rounding, uniquely minimizes
every strictly increasing separable displacement energy, has a balanced
centered system of signed endpoint errors, and is the unique zero-temperature
ground state of the corresponding Gibbs model.

The central dynamical conjecture of the paper is

$
Q(n,d)
=
CanonicalQuplet(n,d).
$ <conclusion-dynamical-realization>

Thus the remaining problem is not whether an explicit canonical Euclidean
representative exists, but whether anchored crest continuation selects that
representative.


== Affine organization

For fixed $n$, write

#nonum[
  $
  d=s n+r,
  quad
  0<r<n.
  $
]

The residue $r$ determines the positions of the long and short gaps in the
canonical representative. It also determines the zero-sum morphing direction

#nonum[
  $
  m_(n,r).
  $
]

The canonical spacing vector satisfies

#nonum[
  $
  CanonicalQuplet(n,d)
  =
  t_n
  +
  mu(d)m_(n,r),
  quad
  mu(d)
  =
  r(n-r)/(n d),
  $
]

where

#nonum[
  $
  t_n
  =
  1/n
  (
    1,
    dots,
    1
  )
  $
]

is the regular $n$-tuplet.

This formula separates three aspects of the structure:

1. the order class ${r,n-r}$ determines an unoriented affine line through
   $t_n$;

2. the residue $r$ determines an orientation of that line;

3. the quotient $s$ determines the discrete contrast magnitude $mu(d)$.

As $s$ increases, the combinatorial long–short pattern remains unchanged while
$mu(d)$ tends to zero. The corresponding canonical representatives therefore
approach the regular tuplet along a fixed affine line.

Complementary residues satisfy

#nonum[
  $
  m_(n,n-r)
  =
  -m_(n,r),
  $
]

and hence determine opposite orientations of the same line. Their associated
canonical representatives form twin pairs. These twins are affinely opposed
through $t_n$, although they are not generally equidistant from it.

The signed continuous family

#nonum[
  $
  ContinuousQuplet_mu(n,r)
  =
  t_n
  +
  mu m_(n,r)
  $
]

extends the discrete canonical points to an admissible line segment in the
spacing simplex. Positive and negative values of $mu$ describe the two
complementary residue orientations.


== Block-sum interpretation

The canonical spacing vector also admits a linear coarse-graining
interpretation.

The selected nearest-grid sites partition the regular $d$-grid into $n$
contiguous circular blocks. Let $Pi(n,d)$ be the corresponding block-sum
matrix and let

#nonum[
  $
  u_d
  =
  1/d
  (
    1,
    dots,
    1
  )
  $
]

be the barycenter of the $d$-dimensional probability simplex.

Then

#nonum[
  $
  Pi(n,d)u_d
  =
  CanonicalQuplet(n,d).
  $
]

Thus the canonical Quplet is the block-sum image of the uniform distribution
on the fine grid. This representation connects the Euclidean gap structure
with the affine geometry of the spacing simplex and gives a linear
interpretation of the fixed-residue collinearity formula.


== Open problems

The principal unresolved questions concern the global dynamics of the anchored
crest branches.

The first is whether, under the coprimality and parity assumptions considered
here, every anchored crest branch extends throughout $[0,1]$, remains a crest,
and moves monotonically after choosing a continuous lift.

The second is whether the anchored branches are precisely the $n$ highest
crests for every $k in [0,1)$. A proof of this statement would identify the
anchored Huplet with the explicitly known highest-crest configuration at the
balanced parameter.

The third and central question is the endpoint-selection problem expressed in
@conclusion-dynamical-realization. A proof would transfer all canonical
Euclidean, variational, affine, twin, and block-sum properties directly to the
dynamically defined Quplets.

A further question is whether the threshold–extension identity

#nonum[
  $
  Huplet(
    n,
    d,
    n/(n+d)
  )
  =
  Q(n,n+d)
  $
]

can be derived from a structural relation between the corresponding crest
trajectories, rather than established only at the level of their conjectured
endpoint selections.


The amplitude trajectories in @fig-A-trajectories also display a
marked quasi-symmetry about the balanced parameter
$k_c=n/(n+d)$. A natural balance coordinate is the weighted
log-odds

#nonum[
  $
  s
  =
  log(frac(k d,(1-k)n)),
  $
]

or, on a bounded interval,

#nonum[
  $
  u
  =
  frac(k d,k d+(1-k)n),
  quad
  u(k_c)=frac(1,2).
  $
]

In the $s$-coordinate, the stationarity equation becomes

#nonum[
  $
  e^(s/2) sin(d theta)
  +
  e^(-s/2) sin(n theta)
  =
  0.
  $
]

Reflection about $s=0$ exchanges the two coefficient weights but
does not exchange the frequencies $n$ and $d$. It therefore
explains the observed quasi-symmetry without implying an exact
branch-independent symmetry. It remains to quantify the residual
branch-dependent skew and to determine whether a distinguished
common reparametrization exists.

== Final perspective

The interaction of two elementary periodic components therefore gives rise to
several distinct but connected structures:

- analytic crest trajectories;

- an explicit rational threshold configuration;

- Euclidean circular spacing classes;

- a canonical anchored representative selected by minimal displacement;

- affine residue families and twin opposition;

- and a block-sum realization from a uniform fine-grid distribution.

The proved results establish the arithmetic and geometric structure of the
canonical representatives. The remaining conjectures ask whether the
continuous crest dynamics realize precisely this canonical structure.

In this sense, the Quplet construction provides a bridge between harmonic
interference, Euclidean distribution, variational selection, and affine rhythm
geometry.
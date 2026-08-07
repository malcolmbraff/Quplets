#import "definitions.typ": *

= Conclusion

For coprime integers $1<n<d$ with $n$ odd, this paper studies the
two-frequency family

#nonum[
  $
  F_k (x)
  =
  k cos(2 pi d x)
  +
  (1-k) cos(2 pi n x),
  quad
  k in [0,1].
  $
]

The $n$ crests issued from the regular $n$-grid continue uniquely throughout
the full modulation interval. By @anchored-continuation, they remain distinct
nondegenerate local maxima, preserve cyclic order, and move monotonically
inside pairwise disjoint nearest-grid corridors. Their exact endpoints are

#nonum[
  $
  X_i (1)
  =
  1 / d floor((d i) / n + 1 / 2),
  quad
  i=0,dots,n-1.
  $
]

Their circular spacing vector therefore defines the Quplet $Q(n,d)$ without
any continuation hypothesis.

The endpoint theorem @euclidean-endpoint-theorem proves more than the
two-adjacent-gap property. At every scale $ell in {1,dots,n-1}$, each
clockwise $ell$-onset distance belongs to

#nonum[
  $
  {floor((ell d) / n),ceil((ell d) / n)}.
  $
]

By the Demaine distance criterion, the endpoint gap necklace is the Euclidean
class $E(n,d)$. The dynamics also retain the labels and the anchor inherited
from the initial grid, so they select the distinguished nearest-grid
representative

#nonum[
  $
  Q(n,d)
  =
  CanonicalQuplet(n,d),
  quad
  CanonicalQuplet(n,d) in E(n,d).
  $
]

Section 5 gives this representative two complementary static
characterizations. Its signed endpoint errors form the complete centered
residue system, and @labeled-nearest-grid-minimality shows that it minimizes
every nondecreasing separable circular-displacement cost among labeled
$d$-grid selections, uniquely when the loss is strictly increasing.

At the slope-balanced parameter

#nonum[
  $
  k_c=n/(n+d),
  $
]

the stationary equation factors into resonant and complementary families.
The resonant calculation identifies the $n$ highest threshold crests, and
@anchored-threshold-selection proves that these are exactly the anchored
crests. Consequently, @threshold-extension-identity gives the exact relation

#nonum[
  $
  Huplet(n,d,k_c)
  =
  Q(n,n+d).
  $
]

Thus the threshold configuration, the endpoint construction, and the
Euclidean spacing theorem are parts of one proved dynamical–arithmetic chain.

== Residual amplitude-ranking interval

Set
#nonum[
  $
  k_0=n^2/(n^2+2d^2),
  $
]
and let $h_0>0$ be the explicit width defined in
@subcritical-strip-ranking. By @amplitude-selection-range, the anchored crests
are precisely the $n$ highest local maxima on
#nonum[
  $
  [0,k_0] union (k_c-h_0,1).
  $
]
At $k=1$ all $d$ crest amplitudes tie. The unresolved parameter set is
therefore contained in
#nonum[
  $
  (k_0,k_c-h_0]
  $
]
when this interval is nonempty.

Writing $A_i (k)=F_k (X_i (k))$, @anchored-amplitude-floor gives
#nonum[
  $
  A_i (k)
  >=
  A_i (k_c)
  =
  cos((2 pi epsilon_i)/(n+d))
  >=
  cos((pi(n-1))/(n+d)).
  $
]
Here $m_i=floor(d i/n+1/2)$ and $epsilon_i=n m_i-i d$.
Moreover, @subcritical-anchored-windows keeps one anchored crest inside each
quarter-width $n$-grid window below $k_c$.

The new ingredient is independent of the number or arrangement of additional
crests. By @degenerate-values-below-balance, every nontrivial stationary
degeneracy lies at or below $k_c$ and its squared amplitude is bounded
linearly by $k_c-k$. @subcritical-strip-ranking combines this
square-root bound with the envelope estimate and the common anchored floor to
control every unanchored crest on $(k_c-h_0,k_c)$. On the residual interval,
if any, keeping all unanchored crests below the common floor remains a
sufficient condition for the top-$n$ property; it is not necessary because
individual anchored amplitudes can be higher.

The proved result is therefore precise: two-frequency crest continuation
selects a canonical labeled representative of a Euclidean rhythm necklace,
and its prominence ranking is established except possibly on the residual
interval above.

/*

Previous extended conclusion preserved for source history.

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

The canonical configuration is distinguished by three static properties retained
in the present article. It is obtained by nearest-grid rounding, uniquely
minimizes every strictly increasing separable displacement energy, and has a
balanced centered system of signed endpoint errors.

By @Quplet-realization, anchored crest continuation selects exactly this
canonical representative:

$
Q(n,d)=CanonicalQuplet(n,d).
$ <conclusion-dynamical-realization>

This endpoint realization is therefore proved, not conjectural. The optional
Gibbs and zero-temperature interpretation is preserved as follow-up material
under #raw("further_steps/").

// Superseded endpoint-conjecture summary.
// // The canonical configuration is distinguished by several closely related
// // static properties. It is obtained by nearest-grid rounding, uniquely minimizes
// // every strictly increasing separable displacement energy, has a balanced
// // centered system of signed endpoint errors, and is the unique zero-temperature
// // ground state of the corresponding Gibbs model.
// // 
// // The central dynamical conjecture of the paper is
// // 
// // $
// // Q(n,d)
// // =
// // CanonicalQuplet(n,d).
// // $ <conclusion-dynamical-realization>
// // 
// // Thus the remaining problem is not whether an explicit canonical Euclidean
// // representative exists, but whether anchored crest continuation selects that
// // representative.
// // 
// // 
// // 

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

The global continuation, nearest-grid endpoint selection, canonical Quplet
realization, and threshold-extension identity are proved in the present paper.

The remaining dynamical selection problem is whether the anchored branches are
precisely the $n$ highest crests for every $k in [0,1)$. At the balanced
parameter $k_c=n/(n+d)$ this identification is already proved by
@anchored-threshold-selection; the open problem concerns the rest of the
modulation interval.

// Superseded list of continuation and endpoint conjectures.
// // The principal unresolved questions concern the global dynamics of the anchored
// // crest branches.
// // 
// // The first is whether, under the coprimality and parity assumptions considered
// // here, every anchored crest branch extends throughout $[0,1]$, remains a crest,
// // and moves monotonically after choosing a continuous lift.
// // 
// // The second is whether the anchored branches are precisely the $n$ highest
// // crests for every $k in [0,1)$. A proof of this statement would identify the
// // anchored Huplet with the explicitly known highest-crest configuration at the
// // balanced parameter.
// // 
// // The third and central question is the endpoint-selection problem expressed in
// // @conclusion-dynamical-realization. A proof would transfer all canonical
// // Euclidean, variational, affine, twin, and block-sum properties directly to the
// // dynamically defined Quplets.
// // 
// // A further question is whether the threshold–extension identity
// // 
// // #nonum[
// //   $
// //   Huplet(
// //     n,
// //     d,
// //     n/(n+d)
// //   )
// //   =
// //   Q(n,n+d)
// //   $
// // ]
// // 
// // can be derived from a structural relation between the corresponding crest
// // trajectories, rather than established only at the level of their conjectured
// // endpoint selections.
// // 
// // 
// // 

The amplitude trajectories preserved in the follow-up analysis also display a
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

The proved results establish both the dynamical realization and the arithmetic
and geometric structure of the canonical representatives. The remaining
conjectures concern prominence ranking throughout the modulation interval and
finer analytic symmetries of the trajectories.

In this sense, the Quplet construction provides a bridge between harmonic
interference, Euclidean distribution, variational selection, and affine rhythm
geometry.

*/

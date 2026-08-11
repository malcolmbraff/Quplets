#import "definitions.typ": *

= Quplets as constrained Euclidean rhythms

The Euclidean class $E(n,d)$ describes an even distribution of $n$ points on
a regular $d$-grid up to cyclic rotation. By contrast, the Quplet $Q(n,d)$ is
defined through the continuation of labeled crest branches from the initial
$n$-grid to the endpoint $d$-grid.

The purpose of this section is to characterize the particular Euclidean
representative selected by this continuation. By @nearest-grid-endpoints, the
representative is the nearest-grid configuration studied below. Independently of the crest dynamics, it is
the unique labeled configuration with minimal pointwise displacement from the
initial regular grid. Its signed displacements form a complete centered
residue system and are globally balanced.

Throughout this section, let $1<n<d$ be coprime, with $n$ odd.

The surrounding literature offers complementary descriptions of the same
Euclidean class: the Bjorklund--Toussaint construction
#cite(<bjorklundTheoryRepratePattern2003>) #cite(<toussaintEuclideanAlgorithmGenerates2005>),
maximal evenness #cite(<cloughMaximallyEvenSets1991>), and Fourier-space
characterizations #cite(<amiotMusicFourierSpace2016>). Our result does not
define a new necklace class; it explains how the deformation selects one
labeled, anchored representative of that class.


== The canonical nearest-grid representative

The Euclidean class $E(n,d)$ determines a cyclic gap class but does not retain
the labels of the initial $n$-grid. The anchored dynamics supply a distinguished
representative by nearest-grid selection.

For $x,y in RR / ZZ$, define

$
"dist"_circle (x,y)
=
min_(m in ZZ) abs(x-y+m).
$ <circular-distance>

For $i=0,dots,n-1$, set

$
a_i
=
floor((i d)/n+1/2).
$ <nearest-endpoint>

Then $a_i/d$ is the unique $d$-grid point nearest to $i/n$. A tie would imply
$n$ divides $2i$; since $n$ is odd and $0<i<n$, this is impossible. Moreover,

#nonum[
  $
  0=a_0 < a_1 < dots<a_(n-1)<d.
  $
]

The corresponding labeled index configuration is
$
A_(n,d)=(a_0 ,dots,a_(n-1)).
$ <nearest-configuration>

Write $a_n=a_0+d$ and define the normalized circular gap vector

$
CanonicalQuplet(n,d)
=
1/d (a_1-a_0 ,dots,a_n-a_(n-1)).
$ <canonical-Quplet>

By @nearest-grid-endpoints and @euclidean-endpoint-theorem,

$
Q(n,d)
=
CanonicalQuplet(n,d),
quad
CanonicalQuplet(n,d) in E(n,d).
$ <canonical-Euclidean>

Thus the ordinary Euclidean necklace is supplemented by a canonical anchor,
labeling, and rotation.

== Centered displacement symmetry

Define

#nonum[
  $
  epsilon_i=n a_i-i d,
  quad
  delta_i=a_i/d-i/n=epsilon_i/(n d).
  $
]

#corollary(name: "Centered displacement symmetry")[
  The rounding residues form the centered residue system

  $
  {epsilon_i : i=0,dots,n-1}
  =
  {-(n-1)/2,dots,(n-1)/2}.
  $ <centered-residues>

  Moreover, for $1<=i<n$, $delta_(n-i)=-delta_i$, and

  #nonum[
    $
    sum_(i=0)^(n-1) delta_i=0.
    $
  ]
] <centered-displacement-symmetry>

#proof[
  Each $epsilon_i$ is an integer with $abs(epsilon_i)<n/2$, and
  $epsilon_i equiv -i d$ modulo $n$. Coprimality makes these residues distinct,
  so they exhaust the $n$ centered representatives. The uniqueness of nearest
  rounding gives $a_(n-i)=d-a_i$, and hence the asserted symmetry and zero sum.
]

The centered-residue statement above records the arithmetic information used
in the remainder of this section.

== Labeled nearest-grid minimality

Consider an arbitrary labeled selection of $d$-grid indices

#nonum[
  $
  B
  =
  (
    b_0 ,
    b_1 ,
    dots,
    b_(n-1)
  ),
  $
]

where each $b_i in {0,dots,d-1}$. Repetitions are allowed: no
injectivity or cyclic-order condition is imposed. Thus $B$ ranges over all
labeled $d$-grid selections, and its $i$th point is paired with the initial
point $i/n$.

By construction, $a_i / d$ is the unique $d$-grid point nearest to $i/n$.
Hence, for every $i$,

$
"dist"_circle (i/n,a_i / d)
<=
"dist"_circle (i/n,b_i / d).
$ <pointwise-minimality>

Let

#nonum[
  $
  phi : [0,1/2] -> RR
  $
]

be nondecreasing, and define the labeled displacement energy

$
cal(E)_phi (B)
=
sum_(i=0)^(n-1)
phi (
  "dist"_circle (
    i/n,
    b_i / d
  )
).
$ <displacement-energy>

#proposition(name: "Labeled nearest-grid minimality")[
  For every nondecreasing loss $phi:[0,1/2] -> RR$ and every labeled
  $d$-grid selection $B$ as above,

  $
  cal(E)_phi (A_(n,d) )
  <=
  cal(E)_phi (B).
  $ <minimal-distortion>

  If $phi$ is strictly increasing, equality holds only when

  #nonum[
    $
    b_i = a_i
    $
  ]

  for every $i$.
  Because
  #nonum[
    $
    0=a_0<a_1<dots<a_(n-1)<d,
    $
  ]
  the minimizing selection is automatically injective and order-preserving.
  The same inequality, and the same uniqueness statement for strictly
  increasing $phi$, therefore remain valid if competitors are restricted by
  either of these constraints.
] <labeled-nearest-grid-minimality>

#proof[
  The inequality follows term by term from @pointwise-minimality and the
  monotonicity of $phi$. If $phi$ is strictly increasing, equality of the sums
  requires equality in every pointwise comparison. Since every nearest grid site
  is unique, this implies $b_i = a_i$ for all $i$.
]

This proposition records the variational meaning of pointwise nearest rounding;
it is not an independent global energy-selection principle.

The nearest-grid configuration therefore simultaneously minimizes, among all
labeled endpoint selections without injectivity or order constraints,

#nonum[
  $
  sum_i abs(delta_i ),
  quad
  sum_i delta_i^2 ,
  quad "and" quad
  max_i abs(delta_i ).
  $
]

It is the unique minimally displaced embedding for every strictly increasing
separable displacement cost.

== Dynamical realization of the canonical representative

#corollary(name: "Canonical Quplet realization")[
  Under the standing hypotheses,
  #nonum[
    $
    Q(n,d)
    =
    CanonicalQuplet(n,d)
    =
    1 / d
    (
      a_1 - a_0 ,
      dots,
      a_(n-1) - a_(n-2) ,
      d + a_0 - a_(n-1)
    ).
    $
  ]
  Here
  #nonum[
    $
    a_i = floor((i d) / n + 1 / 2).
    $
  ]
  Equivalently,
  #nonum[
    $
    X_i (1) = a_i / d
    $
  ]
  for every $i=0,dots,n-1$.
] <Quplet-realization>

#proof[
  The endpoint identity is @nearest-grid-endpoints. Since
  @anchored-continuation preserves cyclic order, the successive endpoint gaps
  are exactly the displayed differences. The equality with the canonical
  nearest-grid configuration also follows directly from
  @euclidean-endpoint-theorem.
]

This corollary resolves the dynamical realization of the canonical
representative. No entropy or energy-uniqueness statement is asserted.

== Interpretation

The endpoint result has three distinct layers:

- the Euclidean theorem determines the cyclic necklace $E(n,d)$;
- anchored continuation selects the nearest-grid representative;
- labeled nearest-grid minimality characterizes that representative among
  labeled $d$-grid selections.

These three layers are the complete endpoint claims used in the present
article. The conclusion summarizes their dynamical, combinatorial, and
variational relation.


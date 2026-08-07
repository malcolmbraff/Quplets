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

// Expanded canonical-source discussion suppressed from the present article.
// == Constrained versus unconstrained Euclidean structure
// 
// The Euclidean class
// 
// #nonum[
//   $
//   E(n,d)
//   =
//   [bold(e) (n,d)]_("cyc")
//   $
// ]
// 
// does not specify which point begins the spacing vector. It therefore identifies
// all cyclic rotations of the same Euclidean gap word.
// 
// By @anchored-continuation, the Quplet is globally defined by/* Superseded wording: Assuming global continuation of the anchored crest branches, the Quplet is */
// 
// #nonum[
//   $
//   Q(n,d)
//   =
//   Huplet(n,d,1).
//   $
// ]
// 
// This construction retains information that is absent from the ordinary
// Euclidean class:
// 
// - each endpoint is inherited from a labeled branch $X_i$;
// - the branch $X_0$, issued from $0$, fixes the anchor;
// - the circular ordering is transported continuously from $k=0$ to $k=1$.
// 
// Theorem @euclidean-endpoint-theorem proves that/* Superseded wording: The Euclidean endpoint-selection conjecture states that */
// 
// #nonum[
//   $
//   Q(n,d) in E(n,d).
//   $
// ]
// 
// This does not produce a new Euclidean cyclic class./* Superseded wording: If true, this does not produce a new Euclidean cyclic class. */ Rather, it equips
// $E(n,d)$ with an additional dynamical constraint that selects one anchored
// representative.
// 
// == Circular distance
// 
// For $x,y in RR \/ ZZ$, define the circular distance
// 
// $
// "dist"_circle (x,y)
// =
// min_(m in ZZ)
// abs(x-y+m).
// $ <circular-distance>
// 
// This distance takes values in $[0,1/2]$.
// 
// == The nearest-grid configuration
// 
// For each $i=0,dots,n-1$, define
// 
// $
// a_i
// =
// floor(
//   i d/n
//   +
//   1/2
// ).
// $ <nearest-endpoint>
// 
// Thus $a_i$ is the integer nearest to $i d/n$, and $a_i / d$ is the
// $d$-grid point nearest to the initial crest $i/n$.
// 
// The nearest integer is unique. Indeed, if $i d/n$ were a half-integer, then
// 
// #nonum[
//   $
//   2 i d=(2q+1)n
//   $
// ]
// 
// for some $q in ZZ$. Since $gcd(n,d)=1$, this would imply that $n$ divides
// $2i$. Because $n$ is odd, it would follow that $n$ divides $i$, which is
// impossible for $0<i<n$.
// 
// Define the ordered nearest-grid configuration
// 
// $
// A_(n,d)
// =
// (
//   a_0 ,
//   a_1 ,
//   dots,
//   a_(n-1)
// ).
// $ <nearest-configuration>
// 
// Since $a_0 = 0$ and $d/n>1$,
// 
// #nonum[
//   $
//   0=a_0 < a_1 < dots<a_(n-1) < d.
//   $
// ]
// 
// Hence the nearest choices are distinct and occur in the same circular order as
// the initial points. The branchwise nearest-site assignments are therefore
// globally compatible.
// 
// == The canonical nearest-grid spacing vector
// 
// Define the circular integer gaps of $A_(n,d)$ by
// 
// #nonum[
//   $
//   g_i
//   =
//   a_(i+1) - a_i ,
//   quad
//   i=0,dots,n-2,
//   $
// ]
// 
// and
// 
// #nonum[
//   $
//   g_(n-1)
//   =
//   d+a_0 - a_(n-1) .
//   $
// ]
// 
// The *canonical nearest-grid spacing vector* is
// 
// $
// CanonicalQuplet(n,d)
// =
// 1/d
// (
//   g_0 ,
//   dots,
//   g_(n-1)
// ).
// $ <canonical-Quplet>
// 
// Equivalently,
// 
// #nonum[
//   $
//   CanonicalQuplet(n,d)
//   =
//   1/d
//   (
//     a_1 - a_0 ,
//     dots,
//     a_(n-1) - a_(n-2) ,
//     d+a_0 - a_(n-1)
//   ).
//   $
// ]
// 
// == Euclidean structure of the nearest-grid configuration
// 
// Write
// 
// #nonum[
//   $
//   d=s n+r,
//   quad
//   0<r<n.
//   $
// ]
// 
// Define the circular integer gaps of $A_(n,d)$ by
// 
// #nonum[
//   $
//   g_i
//   =
//   a_(i+1) - a_i ,
//   quad
//   i=0,dots,n-2,
//   $
// ]
// 
// and
// 
// #nonum[
//   $
//   g_(n-1)
//   =
//   d+a_0 - a_(n-1) .
//   $
// ]
// 
// For $i=0,dots,n-2$,
// 
// #nonum[
//   $
//   g_i
//   =
//   floor(
//     (i+1)d/n
//     +
//     1/2
//   )
//   -
//   floor(
//     i d/n
//     +
//     1/2
//   ).
//   $
// ]
// 
// Since
// 
// #nonum[
//   $
//   d/n=s+r/n,
//   $
// ]
// 
// every gap equals either $s$ or $s+1$. Since the gaps sum to $d$, exactly
// $r$ gaps have length $s+1$, and exactly $n-r$ gaps have length $s$.
// 
// The rounded indices $a_i$ coincide with the endpoint indices $m_i$ in
// @nearest-grid-endpoints. Consequently, the all-scale statement proved in
// @euclidean-endpoint-theorem applies to $A_(n,d)$: for every
// $ell in {1,dots,n-1}$ and every $i$, the clockwise distance spanning $ell$
// successive selected onsets belongs to
// 
// #nonum[
//   $
//   {floor((ell d) / n), ceil((ell d) / n)}.
//   $
// ]
// 
// By the Euclidean-rhythm characterization invoked in
// @euclidean-endpoint-theorem, this all-scale condition identifies the cyclic gap
// class, up to rotation, as $E(n,d)$. Hence
// 
// $
// CanonicalQuplet(n,d) in E(n,d).
// $ <canonical-Euclidean>
// 
// Thus $CanonicalQuplet(n,d)$ is a distinguished anchored representative of
// the Euclidean cyclic class $E(n,d)$.
// 
// /* Superseded direct floor-word route: the standard word uses
// $i mapsto floor(i d/n)$ and the nearest-grid word uses
// $i mapsto floor(i d/n+1/2)$. Concluding directly that the intercept change
// preserves the cyclic class requires a separate intercept-to-rotation lemma. */
// 
// 

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

  Moreover, $delta_(n-i)=-delta_i$ and

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

The complete residue-order and displacement calculations are preserved in
#raw("further_steps/endpoint-displacement-arithmetic.typ").

// Expanded arithmetic source suppressed from the present article.
// == Signed endpoint displacements
// 
// Define the signed displacement of the $i$th nearest-grid point from its
// initial position by
// 
// $
// delta_i
// =
// a_i / d-i/n
// =
// (n a_i - i d)/(n d).
// $ <endpoint-displacement>
// 
// Set
// 
// $
// epsilon_i
// =
// n a_i - i d.
// $ <rounding-residue>
// 
// Then
// 
// #nonum[
//   $
//   delta_i = epsilon_i / (n d).
//   $
// ]
// 
// Because $a_i$ is the nearest integer to $i d/n$,
// 
// #nonum[
//   $
//   abs(epsilon_i )<n/2.
//   $
// ]
// 
// Since $epsilon_i$ is an integer and $n$ is odd,
// 
// #nonum[
//   $
//   epsilon_i
//   in
//   {
//     -(n-1)/2,
//     dots,
//     -1,
//     0,
//     1,
//     dots,
//     (n-1)/2
//   }.
//   $
// ]
// 
// Moreover,
// 
// #nonum[
//   $
//   epsilon_i equiv -i d quad (mod n).
//   $
// ]
// 
// Since multiplication by $d$ permutes the residue classes modulo $n$, the
// values $epsilon_i$ are all distinct.
// 
// #remark(
//   numbering: none,
//   name: "Centered displacement spectrum",
// )[
//   The rounding residues form the complete centered residue system
// 
//   $
//   {
//     epsilon_i :
//     i=0,dots,n-1
//   }
//   =
//   {
//     -(n-1)/2,
//     dots,
//     -1,
//     0,
//     1,
//     dots,
//     (n-1)/2
//   }.
//   $ <centered-residues>
// ]
// 
// #proof[
//   The $n$ integers $epsilon_i$ are distinct modulo $n$, and each lies in the
//   set of the $n$ centered representatives displayed above. They must therefore
//   exhaust that set.
// ]
// 
// Consequently, the selected displacements are all distinct and satisfy
// 
// #nonum[
//   $
//   abs(delta_i )<1/(2d).
//   $
// ]
// 
// Their multiset is completely determined by $n$ and $d$:
// 
// #nonum[
//   $
//   {
//     delta_i :
//     i=0,dots,n-1
//   }
//   =
//   {
//     j/(n d) :
//     j=-(n-1)/2,dots,(n-1)/2
//   }.
//   $
// ]
// 
// The order in which these values occur is determined by $d mod n$.
// 
// == Balance of the selected representative
// 
// The nearest-grid indices satisfy
// 
// $
// a_(n-i) = d-a_i ,
// quad
// i=1,dots,n-1.
// $ <nearest-symmetry>
// 
// Indeed, $d-a_i$ is the unique integer nearest to
// 
// #nonum[
//   $
//   d-i d/n
//   =
//   (n-i)d/n.
//   $
// ]
// 
// It follows that
// 
// #nonum[
//   $
//   epsilon_(n-i) = -epsilon_i
//   $
// ]
// 
// and therefore
// 
// $
// delta_(n-i) = -delta_i .
// $ <displacement-symmetry>
// 
// Since $delta_0 = 0$, the signed displacements sum to zero:
// 
// $
// sum_(i=0)^(n-1)
// delta_i
// =
// 0.
// $ <zero-displacement-sum>
// 
// Thus the nearest-grid representative is balanced around the initial regular
// grid. Its deviations occur in opposite pairs and preserve the barycenter of
// the lifted labeled configuration.
// 
// 

== Minimal-distortion characterization

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

#proposition(name: "Universal minimal distortion")[
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
] <universal-minimal-distortion>

#proof[
  The inequality follows term by term from @pointwise-minimality and the
  monotonicity of $phi$. If $phi$ is strictly increasing, equality of the sums
  requires equality in every pointwise comparison. Since every nearest grid site
  is unique, this implies $b_i = a_i$ for all $i$.
]

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
representative. It does not imply that the anchored crests are the $n$ highest
maxima for intermediate $k$, and it does not supply an entropy or energy
uniqueness statement.

/*
== Nearest-grid endpoint-selection conjecture

The preceding results characterize the nearest-grid configuration
intrinsically, without reference to crest continuation.

The dynamical claim is that the anchored branches select precisely this
configuration.

*Conjecture (dynamical realization of the canonical representative).*  
Assume the global-continuation conjecture. Then

$
Q(n,d)
=
CanonicalQuplet(n,d).
$ <Quplet-realization>

Equivalently, for every $i=0,dots,n-1$,

#nonum[
  $
  X_i (1)
  =
  a_i/d,
  $
]

where $a_i$ is defined by @nearest-endpoint.

Under this conjecture, the dynamically defined Quplet inherits the explicit
nearest-grid formula

#nonum[
  $
  Q(n,d)
  =
  CanonicalQuplet(n,d)
  =
  1/d
  (
    a_1-a_0,
    dots,
    a_(n-1)-a_(n-2),
    d+a_0-a_(n-1)
  ).
  $
]

By @canonical-Euclidean, this implies

#nonum[
  $
  Q(n,d) in E(n,d).
  $
]

The Quplet is therefore the Euclidean rhythm constrained by the following
additional requirements:

- the grid points retain the labels of the initial crests;
- each labeled point undergoes minimal circular displacement;
- the anchor is fixed by $X_0 (0)=0$;
- the signed displacements form a balanced centered residue system.

This is stronger than the unconstrained statement
$Q(n,d) in E(n,d)$, which determines only the cyclic spacing class.

*/

== Interpretation

The endpoint result has three distinct layers:

- the Euclidean theorem determines the cyclic necklace $E(n,d)$;
- anchored continuation selects the nearest-grid representative;
- universal minimal distortion characterizes that representative among labeled
  $d$-grid selections.

The optional Gibbs, entropy, free-energy, and zero-temperature model is
preserved separately in
#raw("further_steps/entropy-and-zero-temperature-selection.typ"). It is a
model of a chosen finite family of static competitors, not a consequence of
the crest dynamics.

The conclusion summarizes this dynamical, combinatorial, and variational chain
and isolates the remaining amplitude-ranking problem.

// Statistical interpretation and former transition suppressed from the article.
// == Entropy of rotation selection
// 
// @universal-minimal-distortion singles out $A_(n,d)$ as a unique ground
// state for every strictly increasing displacement loss. This permits an
// entropy-based description of the ambiguity among competing configurations.
// 
// Let
// 
// #nonum[
//   $
//   cal(C)(n,d)
//   $
// ]
// 
// be a finite family of competing labeled $d$-grid configurations containing
// $A_(n,d)$. Depending on the application, $cal(C)(n,d)$ may consist of all
// anchored Euclidean representatives or of all injective labeled selections of
// $n$ sites from the $d$-grid.
// 
// For $tau>0$, define the partition function
// 
// $
// Z_(phi,tau)
// =
// sum_(B in cal(C)(n,d))
// exp(
//   -cal(E)_phi (B)/tau
// ).
// $ <rotation-partition>
// 
// The corresponding Gibbs probability of a configuration is
// 
// $
// p_(phi,tau) (B)
// =
// exp(-cal(E)_phi (B)/tau)
// /
// Z_(phi,tau) .
// $ <rotation-Gibbs>
// 
// Define the alignment entropy
// 
// $
// cal(S)_(phi,tau)
// =
// -
// sum_(B in cal(C)(n,d))
// p_(phi,tau) (B)
// log p_(phi,tau) (B).
// $ <rotation-entropy>
// 
// This entropy measures the ambiguity of the rotation-selection problem at
// scale $tau$:
// 
// - a large value indicates that several configurations have comparable
//   displacement energies;
// - a small value indicates that one configuration strongly dominates.
// 
// The associated free energy is
// 
// $
// cal(F)_(phi,tau)
// =
// -tau log Z_(phi,tau) .
// $ <rotation-free-energy>
// 
// == Zero-temperature selection
// 
// Assume that $phi$ is strictly increasing. By @universal-minimal-distortion,
// $A_(n,d)$ is the unique minimizer of $cal(E)_phi$.
// 
// #remark(
//   numbering: none,
//   name: "Zero-temperature concentration",
// )[
//   As $tau$ tends to zero,
// 
//   $
//   p_(phi,tau) (A_(n,d) )
//   arrow.r
//   1,
//   $ <ground-state-concentration>
// 
//   while
// 
//   #nonum[
//     $
//     p_(phi,tau) (B)
//     arrow.r
//     0
//     $
//   ]
// 
//   for every $B!=A_(n,d)$.
// 
//   Moreover,
// 
//   $
//   cal(F)_(phi,tau)
//   arrow.r
//   cal(E)_phi (A_(n,d) )
//   $ <free-energy-limit>
// 
//   and
// 
//   $
//   cal(S)_(phi,tau)
//   arrow.r
//   0.
//   $ <entropy-limit>
// ]
// 
// #proof[
//   Let
// 
//   #nonum[
//     $
//     E_min
//     =
//     cal(E)_phi (A_(n,d) ).
//     $
//   ]
// 
//   For every competing configuration $B!=A_(n,d)$, strict minimality gives
// 
//   #nonum[
//     $
//     cal(E)_phi (B)-E_min > 0.
//     $
//   ]
// 
//   Factoring $exp(-E_min / tau)$ from @rotation-partition yields
// 
//   #nonum[
//     $
//     Z_(phi,tau)
//     =
//     exp(-E_min / tau)
//     (
//       1
//       +
//       sum_(B!=A_(n,d))
//       exp(
//         -(cal(E)_phi (B)-E_min )/tau
//       )
//     ).
//     $
//   ]
// 
//   Every term in the remaining sum tends to zero. Hence the Gibbs distribution
//   concentrates on $A_(n,d)$, the free energy tends to $E_min$, and the entropy
//   tends to zero.
// ]
// 
// In this formulation, the selected rotation is the unique zero-temperature
// ground state of the displacement energy.
// 
// The entropy defined here is an entropy of competing static configurations,
// rather than a dynamical-systems entropy. A dynamical entropy could instead be
// associated with the symbolic evolution of crest branches as $k$ varies, or
// with the sequence of selected rotations as $d$ varies. The relation between
// these possible dynamical notions and the alignment entropy above remains a
// subject for further study.
// 
// == Interpretation
// 
// The nearest-grid representative has four related properties under the labeling,
// loss, and competitor assumptions stated above:
// 
// 1. it is obtained by rounding each initial position to its unique nearest
//    $d$-grid point;
// 
// 2. among labeled $d$-grid configurations, it uniquely minimizes every strictly
//    increasing separable displacement energy;
// 
// 3. its signed errors form the complete centered residue system modulo $n$;
// 
// 4. for any fixed finite competitor family containing it and any strictly
//    increasing loss, it is the unique zero-temperature ground state of the
//    associated Gibbs model.
// 
// The first property defines the selected representative, the second follows by
// pointwise minimization, the third is an arithmetic consequence of the rounding
// formula, and the fourth follows from the second after the competitor family and
// loss are fixed. These properties are not asserted to be logically equivalent
// characterizations.
// 
// /* Superseded wording: “four equivalent static properties.” */
// 
// By @anchored-continuation and @nearest-grid-endpoints, anchored crest
// continuation selects this same representative.
// 
// Accordingly, the proposed contribution is not merely the observation that
// Quplets have Euclidean gap patterns. It is the construction of a constrained
// Euclidean object:
// 
// #nonum[
//   $
//   "Euclidean cyclic class"
//   +
//   "anchored minimal-displacement selection"
//   =
//   "Quplet".
//   $
// ]
// 
// == Transition
// 
// The Euclidean class determines the cyclic arrangement of long and short gaps.
// The nearest-grid constraint supplies a canonical labeling, anchor, and
// rotation, while the entropy formulation measures the ambiguity of competing
// configurations.
// 
// The next section studies how these constrained Euclidean representatives are
// organized as $d$ varies for fixed $n$, leading to residue families, order, and
// symmetry.

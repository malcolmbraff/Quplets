#import "definitions.typ": *

= The Huplet trajectory and Euclidean endpoints<section4>

The preceding sections describe the motion of the $n$ anchored crest branches and the complete stationary configuration at the balanced parameter $k_c = n/(n+d)$. We now pass from absolute crest positions to their successive circular spacings, since rhythm is determined by the clockwise gaps between consecutive labelled crests. This produces a spacing vector along the trajectory; at the endpoint, we prove that its gaps satisfy the stronger all-scale criterion for a Euclidean rhythm. Throughout this section, $1<n<d$ are coprime positive integers, $n$ is odd, and $k in [0,1]$ is the real modulation parameter, as in the standing hypotheses of @anchored-continuation.


== Huplet spacing coordinates

By @anchored-continuation, the cyclic order inherited from the initial regular
$n$-grid is preserved. We therefore choose the unique lifts satisfying

#nonum[
  $
  0=X_0 (k)<X_1 (k)<dots<X_(n-1) (k)<1
  $
]

and set $X_n (k)=1$. For $i=0,dots,n-1$, define

#nonum[
  $
  D_i (k)
  =
  X_(i+1) (k)-X_i (k).
  $
]

The *Huplet* is the spacing vector

#nonum[
  $
  Huplet(n,d,k)
  =
  (D_0 (k),dots,D_(n-1) (k)).
  $
]

Every component is positive and

#nonum[
  $
  sum_(i=0)^(n-1) D_i (k)=1.
  $
]

Thus $Huplet(n,d,k)$ lies in the open spacing simplex. Initially,

#nonum[
  $
  Huplet(n,d,0)
  =
  1/n (1,dots,1).
  $
]

@fig-huplet-spacing-vector shows the full spacing trajectory for
$(n,d)=(53,67)$; the two grid-locked two-value configurations, at $k_c$ and
at $k=1$, are visible.

#figure(
  image(
    "Figures/Spacing Vector.svg",
    width: 78%,
  ),
  caption: [
    Components of the Huplet spacing vector for $(n,d)=(53,67)$. At the
    slope-balanced parameter $k_c=53/120$, the components take two values,
    corresponding to the threshold Euclidean configuration on the $120$-grid.\
    As $k$ tends to $1$, they converge to the two endpoint lengths on the
    $67$-grid.
  ],
) <fig-huplet-spacing-vector>

== Grid locking along the Huplet trajectory

Call $k$ a *rational alignment parameter* when every anchored phase
$X_i (k)$ belongs to $QQ \/ ZZ$. Equivalently, all anchored crests then lie on
one finite pulse grid, and every component of $Huplet(n,d,k)$ is rational.
The proved configurations at $k=0$, $k=k_c$, and $k=1$ are such grid-locking
instants along an otherwise continuous Huplet trajectory. Musically, a
rational alignment admits exact notation on a common subdivision grid. When
no common finite grid exists, the Huplet still defines a valid continuous
timing configuration—an irrational timing pattern rather than a quantized
one. No uniqueness or rigidity classification of rational alignment
parameters is asserted here.

The present article retains only the ordered spacing path and its proved
grid-locked configurations; finer component dynamics and cycle deformations
lie outside its scope.

// Geometric source suppressed from the present article.
// == Circular ordering of the anchored crests
// 
// Suppose that, for a given parameter $k$, all $n$ anchored crest branches
// $X_i (k)$ are defined and have distinct values in $RR \/ ZZ$.
// 
// We use the branch $X_0$, issued from the crest at $x=0$, as the anchor. Let
// 
// #nonum[
//   $
//   Y_0 (k)=X_0 (k).
//   $
// ]
// 
// Starting from $Y_0 (k)$ and moving in the positive orientation around the
// unit cycle, let
// 
// #nonum[
//   $
//   Y_0 (k),Y_1 (k),dots,Y_(n-1) (k)
//   $
// ]
// 
// be the anchored crest positions in circular order.
// 
// Choose lifts of these phases to $RR$ satisfying
// 
// #nonum[
//   $
//   Y_0 (k)
//   <
//   Y_1 (k)
//   <
//   dots
//   <
//   Y_(n-1) (k)
//   <
//   Y_0 (k)+1.
//   $
// ]
// 
// The successive circular differences are independent of the chosen lifts.
// 
// == The Huplet component functions
// 
// Set
// 
// #nonum[
//   $
//   Y_n (k)=Y_0 (k)+1.
//   $
// ]
// 
// For $j=0,dots,n-1$, define
// 
// $
// D_j (k)
// =
// Y_(j+1) (k)-Y_j (k).
// $ <Huplet-components>
// 
// The functions $D_j (k)$ are the *Huplet component functions*. Each component
// is positive, and the components sum to one:
// 
// #nonum[
//   $
//   sum_(j=0)^(n-1) D_j (k)=1.
//   $
// ]
// 
// Wherever the ordered crest branches are differentiable,
// 
// #nonum[
//   $
//   D_j '(k)
//   =
//   Y_(j+1) '(k)-Y_j '(k).
//   $
// ]
// 
// The *Huplet* associated with $(n,d,k)$ is their spacing vector
// 
// $
// Huplet(n,d,k)
// =
// (D_0 (k),dots,D_(n-1) (k)).
// $ <Huplet-def>
// 
// Thus the Huplet lies in the open simplex
// 
// #nonum[
//   $
//   Sigma_n^circle.stroked.small
//   =
//   {
//     (h_0 ,dots,h_(n-1) ) in RR^n
//     mid(|)
//     h_j > 0,
//     sum_(j=0)^(n-1) h_j = 1
//   }.
//   $
// ]
// 
// At $k=0$, the anchored crests form the regular $n$-grid. Hence
// 
// $
// Huplet(n,d,0)
// =
// T_n
// =
// (1 / n) (1,dots,1).
// $ <regular-tuplet>
// 
// The Huplet therefore records the deformation of the regular $n$-tuplet as the
// relative weight of the $d$-frequency increases. On every interval where the
// anchored crests remain distinct, the map $k mapsto Huplet(n,d,k)$ is a continuous
// trajectory in the open spacing simplex. This trajectory, rather than a single
// endpoint vector, is the central geometric object of this section.
// 
// #figure(
//   image("Figures/Spacing Vector.svg", width: 82%),
//   caption: [
//     Huplet spacing components $D_j (k)$ for $(n,d)=(53,67)$ along the
//     modulation interval $0 <= k <= 1$.
//   ],
// ) <fig-huplet-trajectory>
// 
// 
// 
// == The induced deformation of the cycle
// 
// For $j in {0,dots,n-1}$ and $0<=u<=1$, write
// 
// #nonum[
//   $
//   x= (j + u) / n
//   quad (mod 1).
//   $
// ]
// 
// Define the piecewise-affine map
// 
// $
// Phi_k (x)
// =
// (1-u)Y_j (k)+u Y_(j+1) (k)
// quad (mod 1).
// $ <cycle-deformation>
// 
// The definitions on adjacent cells agree at their common endpoints.
// 
// #remark(
//   numbering: none,
//   name: "Induced deformation of the cycle",
// )[
//   For every parameter at which the ordered anchored crests are defined and
//   distinct, $Phi_k$ is an orientation-preserving piecewise-affine homeomorphism
//   of the unit cycle. Moreover,
// 
//   #nonum[
//     $
//     Phi_0 = id,
//     $
//   ]
// 
//   the initial grid points follow the ordered crest trajectories, and on the
//   $j$-th cell,
// 
//   #nonum[
//     $
//     partial_x Phi_k (x)=n D_j (k).
//     $
//   ]
// ]
// 
// #proof[
//   The positivity of the Huplet components makes each affine piece strictly
//   increasing, and the endpoint identities make the pieces join continuously.
//   At $k=0$, one has $Y_j (0)=j/n$, so $Phi_0 = id$. Since
//   $x=(j+u)/n$, differentiation with respect to $x$ gives
// 
//   #nonum[
//     $
//     partial_x Phi_k (x)
//     =
//     n
//     (
//       Y_(j+1) (k)-Y_j (k)
//     )
//     =
//     n D_j (k).
//     $
//   ]
// 
//   Thus the Huplet components are the local stretch factors of the induced
//   deformation of the cycle.
// ]
// 
// 

== The quantized endpoint: the Quplet

By @anchored-continuation, all anchored crest branches extend continuously to $k=1$, retain
crest status, and remain distinct. By @nearest-grid-endpoints, their endpoints lie at distinct sites
of the $d$-grid.

The *Quplet* associated with $(n,d)$ is defined by

#nonum[
  $
  Q(n,d)
  =
  Huplet(n,d,1).
  $
]

Equivalently, suppose that the selected endpoint sites are

#nonum[
  $
  j_0 / d,
  j_1 / d,
  dots,
  j_(n-1) / d,
  $
]

listed in circular order beginning with the endpoint of $X_0$. Then the
components of $Q(n,d)$ are their successive circular gaps.

Each component of $Q(n,d)$ is therefore an integer multiple of $1/d$.

By @anchored-continuation and @nearest-grid-endpoints, $Q(n,d)$ is well
defined. The combinatorial Euclidean spacing vector introduced below,
however, is defined independently of the crest dynamics. Throughout, the
italic $Q(n,d)$ denotes this dynamical endpoint vector, while the sans-serif
$CanonicalQuplet(n,d)$ of @section5 denotes the combinatorially defined
labeled nearest-grid representative; their equality is part of the content
of @Quplet-realization.

== Euclidean endpoint classes

Write the Euclidean division of $d$ by $n$ as

#nonum[
  $
  d=s n+r,
  quad
  0 <= r < n.
  $
]

Thus

#nonum[
  $
  s=floor(d/n),
  quad
  r=d mod n.
  $
]

An even distribution of $n$ points on a regular $d$-grid has circular gaps of
the two integer lengths

#nonum[
  $
  s
  quad "and" quad
  s+1.
  $
]

When $0<r<n$, exactly $r$ gaps have length $s+1$, and exactly $n-r$ gaps
have length $s$.

A standard representative of this Euclidean gap pattern is defined by

$
e_i (n,d)
=
floor(((i+1)d) / n)
-
floor((i d) / n),
quad
i=0,dots,n-1.
$ <E-floor>

The corresponding normalized spacing vector is

#nonum[
  $
  bold(e) (n,d)
  =
  1 / d
  (
    e_0 (n,d),
    dots,
    e_(n-1) (n,d)
  ).
  $
]

The entries of $bold(e) (n,d)$ sum to one. They consist of $r$ copies of
$(s+1)/d$ and $n-r$ copies of $s/d$.

@E-floor selects one particular cyclic rotation of the Euclidean gap
word. We denote its cyclic equivalence class by $E(n,d)$. Thus

#nonum[
  $
  E(n,d)
  =
  [bold(e) (n,d)]_("cyc") .
  $
]

Throughout this article, $E(n,d)$ denotes the cyclic class of normalized
integer gap vectors. By the one-to-one correspondence between a cyclic onset
set and its positive cyclic gap word, this is equivalent to the usual Euclidean
onset necklace. Accordingly, $Q(n,d) in E(n,d)$ is a statement about the
normalized endpoint gap vector, while the labeled endpoint sites retain the
additional anchor and onset labels.

A dynamically defined Quplet may select another representative of this class,
depending on the endpoint of the anchored branch $X_0$. The distinction between
the Euclidean cyclic class and the anchored rotation is therefore essential.


== Euclidean endpoint theorem
The following external criterion will be used to identify the cyclic endpoint
class.

*Demaine distance criterion.* Demaine et al. prove
#footnote[Theorem 4.1 of #cite(<demaineDistanceGeometryMusic2009>)] that, for
integers $d >= n >= 2$, let
$R=(r_0 ,dots,r_(n-1))$ be an $n$-onset rhythm on the $d$-pulse circle, with
the onsets listed in clockwise cyclic order and subscripts taken modulo $n$.
Then $R$ represents the Euclidean rhythm necklace $E(n,d)$—equivalently,
it agrees with a Euclidean representative up to cyclic rotation—if and only if,
for every $i in {0,dots,n-1}$ and every $ell in {1,dots,n-1}$, the clockwise
distance in grid pulses from $r_i$ to $r_(i+ell)$ belongs to

#nonum[
  $
  {floor((ell d) / n), ceil((ell d) / n)}.
  $
]

In the source, the criterion appears with $k$ onsets on an $n$-pulse circle
and spans $ell in {1,dots,k}$; the case $ell=k$ is the trivial full cycle
and is omitted above. Their theorem further lists equivalent
characterizations, including maximum evenness and three generating
algorithms; only the displayed criterion is used here.

//**************

#theorem(name: "Euclidean endpoint and canonical Quplet")[  

Let $1<n<d$ be coprime integers, with $n$ odd. The $n$ anchored crest  branches exist on the full interval $[0,1]$, remain distinct nondegenerate  local maxima, and end at  
#nonum[
  $ 
  X_i (1) = m_i / d, quad m_i = floor((d i) / n + 1 / 2), quad  i=0,dots,n-1. 
  $
]  
Hence the Quplet $Q(n,d)$ is well defined. Extend the endpoint indices by
the cyclic lift $m_(i+n)=m_i+d$ and set $Delta_ell (i)=m_(i+ell)-m_i$, the
clockwise distance in grid pulses spanning $ell$ successive selected onsets.
For every $ell in {1,dots,n-1}$ and every $i$,  
#nonum[
  $ 
  Delta_ell (i) in {floor((ell d) / n),ceil((ell d) / n)}. 
  $
]  
Thus the endpoint configuration is cyclically balanced at every scale and, by
the Demaine distance criterion stated above, its necklace is the Euclidean
class:

#nonum[
  $
  Q(n,d) in E(n,d). 
  $
]

] <euclidean-endpoint-theorem>

#proof[
  The continuation, nondegeneracy, order preservation, and endpoint formula are
  @anchored-continuation and @nearest-grid-endpoints. The endpoint indices are
  precisely
  #nonum[
    $
    m_i=floor((i d) / n+1 / 2).
    $
  ]
  Apply @nearest-grid-all-scale-balance with $M=d$. It gives the cyclic-lift
  identity $m_(i+n)=m_i+d$ and, for every $1<=ell<n$,
  #nonum[
    $
    m_(i+ell)-m_i
    in
    {floor((ell d) / n),ceil((ell d) / n)}.
    $
  ]
  These are exactly the clockwise distances between the selected endpoint
  onsets. The same lemma, using the Demaine characterization, identifies their
  cyclic gap class as the Euclidean rhythm. Dividing the integer gap word by
  $d$ gives the normalized spacing vector $Q(n,d)$, hence $Q(n,d) in E(n,d)$.
]

/*
Superseded expanded proof of the floor-difference calculation; retained in
source history after consolidation into @nearest-grid-all-scale-balance.

#proof[  
The continuation, nondegeneracy, order preservation, and endpoint formula are  @anchored-continuation and @nearest-grid-endpoints.  Extend the rounded-site formula to every integer index $j$ by

#nonum[
  $
  m_j = floor((j d) / n + 1 / 2). 
  $
]  

Then

#nonum[
  $
  m_(j+n) = m_j + d. 
  $
]  

This is the cyclic lift convention.

For $ell in {1,dots,n-1}$ define  

#nonum[
  $
  Delta_ell (i)=m_(i+ell) - m_i .
  $
]

If $i+ell>=n$, the equality $m_(j+n) = m_j + d$ means explicitly

#nonum[
  $
  Delta_ell (i)=m_(i+ell-n) + d-m_i ,
  $
]

so $Delta_ell (i)$ is the clockwise $ell$-onset distance across the anchor.

Directly from the rounded-site formula, 

#nonum[
  $
  Delta_ell (i) = floor(((i+ell)d) / n + 1 / 2) - floor((i d) / n + 1 / 2).
  $
]

For arbitrary real $x,y$, write $x=p+u$ and $y=q+v$, where $p,q$ are  integers and $0<=u,v<1$. 

Then 
#nonum[
  $
  floor(x+y)-floor(x)=q+floor(u+v) in {floor(y),ceil(y)}.
  $
]

Apply this with $x=(i d)/n+1/2$ and $y=ell d/n$.

Coprimality implies that  $ell d/n$ is not an integer for $1<=ell<n$, so the two possible values are  consecutive integers.  In terms of the endpoint gap word $g_i = m_(i+1) - m_i$,

#nonum[
  $
  Delta_ell (i) = g_i + g_(i+1) + dots+g_(i+ell-1) ,
  $
]

with cyclic indices.

Hence every cyclic block of every length $ell$ has one of the two nearest
possible sums. This is the strong cyclic-balanced, or maximally-even,
condition; the fact that adjacent gaps alone have two sizes would not suffice.
Changing the chosen starting onset only cyclically rotates the positive gap
word. By the Demaine et al. characterization, the endpoint therefore has the
Euclidean necklace, or cyclic gap class, $E(n,d)$.
]
*/

The theorem determines both the Euclidean cyclic class and the distinguished
nearest-grid representative selected by the anchored dynamics. // Redundant scope caveat preserved for source history.
// It does not
// assert that the anchored crests are the $n$ highest maxima for every
// intermediate $k$, and it implies no entropy or energy-uniqueness statement by
// itself.

/*
== Superseded Euclidean endpoint-selection conjecture

Numerical experiments suggest that the endpoints selected by the anchored
crest branches form an even distribution on the $d$-grid.

*Conjecture (Euclidean endpoint selection).*
Let $1<n<d$ be coprime, with $n$ odd. Assume that the anchored branches
extend to $k=1$ as stated in the former global-evolution conjecture. Then

$
 Q(n,d) in E(n,d).
$ <Euclidean-endpoint>

Equivalently, $Q(n,d)$ is a cyclic rotation of $bold(e) (n,d)$.

Thus every component of $Q(n,d)$ equals either $s/d$ or $(s+1)/d$, with
exactly $r$ components of the larger value. The remaining question is which
representative of $E(n,d)$ is selected by the branch anchored at
$X_0 (0)=0$.
*/
== The threshold Huplet and extension identity

By @anchored-threshold-selection, the anchored branches at
$k_c=n/(n+d)$ occupy precisely the $n$ highest crests of $F_(k_c)$. Their
sites are the nearest points of the $(n+d)$-grid to the initial $n$-grid.

#corollary(name: "Threshold-extension identity")[
  Let $1<n<d$ be coprime, with $n$ odd, and set $N=n+d$. Then

  #nonum[
    $
      Huplet(n,d,n/N)
      =
      Q(n,N),
      quad
      Q(n,N) in E(n,N).
      $
  ]

  The equality uses the anchoring at $0$ and the cyclic order transported by
  the anchored branches.
] <threshold-extension-identity>

#proof[
  By @anchored-threshold-formula, the $i$th anchored crest at $k_c=n/N$
  occupies the $N$-grid index

  #nonum[
    $
    floor((N i)/n+1/2).
    $
  ]

  Applying @nearest-grid-endpoints to the pair $(n,N)$ gives the same index for
  the endpoint of its $i$th anchored branch. Both constructions preserve
  cyclic order and use the branch anchored at $0$ as their starting onset.
  Their spacing vectors are therefore identical. Finally,
  @euclidean-endpoint-theorem applied to $(n,N)$ gives
  $Q(n,N) in E(n,N)$.
]

This result identifies the anchored Huplet with the highest-crest threshold
configuration at $k_c$.

/*
== The threshold Huplet and its Euclidean class

By @anchored-continuation, the anchored branches are defined at

#nonum[
  $
  k_c = n / (n + d).
  $
]

@euclidean-threshold-crests proves that the $n$ highest
crests of $F_(k_c)$ lie on the $(n+d)$-grid and have Euclidean circular
spacings.

Conditionally, if the anchored crests are the $n$ highest crests of $F_k$ for
every $k in [0,1)$, then

$
Huplet(n,d,k_c ) in E(n,n+d).
$ <threshold-Euclidean>

Thus the Euclidean cyclic class is proved for the highest-crest selection.
Its identification with the anchored Huplet depends only on the
amplitude-selection statement.

=== Threshold–extension conjecture

The numerical evidence suggests a more precise relation between the threshold
configuration of the pair $(n,d)$ and the endpoint configuration of the
extended pair $(n,n+d)$.

*Conjecture (threshold–extension).*  
With a consistent anchoring convention,

$
Huplet(n,d,n / (n + d))
=
Q(n,n+d).
$ <thresh-ext>

Both sides are spacing vectors on an $(n+d)$-grid. The conjecture asserts not
only that they belong to the same Euclidean cyclic class, but also that the
anchored crest dynamics select the same cyclic rotation.

The threshold factorization supports the common grid structure, while the
equality of anchored rotations remains a global dynamical assertion.

=== A partial threshold reduction

Assume the threshold–extension conjecture and suppose additionally that
$d>2n$. Then $d-n>n$, so the pair $(n,d-n)$ remains within the ordered
frequency convention used in this paper.

Applying @thresh-ext to $(n,d-n)$ gives

$
Q(n,d)
=
Huplet(
  n,
  d-n,
  n / d
).
$ <Euclidean-reduction>

Indeed, the balanced parameter for the pair $(n,d-n)$ is

#nonum[
  $
  n / (n + (d-n))
  =
  n / d.
  $
]

When $n<d<2n$, the frequency $d-n$ is smaller than $n$, and the identity
cannot be deduced within the present ordered convention. A general Euclidean
reduction therefore requires either a symmetric definition allowing the two
frequencies to exchange roles or a separate transformation rule for such
pairs.
*/

== Example: $(n,d)=(5,7)$

At $k=0$, the anchored crests form the regular $5$-grid, so

#nonum[
  $
  Huplet(5,7,0)
  =
  (1 / 5) (1,1,1,1,1).
  $
]

The balanced parameter is

#nonum[
  $
  k_c
  =
  5 / (5 + 7)
  =
  5 / 12.
  $
]

The $(n+d)$-grid family at this parameter is the $12$-grid. The five grid
points considered below are

#nonum[
  $
  0,
  2 / 12,
  5 / 12,
  7 / 12,
  10 / 12
  $
]

The corresponding crest heights, in this circular order, are

#nonum[
  $
  (
    1,
    1 / 2,
    sqrt(3) / 2,
    sqrt(3) / 2,
    1 / 2
  ).
  $
]

They satisfy the grid-family crest test and have circular spacings

#nonum[
  $
  (1 / 12) (2,3,2,3,2).
  $
]

By @anchored-threshold-selection, these are precisely the sites selected by the anchored branches. Therefore

#nonum[
  $
  Huplet(5,7,5 / 12)
  =
  (1 / 12) (2,3,2,3,2).
  $
]

At $k=1$, @nearest-grid-endpoints gives the exact endpoint indices

#nonum[
  $
  (m_0 ,m_1 ,m_2 ,m_3 ,m_4)
  =
  (0,1,3,4,6),
  quad
  m_i = floor((7 i) / 5 + 1 / 2).
  $
]

Thus the anchored endpoint sites are

#nonum[
  $
  0,
  1 / 7,
  3 / 7,
  4 / 7,
  6 / 7,
  $
]

and their circular spacing vector is exactly

#nonum[
  $
  Q(5,7)
  =
  (1 / 7) (1,2,1,2,1).
  $
]

The standard representative from @E-floor is
$bold(e) (5,7)=(1 / 7)(1,1,2,1,2)$; the exact anchored vector above is a
cyclic rotation of it and therefore represents $E(5,7)$.

#table(
  columns: 3,
  align: (left, left, left),
  column-gutter: 1.2em,
  stroke: none,

  [Regime],
  [Positions or grid],
  [Spacing vector],

  [$k=0$],
  [$0,1/5,2/5,3/5,4/5$],
  [$1/5 dot (1,1,1,1,1)$],

  [$k=5/12$],
  [$0,2/12,5/12,7/12,10/12$],
  [$1/12 dot (2,3,2,3,2)$],

  [$k=1$],
  [$0,1/7,3/7,4/7,6/7$],
  [$1 / 7 dot (1,2,1,2,1)$],
)



== Even $n$: paired Huplets and Quplets

Let $n$ be even. The central pitchfork gives two selected crest families,
indexed by $s in {-1,1}$, as in @section-even-n. Denote their ordered spacing
vectors by
#nonum[
  $
  Huplet^s (n,d,k),
  quad
  s in {-1,1},
  $
]
and their endpoint vectors by
#nonum[
  $
  Q^s (n,d)=Huplet^s (n,d,1).
  $
]
The two paths agree up to the pitchfork parameter $k_*$ and then follow the
reflected central arms. They therefore give two continuous selected Huplets,
not one single-valued continuation through the central tie.

#proposition(name: "Even paired endpoint and threshold identities")[
  Let $1<n<d$ be coprime with $n$ even, and put $N=n+d$. For each
  $s in {-1,1}$,
  #nonum[
    $
    Q^s (n,d) in E(n,d)
    quad "and" quad
    Huplet^s (n,d,n/N)=Q^s (n,N) in E(n,N).
    $
  ]
  The two choices are exchanged by reflection.
] <even-paired-Huplet-identities>

#proof[
  @noncentral-continuation and @even-central-arm-continuation give the two
  selected endpoint sets: all noncentral endpoints
  are the unique nearest $d$-grid sites, while the central endpoint is one of
  the two nearest sites. The floor-difference criterion, applied to the upper selection and
  transported by reflection as in @parity-unified-endpoint-selection,
  therefore gives $Q^s (n,d) in E(n,d)$. At the threshold, the selected sites are the
  corresponding upper or lower nearest sites on the $N$-grid by
  @even-anchored-threshold-selections. These are exactly the endpoint sites
  for the pair $(n,N)$ with the same choice of central arm, so their ordered
  gap vectors agree. Reflection exchanges the two choices throughout.
]

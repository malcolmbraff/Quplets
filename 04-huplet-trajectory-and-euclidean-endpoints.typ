#import "definitions.typ": *

= The Huplet trajectory and Euclidean endpoints

The preceding sections describe the motion of the $n$ anchored crest branches
and the complete stationary configuration at the balanced parameter
$k_c = n/(n+d)$. We now pass from crest positions to their successive circular
spacings.

Throughout this section, let $1 < n < d$. Whenever global statements about
the anchored branches are made, we additionally assume the continuation
properties stated in the conjecture of the crest-trajectory section.

== Circular ordering of the anchored crests

Suppose that, for a given parameter $k$, all $n$ anchored crest branches
$X_i (k)$ are defined and have distinct values in $RR \/ ZZ$.

We use the branch $X_0$, issued from the crest at $x=0$, as the anchor. Let

#nonum[
  $
  Y_0 (k)=X_0 (k).
  $
]

Starting from $Y_0 (k)$ and moving in the positive orientation around the
unit cycle, let

#nonum[
  $
  Y_0 (k),Y_1 (k),dots,Y_(n-1) (k)
  $
]

be the anchored crest positions in circular order.

Choose lifts of these phases to $RR$ satisfying

#nonum[
  $
  Y_0 (k)
  <
  Y_1 (k)
  <
  dots
  <
  Y_(n-1) (k)
  <
  Y_0 (k)+1.
  $
]

The successive circular differences are independent of the chosen lifts.

== The Huplet component functions

Set

#nonum[
  $
  Y_n (k)=Y_0 (k)+1.
  $
]

For $j=0,dots,n-1$, define

$
D_j (k)
=
Y_(j+1) (k)-Y_j (k).
$ <Huplet-components>

The functions $D_j (k)$ are the *Huplet component functions*. Each component
is positive, and the components sum to one:

#nonum[
  $
  sum_(j=0)^(n-1) D_j (k)=1.
  $
]

Wherever the ordered crest branches are differentiable,

#nonum[
  $
  D_j '(k)
  =
  Y_(j+1) '(k)-Y_j '(k).
  $
]

The *Huplet* associated with $(n,d,k)$ is their spacing vector

$
Huplet(n,d,k)
=
(D_0 (k),dots,D_(n-1) (k)).
$ <Huplet-def>

Thus the Huplet lies in the open simplex

#nonum[
  $
  Sigma_n^circle.stroked.small
  =
  {
    (h_0 ,dots,h_(n-1) ) in RR^n
    mid(|)
    h_j > 0,
    sum_(j=0)^(n-1) h_j = 1
  }.
  $
]

At $k=0$, the anchored crests form the regular $n$-grid. Hence

$
Huplet(n,d,0)
=
T_n
=
(1 / n) (1,dots,1).
$ <regular-tuplet>

The Huplet therefore records the deformation of the regular $n$-tuplet as the
relative weight of the $d$-frequency increases. On every interval where the
anchored crests remain distinct, the map $k mapsto Huplet(n,d,k)$ is a continuous
trajectory in the open spacing simplex. This trajectory, rather than a single
endpoint vector, is the central geometric object of this section.

#figure(
  image("Figures/Spacing Vector.svg", width: 82%),
  caption: [
    Huplet spacing components $Delta x_j (k)$ for $(n,d)=(53,67)$ along the
    modulation interval $0 <= k <= 1$.
  ],
) <fig-huplet-trajectory>



== The induced deformation of the cycle

For $j in {0,dots,n-1}$ and $0<=u<=1$, write

#nonum[
  $
  x= (j + u) / n
  quad (mod 1).
  $
]

Define the piecewise-affine map

$
Phi_k (x)
=
(1-u)Y_j (k)+u Y_(j+1) (k)
quad (mod 1).
$ <cycle-deformation>

The definitions on adjacent cells agree at their common endpoints.

#remark(
  numbering: none,
  name: "Induced deformation of the cycle",
)[
  For every parameter at which the ordered anchored crests are defined and
  distinct, $Phi_k$ is an orientation-preserving piecewise-affine homeomorphism
  of the unit cycle. Moreover,

  #nonum[
    $
    Phi_0 = id,
    $
  ]

  the initial grid points follow the ordered crest trajectories, and on the
  $j$-th cell,

  #nonum[
    $
    partial_x Phi_k (x)=n D_j (k).
    $
  ]
]

#proof[
  The positivity of the Huplet components makes each affine piece strictly
  increasing, and the endpoint identities make the pieces join continuously.
  At $k=0$, one has $Y_j (0)=j/n$, so $Phi_0 = id$. Since
  $x=(j+u)/n$, differentiation with respect to $x$ gives

  #nonum[
    $
    partial_x Phi_k (x)
    =
    n
    (
      Y_(j+1) (k)-Y_j (k)
    )
    =
    n D_j (k).
    $
  ]

  Thus the Huplet components are the local stretch factors of the induced
  deformation of the cycle.
]

== The quantized endpoint: the Quplet

Assume that all anchored crest branches extend continuously to $k=1$, retain
crest status, and remain distinct. Their endpoints then lie at distinct sites
of the $d$-grid.

The *Quplet* associated with $(n,d)$ is defined by

$
Q(n,d)
=
Huplet(n,d,1).
$ <Q>

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

The existence of $Q(n,d)$ as defined above depends on the global-continuation
conjecture. The combinatorial Euclidean spacing vector introduced below,
however, is defined independently of the crest dynamics.

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

$
bold(e) (n,d)
=
1 / d
(
  e_0 (n,d),
  dots,
  e_(n-1) (n,d)
).
$ <E-vector>

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

A dynamically defined Quplet may select another representative of this class,
depending on the endpoint of the anchored branch $X_0$. The distinction between
the Euclidean cyclic class and the anchored rotation is therefore essential.


== Euclidean endpoint theorem
Demaine et al. prove that, for integers $d >= n >= 2$, an $n$-onset rhythm $R=(r_0 , dots, r_(n-1))$ on the $d$-pulse circle is a rotation of the Euclidean rhythm $E(n,d)$ if and only if, for every $i in {0,dots,n-1}$ and every $ell in {1,dots,n-1}$, the clockwise distance from $r_i$ to $r_(i+ell)$ lies in ${floor((ell d) / n), ceil((ell d) / n)}$ 
//@demaineDistanceGeometryMusic2009[Theorem 4.1]. 
#ref(<demaineDistanceGeometryMusic2009>)


//**************

#theorem(name: "Euclidean endpoint and canonical Quplet")[  

Let $1<n<d$ be coprime integers, with $n$ odd. The $n$ anchored crest  branches exist on the full interval $[0,1]$, remain distinct nondegenerate  local maxima, and end at  
#nonum[
  $ 
  X_i (1) = m_i / d, quad m_i = floor((d i) / n + 1 / 2), quad  i=0,dots,n-1. 
  $
]  
Hence the Quplet $Q(n,d)$ is well defined. For every  $ell in {1,dots,n-1}$ and every $i$, the clockwise distance spanning  $ell$ successive selected onsets satisfies  
#nonum[
  $ 
  Delta_ell (i) in {floor((ell d) / n),ceil((ell d) / n)}. 
  $
]  
Thus the endpoint configuration is cyclically balanced at every scale and,  by the standard maximally-even characterization cited above, its necklace is  the Euclidean class:

#nonum[
  $
  Q(n,d) in E(n,d). 
  $
]

] <euclidean-endpoint-theorem>

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

Apply this with $x=id/n+1/2$ and $y=ell d/n$.

Coprimality implies that  $ell d/n$ is not an integer for $1<=ell<n$, so the two possible values are  consecutive integers.  In terms of the endpoint gap word $g_i = m_(i+1) - m_i$,

#nonum[
  $
  Delta_ell (i) = g_i + g_(i+1) + dots+g_(i+ell-1) ,
  $
]

with cyclic indices.

Hence every cyclic block of every length $ell$ has one  of the two nearest possible sums. This is the strong cyclic balanced, or  maximally-even, condition; the fact that adjacent gaps alone have two sizes  would not suffice.  Changing the chosen starting onset only cyclically rotates the positive gap  word. By #cite(<demaineDistanceGeometryMusic2009>), the endpoint therefore has the Euclidean necklace, or cyclic gap class, $E(n,d)$.]The theorem gives both the Euclidean cyclic class and the distinguishednearest-grid representative selected by the anchored dynamics. It does notassert that the anchored crests are the $n$ highest maxima for intermediate$k$, nor does it imply /*any entropy or energy uniqueness statement. == Euclidean 
endpoint selection

Numerical experiments suggest that the endpoints selected by the anchored
crest branches form an even distribution on the $d$-grid.

*Conjecture (Euclidean endpoint selection).*  
Let $1<n<d$ be coprime, with $n$ odd. Assume that the anchored branches
extend to $k=1$ as stated in the global-evolution conjecture. Then

$
Q(n,d) in E(n,d).
$ <Euclidean-endpoint>

Equivalently, $Q(n,d)$ is a cyclic rotation of $bold(e) (n,d)$.

Thus every component of $Q(n,d)$ equals either $s/d$ or $(s+1)/d$, with
exactly $r$ components of the larger value. The remaining question is which
representative of $E(n,d)$ is selected by the branch anchored at
$X_0 (0)=0$.

 */
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
points

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

If these are precisely the sites selected by the anchored branches, then

#nonum[
  $
  Huplet(5,7,5 / 12)
  =
  (1 / 12) (2,3,2,3,2).
  $
]

At $k=1$, the standard Euclidean representative on the $7$-grid is obtained
from @E-floor:

#nonum[
  $
  bold(e) (5,7)
  =
  (1 / 7) (1,1,2,1,2).
  $
]

Its cyclic class is $E(5,7)$. Numerical anchored continuation may select
another representative of this class, for example

#nonum[
  $
  (1 / 7) (1,2,1,2,1).
  $
]

The exact anchored rotation belongs to the rotation-selection problem studied
in the next section.

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
  [selected sites of the $7$-grid],
  [an element of $E(5,7)$],
)


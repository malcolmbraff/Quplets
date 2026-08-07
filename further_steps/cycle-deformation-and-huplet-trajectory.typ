#import "../definitions.typ": *

= Huplet trajectories and induced cycle deformation

#emph[Geometric follow-up material extracted from the main article. The main
paper retains only the circular spacing definition needed for the Quplet and
Euclidean endpoint theorem.]

Let $1<n<d$ be coprime, with $n$ odd. Let $X_i (k)$ be the globally continued,
order-preserving anchored crest branches.

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
  image("../Figures/Spacing Vector.svg", width: 82%),
  caption: [
    Huplet spacing components $D_j (k)$ for $(n,d)=(53,67)$ along the
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


#import "../definitions.typ": *

= Projection viewpoint: Quplets as block-sum images of a simplex barycenter

The canonical nearest-grid spacing vector admits a natural interpretation as
a coarse-graining of the uniform distribution on the $d$-grid.

More precisely, the selected onset sites partition the $d$-grid into $n$
contiguous circular blocks. Summing the uniform grid weights over these blocks
produces the canonical spacing vector.

The corresponding linear map will be called a *block-sum map*. Although it
may be viewed as a projection from a finer grid to a coarser spacing space, it
is not a projection matrix in the strict idempotent sense.


== Setup

Let

$
u_d
=
1/d
(
  1,
  dots,
  1
)
in RR^d
$ <grid-barycenter>

be the barycenter of the simplex

$
Delta_(d-1)
=
{
  w in RR^d :
  w_j>=0,
  sum_(j=0)^(d-1) w_j=1
}.
$ <grid-simplex>

Fix $n$ and $d$, and let

#nonum[
  $
  R_(n,d)
  =
  {
    a_0,
    a_1,
    dots,
    a_(n-1)
  }
  subset
  {
    0,
    dots,
    d-1
  },
  $
]

where the nearest-grid indices $a_i$ are defined by the nearest-endpoint theorem and
satisfy

#nonum[
  $
  0=a_0<a_1<dots<a_(n-1)<d.
  $
]

These indices determine $n$ contiguous circular blocks. For
$i=0,dots,n-2$, define

#nonum[
  $
  B_i
  =
  {
    a_i,
    a_i+1,
    dots,
    a_(i+1)-1
  },
  $
]

and define the final circular block by

#nonum[
  $
  B_(n-1)
  =
  {
    a_(n-1),
    dots,
    d-1
  }
  union
  {
    0,
    dots,
    a_0-1
  }.
  $
]

Since $a_0=0$, the second set in the final union is empty in the present
anchoring convention.

The blocks form a partition of the $d$-grid:

#nonum[
  $
  {
    0,
    dots,
    d-1
  }
  =
  B_0
  union
  dots
  union
  B_(n-1),
  $
]

with pairwise disjoint blocks.

Their lengths are

#nonum[
  $
  abs(B_i)
  =
  a_(i+1)-a_i,
  quad
  i=0,dots,n-2,
  $
]

and

#nonum[
  $
  abs(B_(n-1))
  =
  d+a_0-a_(n-1).
  $
]

Consequently,

$
CanonicalQuplet(n,d)
=
1/d
(
  abs(B_0),
  dots,
  abs(B_(n-1))
).
$ <canonical-block-lengths>


== The block-sum matrix

Define the block-incidence matrix

$
Pi(n,d)
in
{
  0,
  1
}^(n times d)
$ <block-sum-matrix>

by

#nonum[
  $
  Pi_(i,j)(n,d)
  =
  cases(
    1 & "if" j in B_i,
    0 & "otherwise".
  )
  $
]

Every grid index belongs to exactly one block. Therefore every column of
$Pi(n,d)$ contains exactly one entry equal to $1$, and hence

#nonum[
  $
  sum_(i=0)^(n-1)
  Pi_(i,j)(n,d)
  =
  1
  quad
  "for every"
  quad
  j=0,dots,d-1.
  $
]

Thus $Pi(n,d)$ is column-stochastic.

For every $w in Delta_(d-1)$,

#nonum[
  $
  Pi(n,d)w
  in
  Sigma_n,
  $
]

where $Sigma_n$ is the spacing simplex defined in the spacing simplex.

Indeed, the entries of $Pi(n,d)w$ are nonnegative and

#nonum[
  $
  sum_(i=0)^(n-1)
  (
    Pi(n,d)w
  )_i
  =
  sum_(j=0)^(d-1)
  w_j
  =
  1.
  $
]

Applied to the barycenter $u_d$, the $i$th component is

#nonum[
  $
  (
    Pi(n,d)u_d
  )_i
  =
  sum_(j in B_i)
  1/d
  =
  abs(B_i)/d.
  $
]

We therefore obtain the block-sum identity

$
Pi(n,d)u_d
=
CanonicalQuplet(n,d).
$ <canonical-block-sum>

If the Quplet-realization statement holds, then this becomes

#nonum[
  $
  Pi(n,d)u_d
  =
  CanonicalQuplet(n,d)
  =
  Q(n,d).
  $
]

Thus the block-sum map produces the canonical nearest-grid representative
unconditionally and the dynamically defined Quplet conditionally.


== Example: $(n,d)=(5,7)$

For $(n,d)=(5,7)$, the canonical nearest-grid onset indices are

#nonum[
  $
  R_(5,7)
  =
  {
    0,
    1,
    3,
    4,
    6
  }.
  $
]

The corresponding blocks are

#nonum[
  $
  B_0
  =
  {
    0
  },
  quad
  B_1
  =
  {
    1,
    2
  },
  quad
  B_2
  =
  {
    3
  },
  $
]

and

#nonum[
  $
  B_3
  =
  {
    4,
    5
  },
  quad
  B_4
  =
  {
    6
  }.
  $
]

Their lengths are

#nonum[
  $
  (
    1,
    2,
    1,
    2,
    1
  ).
  $
]

Hence

#nonum[
  $
  CanonicalQuplet(5,7)
  =
  1/7
  (
    1,
    2,
    1,
    2,
    1
  ).
  $
]

The block-sum matrix is

#nonum[
  $
  Pi(5,7)
  =
  mat(
    1, 0, 0, 0, 0, 0, 0;
    0, 1, 1, 0, 0, 0, 0;
    0, 0, 0, 1, 0, 0, 0;
    0, 0, 0, 0, 1, 1, 0;
    0, 0, 0, 0, 0, 0, 1
  ).
  $
]

Multiplying the barycenter

#nonum[
  $
  u_7
  =
  1/7
  (
    1,
    1,
    1,
    1,
    1,
    1,
    1
  )
  $
]

gives

$
Pi(5,7)u_7
=
1/7
(
  1,
  2,
  1,
  2,
  1
)
=
CanonicalQuplet(5,7).
$ <example-block-sum>

If the Quplet-realization statement holds for $(5,7)$, then this vector also equals
$Q(5,7)$.

A matrix containing a single $1$ only at the initial index of each block would
merely select onset weights. Applied to $u_7$, it would produce

#nonum[
  $
  1/7
  (
    1,
    1,
    1,
    1,
    1
  ),
  $
]

which is not normalized in the $5$-dimensional spacing simplex and does not
represent the circular gap vector.

The block-sum matrix must therefore contain a $1$ across every grid index
belonging to the corresponding block.


== Relation to fixed-residue collinearity

Write

#nonum[
  $
  d=s n+r,
  quad
  0<r<n.
  $
]

The row sums of $Pi(n,d)$ are the block lengths. Therefore

#nonum[
  $
  Pi(n,d)u_d
  =
  1/d
  (
    abs(B_0),
    dots,
    abs(B_(n-1))
  ).
  $
]

By the nearest-grid construction, each block length equals either $s$ or
$s+1$. The indices of the blocks of length $s+1$ form $L_(n,r)$, while the
remaining indices form $S_(n,r)$.

Consequently,

#nonum[
  $
  Pi(n,d)u_d-t_n
  =
  mu(d)m_(n,r),
  $
]

where

#nonum[
  $
  mu(d)
  =
  r(n-r)/(n d).
  $
]

Combining this with the canonical block-sum identity gives

$
CanonicalQuplet(n,d)
=
Pi(n,d)u_d
=
t_n
+
mu(d)m_(n,r).
$ <block-sum-collinearity>

This recovers the fixed-residue collinearity formula from the block-sum viewpoint.

If the Quplet-realization statement holds, then

#nonum[
  $
  Q(n,d)
  =
  Pi(n,d)u_d
  =
  t_n
  +
  mu(d)m_(n,r).
  $
]


== The threshold configuration

Set

#nonum[
  $
  N=n+d
  $
]

and consider the balanced derivative parameter

#nonum[
  $
  k_c
  =
  n/(n+d)
  =
  n/N.
  $
]

The threshold theorem identifies the $n$ highest crests on the $N$-grid.
Their indices are

#nonum[
  $
  m_i
  =
  floor(
    i N/n
    +
    1/2
  ),
  quad
  i=0,dots,n-1.
  $
]

Let

#nonum[
  $
  R_c
  =
  {
    m_0,
    dots,
    m_(n-1)
  }
  $
]

be this ordered threshold onset set, and let $Pi_c(n,d)$ be the corresponding
block-sum matrix on the $N$-grid.

The Euclidean threshold theorem gives

$
Pi_c(n,d)u_N
=
CanonicalQuplet(n,N)
=
CanonicalQuplet(n,n+d).
$ <canonical-threshold-block-sum>

This identity is unconditional: it concerns the explicitly known set of the
$n$ highest threshold crests and the canonical nearest-grid representative on
the $(n+d)$-grid.

If the amplitude-selection conjecture holds, then the anchored crest branches
occupy these same threshold sites, and therefore

#nonum[
  $
  Huplet(n,d,k_c)
  =
  Pi_c(n,d)u_(n+d)
  =
  CanonicalQuplet(n,n+d).
  $
]

If, in addition, the Quplet-realization statement holds for $(n,n+d)$, then

#nonum[
  $
  Huplet(n,d,k_c)
  =
  CanonicalQuplet(n,n+d)
  =
  Q(n,n+d).
  $
]

Equivalently, under these dynamical hypotheses,

$
Huplet(
  n,
  d,
  n/(n+d)
)
=
Q(n,n+d).
$ <threshold-block-sum-extension>

This is the threshold-extension relation expressed through the block-sum
construction.


== Interpretation

The block-sum viewpoint separates three levels of structure:

1. the fine simplex $Delta_(d-1)$ represents distributions on the individual
   $d$-grid cells;

2. the canonical onset set partitions the grid into $n$ contiguous blocks;

3. the matrix $Pi(n,d)$ sums the fine-grid weights inside each block and maps
   them to the spacing simplex $Sigma_n$.

At the barycenter $u_d$, each fine-grid cell carries equal weight $1/d$.
The weight of a block is therefore exactly its normalized length. This yields
the canonical nearest-grid spacing vector.

Thus the canonical Quplet is the block-sum image of a simplex barycenter:

#nonum[
  $
  CanonicalQuplet(n,d)
  =
  Pi(n,d)u_d.
  $
]

Its identification with the endpoint of the anchored crest dynamics remains
the content of the Quplet-realization statement.


== Transition

The block-sum construction realizes canonical Quplets as coarse-grained
uniform distributions on regular grids. It also connects the Euclidean gap
structure, the fixed-residue affine geometry, and the threshold configuration
within a single linear framework.
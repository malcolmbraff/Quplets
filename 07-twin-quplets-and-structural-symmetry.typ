#import "definitions.typ": *

= Twin Quplets and structural symmetry

The preceding section shows that complementary residues $r$ and $n-r$
determine opposite orientations of the same affine line through the regular
tuplet $t_n$. We now use this relation to define twin canonical
representatives and, conditionally, twin dynamically defined Quplets.

Throughout this section, let $n>=2$, let $0<r<n$, and let $s>=1$. Define

#nonum[
  $
  d_r
  =
  s n+r
  $
]

and

#nonum[
  $
  d_(n-r)
  =
  s n+(n-r).
  $
]

Then

#nonum[
  $
  d_r mod n=r,
  quad
  d_(n-r) mod n=n-r,
  $
]

and

#nonum[
  $
  floor(d_r/n)
  =
  floor(d_(n-r)/n)
  =
  s.
  $
]


== Definition

The pair

$
(
  CanonicalQuplet(n,d_r),
  CanonicalQuplet(n,d_(n-r))
)
$ <canonical-twin-pair>

is called a pair of *canonical twin Quplets*.

The two members have complementary residues and belong to the same quotient
band $s$.

If @Quplet-realization holds for both pairs $(n,d_r)$ and
$(n,d_(n-r))$, then

#nonum[
  $
  Q(n,d_r)
  =
  CanonicalQuplet(n,d_r)
  $
]

and

#nonum[
  $
  Q(n,d_(n-r))
  =
  CanonicalQuplet(n,d_(n-r)).
  $
]

In that case, the dynamically defined pair

#nonum[
  $
  (
    Q(n,d_r),
    Q(n,d_(n-r))
  )
  $
]

is called a pair of *dynamical twin Quplets*.


== Complementary gap structure

Both twin representatives use the same two unnormalized integer gap lengths

#nonum[
  $
  s
  quad "and" quad
  s+1.
  $
]

For the residue $r$, exactly $r$ gaps have length $s+1$, while
$n-r$ gaps have length $s$.

For the complementary residue $n-r$, exactly $n-r$ gaps have length $s+1$,
while $r$ gaps have length $s$.

Let $c_i(r)$ be the binary nearest-grid gap word defined by

#nonum[
  $
  c_i(r)
  =
  floor(
    (i+1)r/n
    +
    1/2
  )
  -
  floor(
    i r/n
    +
    1/2
  ).
  $
]

The corresponding integer gap at index $i$ is

#nonum[
  $
  s+c_i(r).
  $
]

Since

#nonum[
  $
  c_i(n-r)
  =
  1-c_i(r),
  $
]

the twin integer gap at the same index is

#nonum[
  $
  s+c_i(n-r)
  =
  s+1-c_i(r).
  $
]

Thus the twin words are *complementary at each anchored index*: every short
gap in one word corresponds to a long gap in the other, and conversely.

This is a pointwise exchange of long and short gaps. It is not, in general, a
reversal of the cyclic order.


== Affine twin relation

By @canonical-collinearity,

#nonum[
  $
  CanonicalQuplet(n,d_r)
  =
  t_n
  +
  mu(d_r)m_(n,r),
  $
]

where

#nonum[
  $
  mu(d_r)
  =
  r(n-r)/(n d_r).
  $
]

For the complementary residue, @opposite-directions gives

#nonum[
  $
  m_(n,n-r)
  =
  -m_(n,r).
  $
]

Therefore

#nonum[
  $
  CanonicalQuplet(n,d_(n-r))
  =
  t_n
  -
  mu(d_(n-r))m_(n,r),
  $
]

where

#nonum[
  $
  mu(d_(n-r))
  =
  r(n-r)/(n d_(n-r)).
  $
]

Hence the two canonical twins lie on opposite sides of $t_n$ on the same
affine line.

*Proposition (affine twin opposition).*  
Canonical twin Quplets satisfy

$
CanonicalQuplet(n,d_r)-t_n
=
-mu(d_r)/mu(d_(n-r))
(
  CanonicalQuplet(n,d_(n-r))-t_n
).
$ <affine-twin-opposition>

*Proof.*  
The two displacement vectors are

#nonum[
  $
  CanonicalQuplet(n,d_r)-t_n
  =
  mu(d_r)m_(n,r)
  $
]

and

#nonum[
  $
  CanonicalQuplet(n,d_(n-r))-t_n
  =
  -mu(d_(n-r))m_(n,r).
  $
]

Eliminating $m_(n,r)$ gives the stated identity. $square$

The twins are therefore oppositely directed from the regular tuplet, but they
are not generally equidistant from it, because

#nonum[
  $
  mu(d_r)
  !=
  mu(d_(n-r))
  $
]

whenever $d_r!=d_(n-r)$.

Accordingly, the twin relation is an affine opposition rather than an exact
metric reflection about $t_n$.


== Signed continuous representation

The two twin families can be represented using the single signed extension

$
ContinuousQuplet_mu (n,r)
=
t_n+mu m_(n,r).
$ <twin-signed-family>

The residue-$r$ member is obtained at the positive parameter

#nonum[
  $
  CanonicalQuplet(n,d_r)
  =
  ContinuousQuplet_(mu(d_r)) (n,r),
  $
]

whereas the complementary member is obtained at the negative parameter

#nonum[
  $
  CanonicalQuplet(n,d_(n-r))
  =
  ContinuousQuplet_(-mu(d_(n-r))) (n,r).
  $
]

Thus the twin pair corresponds to the two signed parameter values

#nonum[
  $
  mu
  =
  mu(d_r)
  quad "and" quad
  mu
  =
  -mu(d_(n-r)).
  $
]

The regular tuplet

#nonum[
  $
  ContinuousQuplet_0(n,r)
  =
  t_n
  $
]

lies between them.


== Example: $n=5$

Take $s=1$ and the complementary residues

#nonum[
  $
  r=2,
  quad
  n-r=3.
  $
]

Then

#nonum[
  $
  d_r
  =
  5+2
  =
  7
  $
]

and

#nonum[
  $
  d_(n-r)
  =
  5+3
  =
  8.
  $
]

The pair

#nonum[
  $
  (
    CanonicalQuplet(5,7),
    CanonicalQuplet(5,8)
  )
  $
]

is therefore a canonical twin pair belonging to the quotient band $s=1$ and
the order class

#nonum[
  $
  {
    2,
    3
  }.
  $
]

The nearest-grid indices for $(5,7)$ are

#nonum[
  $
  (
    0,
    1,
    3,
    4,
    6
  ),
  $
]

so the integer circular gap word is

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

Therefore

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

The nearest-grid indices for $(5,8)$ are

#nonum[
  $
  (
    0,
    2,
    3,
    5,
    6
  ),
  $
]

so the integer circular gap word is

#nonum[
  $
  (
    2,
    1,
    2,
    1,
    2
  ).
  $
]

Therefore

#nonum[
  $
  CanonicalQuplet(5,8)
  =
  1/8
  (
    2,
    1,
    2,
    1,
    2
  ).
  $
]

At every anchored index, the integer gap lengths $1$ and $2$ are exchanged.

The contrast parameters are

#nonum[
  $
  mu(7)
  =
  6/35
  $
]

and

#nonum[
  $
  mu(8)
  =
  3/20.
  $
]

Hence

#nonum[
  $
  CanonicalQuplet(5,7)
  =
  t_5
  +
  6/35 m_(5,2),
  $
]

whereas

#nonum[
  $
  CanonicalQuplet(5,8)
  =
  t_5
  -
  3/20 m_(5,2).
  $
]

The two points lie on opposite sides of $t_5$, but their distances from
$t_5$ are different.


== Relation to the crest dynamics

The canonical twin relation is combinatorial and affine. It follows from the
nearest-grid construction and does not require a claim about the crest
trajectories.

Its realization by the dynamically defined Quplets remains conditional on
@Quplet-realization.

Moreover, the twin relation should not be described as symmetry about a
single balanced derivative parameter. The two frequency pairs have distinct
balanced parameters:

#nonum[
  $
  k_c(n,d_r)
  =
  n/(n+d_r)
  $
]

and

#nonum[
  $
  k_c(n,d_(n-r))
  =
  n/(n+d_(n-r)).
  $
]

The affine twin symmetry concerns the endpoint spacing vectors in the simplex,
not a reflection of the modulation parameter $k$.


== Structural interpretation

For fixed $n$ and quotient $s$, complementary residues produce two canonical
spacing vectors with the following properties:

- they use the same two unnormalized gap lengths $s$ and $s+1$;

- their anchored binary gap words are pointwise complementary;

- their morphing directions are opposite;

- their spacing vectors lie on opposite sides of the regular tuplet along the
  same affine line;

- their distances from the regular tuplet are controlled separately by
  $mu(d_r)$ and $mu(d_(n-r))$.

Thus the twin relation combines a combinatorial complementation of the gap
word with an affine opposition in the spacing simplex.

Under @Quplet-realization, this same structure is inherited by the
dynamically defined Quplets.


== Transition

Twin canonical representatives organize complementary residue classes into
oppositely oriented pairs on common affine lines through the regular tuplet.
The next section may investigate whether further relations between the
corresponding crest trajectories can be proved, rather than inferred from
their endpoint combinatorics alone.
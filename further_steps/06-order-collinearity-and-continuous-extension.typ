#import "../definitions.typ": *


= Order, collinearity, and continuous extension of Quplets

The preceding section constructs a distinguished anchored representative of
the Euclidean class $E(n,d)$: the canonical nearest-grid spacing vector

#nonum[
  $
  CanonicalQuplet(n,d).
  $
]

By @Quplet-realization, this canonical representative is precisely the
dynamically defined Quplet:

#nonum[
  $
  Q(n,d)
  =
  CanonicalQuplet(n,d).
  $
]

The purpose of this section is to describe how the canonical representatives
are organized when $n$ is fixed and $d$ varies. The relevant arithmetic datum
is the residue

#nonum[
  $
  r = d mod n.
  $
]

For a fixed residue, the positions of the long and short gaps remain unchanged,
while their numerical contrast decreases as $d$ increases. This places the
corresponding canonical representatives on an affine line through the regular
tuplet. By @Quplet-realization, the dynamically defined Quplets inherit the
same affine organization.

Throughout this section, let $1 < n < d$ be coprime integers, and assume that $n$
is odd.
Write

#nonum[
  $
  d = s n + r,
  quad
  0 < r < n.
  $
]


== Residue and order class

The Euclidean spacing class $E(n,d)$ contains

#nonum[
  $
  r
  $
]

long gaps of length

#nonum[
  $
  (s + 1) / d
  $
]

and

#nonum[
  $
  n - r
  $
]

short gaps of length

#nonum[
  $
  s / d.
  $
]

Thus the residue $r = d mod n$ determines the number of long gaps.

The residues $r$ and $n - r$ exchange the roles of long and short gaps. For
fixed $n$, declare two admissible residues $r$ and $r'$ equivalent exactly
when $r' = r$ or $r' = n - r$.

The *order class* associated with $d$ is the orbit of $r = d mod n$ under the
involution $r mapsto n - r$:

$
"ord"(n,d)
=
{
  r,
  n - r
}.
$ <order-class>

Because $n$ is odd, the two residues are distinct. Equivalently, the order
class may be represented by

$
rho(n,d)
=
min(r,n - r).
$ <order-index>

The quantity

$
Delta(n,d)
=
abs(n - 2r)
$ <alternation-index>

is the absolute difference between the numbers of short and long gaps. Small
values mean that the two counts are nearly equal; this count-imbalance index
does not by itself determine the cyclic alternation pattern.

The order class records only the numbers of long and short gaps. Their actual
cyclic arrangement is supplied by the anchored nearest-grid representative.


== The regular tuplet and the simplex

Let

$
Sigma_n
=
{
  q in RR^n :
  q_j >= 0,
  sum_(j=0)^(n-1) q_j = 1
}.
$ <spacing-simplex>

This is the closed simplex of normalized spacing vectors.

Its barycenter is the regular $n$-tuplet

$
t_n
=
1 / n
(
  1,
  dots,
  1
).
$ <simplex-barycenter>

Fix a residue $r$. Let

#nonum[
  $
  L_(n,r)
  subset
  {
    0,
    dots,
    n-1
  }
  $
]

be the set of indices occupied by the long gaps in the canonical nearest-grid
spacing vector, and let

#nonum[
  $
  S_(n,r)
  =
  {
    0,
    dots,
    n-1
  }
  without
  L_(n,r)
  $
]

be its complement.

Then

#nonum[
  $
  abs(L_(n,r))=r,
  quad
  abs(S_(n,r))=n - r.
  $
]

For the nearest-grid construction, these index sets depend only on $n$ and
$r$, not on the quotient $s$. Extend the rounded-site formula to $i=n$ by
using the same expression as in @nearest-endpoint. Then

#nonum[
  $
  a_i
  =
  floor(i(s n + r) / n + 1 / 2)
  =
  i s
  +
  floor((i r) / n + 1 / 2),
  quad
  i = 0,dots,n,
  $
]

and $a_n = d = a_0 + d$, so this is the cyclic-lift convention. Define

$
c_i (r)
=
floor(((i+1)r) / n + 1 / 2)
-
floor((i r) / n + 1 / 2),
quad
i = 0,dots,n - 1.
$ <residue-binary-word>

Because $0<r/n<1$, every $c_i (r)$ belongs to ${0,1}$. For every
$i = 0,dots,n - 1$, including the closing gap at $i=n-1$,

#nonum[
  $
  g_i
  =
  a_(i+1) - a_i
  =
  s + c_i (r).
  $
]

Hence

#nonum[
  $
  L_(n,r) = {i : c_i (r) = 1},
  quad
  S_(n,r) = {i : c_i (r) = 0},
  $
]

which proves that the long- and short-gap index sets depend only on $n$ and
$r$.


== The morphing direction

Define the vector

#nonum[
  $
  m_(n,r)
  =
  (
    m_0 ,
    dots,
    m_(n-1)
  )
  $
]

by

#nonum[
  $
  m_j
  =
  1 / r
  quad "for" quad
  j in L_(n,r),
  $
]

and

#nonum[
  $
  m_j
  =
  -1 / (n - r)
  quad "for" quad
  j in S_(n,r).
  $
]

Its coordinates sum to zero:

#nonum[
  $
  sum_(j=0)^(n-1) m_j
  =
  r / r
  -
  (n - r) / (n - r)
  =
  0.
  $
]

Consequently,

#nonum[
  $
  t_n + mu m_(n,r)
  $
]

has coordinate sum one for every real $mu$.

The vector $m_(n,r)$ increases all long-gap coordinates equally and decreases
all short-gap coordinates equally. It therefore represents the oriented
contrast direction associated with the residue $r$.


== Collinearity for a fixed residue

We first state the affine formula for the canonical nearest-grid spacing
vector, then transfer it to the dynamically defined Quplet by
@Quplet-realization.

#theorem(name: "Fixed-residue collinearity")[
  Under the standing hypotheses, write
  #nonum[
    $
    d = s n + r,
    quad
    0 < r < n.
    $
  ]
  Then
  $
  CanonicalQuplet(n,d)
  =
  t_n
  +
  mu(d) m_(n,r),
  quad
  mu(d)
  =
  r(n - r) / (n d).
  $ <canonical-collinearity>
] <fixed-residue-collinearity>

#proof[
  For $j in L_(n,r)$, the corresponding gap has normalized length
  $(s+1) / d$. Therefore
  #nonum[
    $
    (s+1) / d - 1 / n
    =
    (n - r) / (n d)
    =
    mu(d) / r.
    $
  ]
  For $j in S_(n,r)$, the corresponding gap has normalized length $s / d$.
  Therefore
  #nonum[
    $
    s / d - 1 / n
    =
    -r / (n d)
    =
    -mu(d) / (n - r).
    $
  ]
  These are exactly the coordinates of $mu(d) m_(n,r)$.
]

#corollary(name: "Dynamic fixed-residue collinearity")[
  Under the same hypotheses,
  $
  Q(n,d)
  =
  CanonicalQuplet(n,d)
  =
  t_n
  +
  mu(d) m_(n,r).
  $ <Quplet-collinearity>

  Thus, for fixed $n$ and $r$, both the canonical representatives and the
  dynamically defined Quplets $Q(n,s n+r)$ lie on the same affine line through
  $t_n$.
] <dynamic-fixed-residue-collinearity>

#proof[
  Combine @Quplet-realization with @fixed-residue-collinearity.
]

== Variation of the quotient

Let

#nonum[
  $
  d_i = d + i n,
  quad
  i = 0,1,2,dots.
  $
]

Then

#nonum[
  $
  d_i mod n = r,
  $
]

so the long-index set $L_(n,r)$ and the direction $m_(n,r)$ remain fixed.

By @canonical-collinearity,

$
CanonicalQuplet(n,d+i n)
=
t_n
+
(r(n - r)) / (n(d + i n))
m_(n,r).
$ <canonical-fixed-residue-family>

The contrast parameter therefore satisfies

#nonum[
  $
  mu(d+i n)
  =
  (r(n - r)) / (n(d + i n)),
  $
]

and tends to zero as $i$ tends to infinity.

Consequently,

$
lim_(i arrow.r infinity)
CanonicalQuplet(n,d+i n)
=
t_n.
$ <canonical-fixed-residue-limit>

By @Quplet-realization, the same identities hold for the dynamically defined
Quplets:

#nonum[
  $
  Q(n,d+i n)
  =
  CanonicalQuplet(n,d+i n),
  $
]

and therefore

#nonum[
  $
  lim_(i arrow.r infinity)
  Q(n,d+i n)
  =
  t_n.
  $
]

Thus increasing the quotient $s$ preserves the cyclic long–short arrangement
while reducing its contrast. The canonical representatives approach the
regular tuplet along a straight line in the simplex. By @Quplet-realization,
the dynamically defined Quplets follow the same family.


== Complementary residues

The residues $r$ and $n - r$ exchange long and short gaps. We now compare
the binary words $c_i (r)$ from @residue-binary-word.

Because $n$ is odd and $gcd(n,r) = 1$, none of the numbers $(i r) / n$ is a
half-integer. Hence

#nonum[
  $
  floor(1 / 2 - x)
  =
  -floor(x + 1 / 2)
  $
]

for every $x=(i r) / n$ occurring here. Therefore

#nonum[
  $
  c_i (n - r)
  =
  1
  +
  floor(1 / 2 - ((i+1)r) / n)
  -
  floor(1 / 2 - (i r) / n)
  =
  1 - c_i (r).
  $
]

Consequently,

#nonum[
  $
  L_(n,n - r)
  =
  S_(n,r),
  quad
  S_(n,n - r)
  =
  L_(n,r),
  $
]

and therefore

$
m_(n,n - r)
=
-m_(n,r).
$ <opposite-directions>

#corollary(name: "Complementary-residue collinearity")[
  The canonical representatives associated with the residues $r$ and $n - r$
  lie on the same affine line through $t_n$, with opposite orientations. More
  precisely,
  #nonum[
    $
    CanonicalQuplet(n,s n+r)
    =
    t_n
    +
    mu(s n+r) m_(n,r),
    $
  ]
  while
  #nonum[
    $
    CanonicalQuplet(n,s n+n - r)
    =
    t_n
    -
    mu(s n+n - r) m_(n,r).
    $
  ]
  The corresponding dynamically defined Quplets satisfy the same identities.
] <complementary-residue-collinearity>

#proof[
  Apply @fixed-residue-collinearity to the two residues and use
  @opposite-directions. The Quplet identities then follow from
  @Quplet-realization.
]

The residue determines an oriented half-line from $t_n$, while the associated
order class determines the complete unoriented line.

== Continuous contrast extension

Fix $n$, $r$, and the anchored long-index set $L_(n,r)$. For a real contrast
parameter $mu$, define

$
ContinuousQuplet_mu (n,r)
=
t_n
+
mu m_(n,r).
$ <continuous-canonical-Quplet>

Its long coordinates are

#nonum[
  $
  1 / n + mu / r,
  $
]

and its short coordinates are

#nonum[
  $
  1 / n - mu / (n - r).
  $
]

For $ContinuousQuplet_mu (n,r)$ to remain in the closed simplex, these
coordinates must lie in $[0,1]$.

For $mu>=0$, the nonnegativity of the short coordinates gives

#nonum[
  $
  mu
  <=
  (n - r) / n,
  $
]

while the upper bound on the long coordinates gives

#nonum[
  $
  mu
  <=
  (r(n - 1)) / n.
  $
]

Define

$
mu_max (n,r)
=
min(
  (n - r) / n,
  (r(n - 1)) / n
).
$ <maximum-contrast>

Then

#nonum[
  $
  ContinuousQuplet_mu (n,r) in Sigma_n
  $
]

for every

#nonum[
  $
  0 <= mu <= mu_max (n,r).
  $
]

If the open simplex is required, the upper inequality is strict.

The family

#nonum[
  $
  {
    ContinuousQuplet_mu (n,r) :
    0 <= mu <= mu_max (n,r)
  }
  $
]

is an affine line segment beginning at the regular tuplet

#nonum[
  $
  ContinuousQuplet_0 (n,r)
  =
  t_n.
  $
]

For the discrete canonical family $d = s n + r$,

#nonum[
  $
  mu(d)
  =
  (r(n - r)) / (n d).
  $
]

Therefore

$
ContinuousQuplet_(mu(d)) (n,r)
=
CanonicalQuplet(n,d).
$ <canonical-discrete-continuous-identification>

By @Quplet-realization,

#nonum[
  $
  Q(n,d)
  =
  CanonicalQuplet(n,d)
  =
  ContinuousQuplet_(mu(d)) (n,r).
  $
]

Allowing arbitrary real values of $mu$ within the admissible interval fills
the gaps between the discrete canonical points. When $mu$ is irrational, the
coordinates of $ContinuousQuplet_mu (n,r)$ are generally irrational. These
vectors provide a continuous affine extension of the discrete Euclidean
family.

The parameter $mu$ used here measures spacing contrast. It is distinct from
the auxiliary modulation coordinate introduced in the crest-trajectory
section.


== Twin extension across the regular tuplet

Because of @opposite-directions,

#nonum[
  $
  ContinuousQuplet_mu (n,n - r)
  =
  t_n
  +
  mu m_(n,n - r)
  =
  t_n
  -
  mu m_(n,r).
  $
]

It is therefore natural to extend the domain of the contrast parameter to
negative values in the fixed direction $m_(n,r)$:

$
ContinuousQuplet_mu (n,r)
=
t_n + mu m_(n,r).
$ <signed-continuous-Quplet>

Positive values of $mu$ correspond to the orientation associated with the
residue $r$, while negative values correspond to the orientation associated
with the complementary residue $n - r$.

The admissible signed interval is

#nonum[
  $
  -mu_max (n,n - r)
  <=
  mu
  <=
  mu_max (n,r).
  $
]

At $mu=0$, the two complementary families meet at the regular tuplet $t_n$.

Thus complementary residue classes form opposite discrete families on a
common affine line, connected by a single signed contrast parameter.


== Example: $n=7$ and $r=3$

Let

#nonum[
  $
  d=7s+3.
  $
]

The nearest-grid gap word has three long positions and four short positions.
Let $L_(7,3)$ denote the anchored set of long-gap indices and
$S_(7,3)$ its complement.

The morphing direction is determined by

#nonum[
  $
  m_j
  =
  1 / 3
  quad "for" quad
  j in L_(7,3),
  $
]

and

#nonum[
  $
  m_j
  =
  -1 / 4
  quad "for" quad
  j in S_(7,3).
  $
]

The contrast parameter is

$
mu(d)
=
12 / (7 d).
$ <example-contrast>

For $d=10$, we have $s=1$ and

#nonum[
  $
  mu(10)
  =
  12 / 70.
  $
]

The long coordinates are

#nonum[
  $
  2 / 10,
  $
]

and the short coordinates are

#nonum[
  $
  1 / 10.
  $
]

For $d=17$, we have $s=2$ and

#nonum[
  $
  mu(17)
  =
  12 / (7 dot 17).
  $
]

The long coordinates are

#nonum[
  $
  3 / 17,
  $
]

and the short coordinates are

#nonum[
  $
  2 / 17.
  $
]

Both canonical configurations have the same anchored long-index set and lie
on the same line through $t_7$. The second lies closer to the regular tuplet
because

#nonum[
  $
  mu(17) < mu(10).
  $
]

The complementary residue $4$ determines the same line with the opposite
orientation.


== Interpretation

For fixed $n$, the organization of the canonical constrained Euclidean
representatives has three levels:

1. the residue $r$ determines an oriented contrast direction
   $m_(n,r)$;

2. the order class ${r,n - r}$ determines the corresponding unoriented line
   through the regular tuplet;

3. the quotient $s$ determines the discrete distance
   $mu(d)=(r(n - r)) / (n d)$ from the regular tuplet.

The canonical family is therefore not an arbitrary collection of points in
the simplex. It consists of discrete collinear families whose contrast
parameters decrease reciprocally as the quotient increases.

By @Quplet-realization, the dynamically defined Quplets coincide with these
canonical points and inherit the same affine organization.

The continuous vectors $ContinuousQuplet_mu (n,r)$ extend the discrete
canonical families to full line segments and provide a controlled
interpolation between regular, Euclidean, and generally irrational spacing
vectors.


== Transition

The residue and order structures organize the canonical Euclidean
representatives into affine families in the spacing simplex. The signed
continuous extension joins each pair of complementary residue families across
the regular tuplet and combines the proved affine geometry with the dynamical
realization established by anchored crest continuation.
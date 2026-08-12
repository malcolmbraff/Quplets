#let nonum(eq) = math.equation(block: true, numbering: none, eq)
#let Huplet = math.italic("Huplet")
#let Quplet = math.italic("Quplet")
#let CanonicalQuplet = math.sans("Q")
#let ContinuousQuplet = math.sans("Q")


= Harmonic morphing within an order class

The preceding sections show that the affine organization of canonical Quplets
is controlled by the residue of $d$ modulo $n$.

For fixed $n$, a residue $r$ determines an oriented morphing direction
$m_(n,r)$, while the complementary pair

#nonum[
  $
  {
    r,
    n-r
  }
  $
]

determines the corresponding unoriented affine line through the regular
tuplet $t_n$.

This section summarizes that structure and interprets variation along the line
as harmonic morphing.


== Fixed-residue families

Let

#nonum[
  $
  d=s n+r,
  quad
  0<r<n.
  $
]

By @canonical-collinearity,

$
CanonicalQuplet(n,d)
=
t_n
+
mu(d)m_(n,r),
quad
mu(d)
=
r(n-r)/(n d).
$ <harmonic-morphing-formula>

Thus all canonical representatives with fixed $n$ and fixed residue $r$ lie
on the same oriented half-line from $t_n$.

As the quotient $s$ increases, the combinatorial arrangement of long and
short gaps remains unchanged, while

#nonum[
  $
  mu(s n+r)
  =
  r(n-r)/(n(s n+r))
  $
]

decreases monotonically to zero.

Consequently,

#nonum[
  $
  lim_(s arrow.r infinity)
  CanonicalQuplet(n,s n+r)
  =
  t_n.
  $
]

The quotient therefore controls the strength of the rhythmic contrast, while
the residue controls its direction.


== Order classes

The order class associated with $r$ is

#nonum[
  $
  {
    r,
    n-r
  }.
  $
]

By @opposite-directions,

#nonum[
  $
  m_(n,n-r)
  =
  -m_(n,r).
  $
]

Hence the two complementary residues determine opposite orientations of the
same affine line through $t_n$.

More precisely,

#nonum[
  $
  CanonicalQuplet(n,s n+r)
  =
  t_n
  +
  mu(s n+r)m_(n,r),
  $
]

whereas

#nonum[
  $
  CanonicalQuplet(n,s n+n-r)
  =
  t_n
  -
  mu(s n+n-r)m_(n,r).
  $
]

Thus an order class determines an unoriented line, while the choice of residue
determines one of its two orientations.

The two members are generally not equidistant from $t_n$, because their
denominators are different.


== Continuous harmonic morphing

The signed continuous extension introduced in the preceding section is

$
ContinuousQuplet_mu (n,r)
=
t_n
+
mu m_(n,r).
$ <harmonic-continuous-family>

For

#nonum[
  $
  -mu_max(n,n-r)
  <=
  mu
  <=
  mu_max(n,r),
  $
]

this vector belongs to the spacing simplex $Sigma_n$.

Positive values of $mu$ describe the orientation associated with the residue
$r$, while negative values describe the orientation associated with the
complementary residue $n-r$.

At

#nonum[
  $
  mu=0,
  $
]

the family passes through the regular tuplet:

#nonum[
  $
  ContinuousQuplet_0(n,r)
  =
  t_n.
  $
]

The discrete canonical representatives occur at the parameter values

#nonum[
  $
  mu
  =
  mu(s n+r)
  $
]

on the positive side and

#nonum[
  $
  mu
  =
  -mu(s n+n-r)
  $
]

on the negative side.

Explicitly,

#nonum[
  $
  CanonicalQuplet(n,s n+r)
  =
  ContinuousQuplet_(mu(s n+r))(n,r),
  $
]

and

#nonum[
  $
  CanonicalQuplet(n,s n+n-r)
  =
  ContinuousQuplet_(-mu(s n+n-r))(n,r).
  $
]

The continuous family therefore interpolates through the regular tuplet
between the two complementary residue families.


== Example: $n=5$

Consider the order class

#nonum[
  $
  {
    2,
    3
  }.
  $
]

For the residue $r=2$, the canonical gap word has long-gap indices

#nonum[
  $
  L_(5,2)
  =
  {
    1,
    3
  },
  $
]

and short-gap indices

#nonum[
  $
  S_(5,2)
  =
  {
    0,
    2,
    4
  }.
  $
]

The morphing direction is therefore

#nonum[
  $
  m_(5,2)
  =
  (
    -1/3,
    1/2,
    -1/3,
    1/2,
    -1/3
  ).
  $
]

For $d=7$,

#nonum[
  $
  mu(7)
  =
  6/35,
  $
]

and hence

#nonum[
  $
  CanonicalQuplet(5,7)
  =
  t_5
  +
  6/35 m_(5,2)
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

For the complementary residue $3$ and $d=8$,

#nonum[
  $
  mu(8)
  =
  3/20,
  $
]

so

#nonum[
  $
  CanonicalQuplet(5,8)
  =
  t_5
  -
  3/20 m_(5,2)
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

Thus the two canonical twins lie on opposite sides of $t_5$ along the same
affine line, with different contrast magnitudes.


== Dynamical realization

The affine structure described above is proved for the canonical nearest-grid
representatives.

If @Quplet-realization holds, then

#nonum[
  $
  Q(n,d)
  =
  CanonicalQuplet(n,d),
  $
]

and the dynamically defined Quplets inherit the same harmonic morphing
structure.

In particular,

#nonum[
  $
  Q(n,s n+r)
  =
  t_n
  +
  mu(s n+r)m_(n,r),
  $
]

and

#nonum[
  $
  Q(n,s n+n-r)
  =
  t_n
  -
  mu(s n+n-r)m_(n,r).
  $
]

These statements remain conditional on the endpoint-selection conjecture.


== Interpretation

For fixed $n$, harmonic morphing separates into three independent pieces:

1. the order class ${r,n-r}$ selects an unoriented affine line through $t_n$;

2. the residue selects an orientation of that line;

3. the quotient $s$ determines the discrete contrast magnitude
   $mu(d)=r(n-r)/(n d)$.

The continuous parameter $mu$ fills the line segment between and beyond the
discrete canonical representatives, subject to the positivity constraints of
the spacing simplex.

The resulting structure is affine: it consists of line segments through the
regular tuplet, rather than a collection of arbitrary points in the spacing
simplex.


== Transition

The affine description developed in the preceding sections completes the
combinatorial and geometric organization of the canonical Quplets. The
conclusion summarizes the analytic, arithmetic, and dynamical results of the
paper and separates the proved statements from the remaining conjectures.
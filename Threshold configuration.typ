#set math.equation(numbering: "(1)")
#let nonum(eq) = math.equation(block: true, numbering: none, eq)

#let Huplet = math.italic("Huplet")

= The threshold configuration

Let $n,d in NN$ satisfy $1 < n < d$, and let $k in [0,1]$. We consider the
interference function

$
F_k (x)
=
k cos(2 pi d x)
+
(1-k) cos(2 pi n x),
$ <Fk>

where $x in RR \/ ZZ$ denotes phase on the unit cycle.

The first two derivatives with respect to $x$ are

$
G_k (x)
=
partial_x F_k (x)
=
-2 pi
(
  k d sin(2 pi d x)
  +
  (1-k)n sin(2 pi n x)
),
$ <G>

and

$
H_k (x)
=
partial_x^2 F_k (x)
=
-(2 pi)^2
(
  k d^2 cos(2 pi d x)
  +
  (1-k)n^2 cos(2 pi n x)
).
$ <H>

A *stationary point* of $F_k$ is a phase $x in RR \/ ZZ$ satisfying
$G_k (x)=0$. It is a *crest* when, in addition, $H_k (x)<0$, and a trough
when $H_k (x)>0$. A stationary point satisfying $H_k (x)=0$ is degenerate.

At $k=0$, the function has exactly $n$ crests, located at the regular
$n$-grid ${i/n : i=0,dots,n-1}$. Each of these crests determines a local
real-analytic branch near $k=0$. We call these branches the *anchored crest
branches*. They must be distinguished from the complete set of crests of
$F_k$, since additional stationary points may appear as $k$ varies.

== The balanced derivative parameter

Writing $theta=2 pi x$, the stationarity condition $G_k (x)=0$ becomes

$
k d sin(d theta)
+
(1-k)n sin(n theta)
=
0.
$ <stationarity>

The two terms have equal coefficients when

$
k d=(1-k)n.
$

This determines the distinguished parameter

$
k_c=frac(n,n+d).
$ <kc>

Indeed,

#nonum[
  k_c d
  =
  (1-k_c)n
  =
  frac(n d,n+d).
]

At $k=k_c$, Equation @stationarity reduces to

#nonum[
  sin(d theta)+sin(n theta)=0.
]

Using the identity

#nonum[
  sin(A)+sin(B)
  =
  2 sin(frac(A+B,2)) cos(frac(A-B,2)),
]

we obtain the factorization

$
sin(d theta)+sin(n theta)
=
2
sin(frac((d+n)theta,2))
cos(frac((d-n)theta,2)).
$ <threshold-factor>

The stationary points at $k=k_c$ therefore belong to two families:

#nonum[
  sin(frac((d+n)theta,2))=0
  quad "or" quad
  cos(frac((d-n)theta,2))=0.
]

=== The $(n+d)$-grid family

The first condition gives

#nonum[
  theta=frac(2 pi m,n+d),
  quad
  m in ZZ,
]

and hence

#nonum[
  x=frac(m,n+d)
  quad (mod 1).
]

Thus this family lies on the rational $(n+d)$-grid.

At such a point,

#nonum[
  n theta equiv -d theta quad (mod 2 pi),
]

so that $cos(n theta)=cos(d theta)$. Substituting into Equation @H gives

#nonum[
  $
  H_(k_c) (x)
  =
  -(2 pi)^2 n d cos(d theta).
  $
]

Consequently, a point of the $(n+d)$-grid family is a crest precisely when

$
cos(d theta)>0.
$ <grid-crest-test>

It is a trough when $cos(d theta)<0$, and degenerate when
$cos(d theta)=0$.

=== The complementary stationary family

The second condition gives

#nonum[
  (d-n)theta=(2 ell+1)pi,
  quad
  ell in ZZ.
]

Along this family,

#nonum[
  cos(n theta)=-cos(d theta),
]

and therefore

#nonum[
  $
  H_(k_c) (x)
  =
  -(2 pi)^2
  frac(n d(d-n),n+d)
  cos(d theta).
  $
]

These stationary points are therefore not uniformly troughs. They are crests
when $cos(d theta)>0$, troughs when $cos(d theta)<0$, and degenerate when
$cos(d theta)=0$.

The factorization thus describes the complete stationary set at the balanced
parameter, but it does not by itself determine which stationary points lie on
the $n$ anchored crest branches issued from $k=0$. Identifying that anchored
subset requires an analysis of the continuation of the individual branches.
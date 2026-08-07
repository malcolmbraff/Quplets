#import "../definitions.typ": *

= Fixed-parameter algebraic characterization

#emph[Follow-up material extracted from the main article. This note isolates
the algebraic characterization of stationary phases at rational modulation
parameters.]

Let

$
F_k (x)
=
k cos(2 pi d x)
+
(1-k) cos(2 pi n x),
quad
theta=2 pi x.
$

#remark(
  numbering: none,
  name: "Fixed-parameter algebraic form",
)[
  Let $c=cos(theta)$, and let $T_m$ and $U_m$ denote the Chebyshev
  polynomials of the first and second kind. Apart from the common
  stationary phases $theta in pi ZZ$, the stationarity condition is
  equivalent to

  #nonum[
    $
    k d U_(d-1) (c)
    +
    (1-k) n U_(n-1) (c)
    =
    0.
    $
  ]

  In particular, if $k=p/q$ with $0<p<q$, then

  #nonum[
    $
    p d U_(d-1) (c)
    +
    (q-p) n U_(n-1) (c)
    =
    0.
    $
  ]

  Let $c_i$ be the root selected by continuation from the branch
  anchored at $i/n$, and let $theta_i$ be its branch-selected phase,
  so that $cos(theta_i )=c_i$. Then

  #nonum[
    $
    X_i (p/q)= theta_i / (2 pi),
    quad
    A_i (p/q)
    =
    (p T_d (c_i ) + (q-p)T_n (c_i )) / q.
    $
  ]

  Consequently, at every rational modulation parameter, $c_i$ and
  $A_i$ are algebraic. The normalized position $X_i$ is exactly
  defined by the branch-selected angle, but need not itself be an
  algebraic number.
]


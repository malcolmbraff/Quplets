#import "definitions.typ": *

= Anchored crest continuation and nearest-grid endpoints <section2>

== Anchored crest branches

Throughout this section, let $1<n<d$ be coprime positive integers with $n$
odd, let $k in [0,1]$ be real, and let $x in RR \/ ZZ$ denote phase on the
unit cycle. Define

$
F_k (x)
=
k cos(2 pi d x)
+
(1-k) cos(2 pi n x).
$ <Fk>

Its first two derivatives with respect to $x$ are

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

#nonum[
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
  $
]

A stationary point of $F_k$ satisfies $G_k (x)=0$. It is a crest when
$H_k (x)<0$, a trough when $H_k (x)>0$, and degenerate when $H_k (x)=0$.

At $k=0$,

#nonum[
  $
  F_0 (x)=cos(2 pi n x),
  $
]

so the initial crests are the regular-grid points

#nonum[
  $
  {i/n : i=0,dots,n-1}.
  $
]

For each $i in {0,dots,n-1}$, the *anchored crest branch* issued from $i/n$
is the maximal real-analytic branch

#nonum[
  $
  X_i : I_i -> RR \/ ZZ
  $
]

satisfying

- *anchor:* $X_i (0)=i/n$;
- *stationarity:* $G_k (X_i (k))=0$;
- *crest condition:* $H_k (X_i (k))<0$.

Here $I_i subset [0,1]$ is an interval containing $0$. Since

#nonum[
  $
  H_0 (i/n)=-(2 pi)^2 n^2<0,
  $
]

the implicit-function theorem gives a unique branch near $k=0$. Such a branch
can fail to continue in graph form only by reaching a degenerate stationary
point, where

#nonum[
  $
  G_k (X_i (k))=H_k (X_i (k))=0.
  $
]

The branch issued from $0$ is fixed throughout the deformation. Indeed,
$G_k (0)=0$ and

#nonum[
  $
  H_k (0)
  =
  -(2 pi)^2
  (
    k d^2+(1-k)n^2
  )
  <0
  $
]

for every $k in [0,1]$. Hence

#nonum[
  $
  X_0 (k)=0.
  $
]

Local continuation does not yet exclude a later degeneracy, a collision with
another anchored branch, or a failure to reach $k=1$. The next subsection
rules out all three possibilities by constructing each nonconstant branch
inside a short nearest-grid corridor.

== Anchored continuation by nearest-grid corridors

The proof has two ingredients. The cotangent lemma supplies the sign needed
for both negative curvature and monotonicity. The proposition then constructs
each corridor directly in the phase coordinate $x$, parametrizes its stationary
set, and inverts that parametrization over the full interval $0<=k<=1$.

#lemma(name: "Cotangent positivity")[
  Let $lambda>1$ and let $a,b in (0,pi)$ satisfy $lambda a+b<pi$. Then
  #nonum[
    $
    cot(a)+lambda cot(b)>0.
    $
  ]
] <cotangent-positivity>

#proof[
  We split according to the sign of $cot(b)$.



  *Case 1: $b<=pi/2$.* Because $lambda>1$ and $a>0$, the hypothesis
$lambda a+b<pi$ implies $a+b<pi$. Hence
#nonum[
  $
  cot(a)+cot(b)
  =
  sin(a+b)/(sin(a)sin(b))
  >
  0.
  $
]
Now $b<=pi/2$ gives $cot(b)>=0$, and therefore
#nonum[
  $
  cot(a)+lambda cot(b)
  =
  (cot(a)+cot(b))
  +
  (lambda-1)cot(b)
  >
  0.
  $
]

  *Case 2: $b>pi/2$.* Put $c=pi-b$. Then $0<c<pi/2$, and the hypothesis gives
  $a<c/lambda$. Since $cot$ is strictly decreasing,
  #nonum[
    $
    cot(a)>cot(c/lambda).
    $
  ]
  The function $tan(u)/u$ is strictly increasing on $(0,pi/2)$, because
  #nonum[
    $
    (tan(u)/u)'
    =
    (u-sin(u)cos(u))/(u^2 cos^2(u))
    >0.
    $
  ]
  Hence
  #nonum[
    $
    tan(c/lambda)<tan(c)/lambda,
    $
  ]
  and therefore
  #nonum[
    $
    cot(c/lambda)>lambda cot(c)=-lambda cot(b).
    $
  ]
  Combining the last two inequalities gives
  $cot(a)>-lambda cot(b)$, as required.
]

#proposition(name: "Global anchored continuation")[#footnote[This proposition concerns only the anchored components of the stationary set;
  additional unanchored stationary points may bifurcate elsewhere.]
  Let $1<n<d$ be coprime integers, with $n$ odd. For every
  $i in {0,dots,n-1}$, the local anchored crest branch issued from $i/n$
  extends uniquely to a map
  #nonum[
    $
    X_i : [0,1] -> RR \/ ZZ.
    $
  ]

  The extension is real analytic on $(0,1)$, with real-analytic one-sided
  extensions at $0$ and $1$, and remains a nondegenerate local maximum of
  $F_k$ for every $k in [0,1]$.

  The branch $X_0$ is constant. Every other branch has a strictly monotone
  lift, the $n$ branches remain distinct and preserve their cyclic order, and
  #nonum[
    $
    X_i (1)=m_i/d,
    quad
    m_i=floor((d i)/n+1/2).
    $
  ]


] <anchored-continuation>


/*
#proposition(name: "Global anchored continuation")[
  Let $1<n<d$ be coprime integers, with $n$ odd. For every
  $i in {0,dots,n-1}$, the crest of $F_0$ at $i/n$ continues uniquely to a
  branch
  #nonum[
    $
    X_i : [0,1] -> RR \/ ZZ.
    $
  ]

  Each branch is real analytic on $[0,1]$, one-sidedly at the endpoints, and
  satisfies
  #nonum[
    $
    G_k (X_i (k))=0
    quad "and" quad
    H_k (X_i (k))<0.
    $
  ]

  The branch $X_0$ is constant. Every other branch has a strictly monotone
  lift, the $n$ branches remain distinct and preserve their cyclic order, and
  #nonum[
    $
    X_i (1)=m_i/d,
    quad
    m_i=floor((d i)/n+1/2).
    $
  ]

  This statement concerns only the anchored components of the stationary set;
  additional unanchored stationary points may bifurcate elsewhere.
] <anchored-continuation>
*/

#proof[
  The case $i=0$ was established above, so fix $i != 0$. The proof has six
  steps: choose the unique nearest endpoint, parametrize the short corridor,
  prove that every corridor stationary point is a nondegenerate crest, prove
  that the stationary parameter increases from $0$ to $1$, obtain the analytic
  branch by inversion, and finally use disjoint corridors to preserve cyclic
  order.

  *Step 1: Nearest endpoint and corridor.* Define
  #nonum[
    $
    m_i=floor((d i)/n+1/2),
    quad
    x_i^(0)=i/n,
    quad
    x_i^(1)=m_i/d.
    $
  ]
  A rounding tie would give
  #nonum[
    $
    (d i)/n=q+1/2
    $
  ]
  for some $q in ZZ$. Equivalently, $2 d i=n(2q+1)$. Coprimality implies
  $n divides 2i$; since $n$ is odd, $n divides i$. With $0<=i<n$, this forces
  $i=0$, which is not a tie. Thus $x_i^(1)$ is the unique nearest $d$-grid
  point to $x_i^(0)$, and
  #nonum[
    $
    ell_i=abs(x_i^(1)-x_i^(0))<1/(2d).
    $
  ]
  For $i != 0$, coprimality also gives $ell_i>0$. Let $sigma_i$ be the sign of
  $x_i^(1)-x_i^(0)$ and parametrize the corridor, using the standard lifts in
  $[0,1)$, by
  #nonum[
    $
    gamma_i (u)=x_i^(0)+sigma_i u,
    quad
    0<=u<=ell_i.
    $
  ]

  *Step 2: Stationary parametrization.* For $0<u<ell_i$, introduce the two
  angular distances
  #nonum[
    $
    a=2 pi n u,
    quad
    b=2 pi d(ell_i-u).
    $
  ]
  Then $a,b in (0,pi)$ and
  #nonum[
    $
    (d/n)a+b=2 pi d ell_i<pi.
    $
  ]
  The endpoint identities $n x_i^(0)=i$ and $d x_i^(1)=m_i$ give
  #nonum[
    $
    sin(2 pi n gamma_i (u))=sigma_i sin(a),
    quad
    sin(2 pi d gamma_i (u))=-sigma_i sin(b).
    $
  ]
  Consequently, the stationarity equation on the corridor is
  #nonum[
    $
    (1-k)n sin(a)=k d sin(b).
    $
  ]
  Solving for $k$ defines
  #nonum[
    $
    k_i (u)
    =
    (n sin(a))/(n sin(a)+d sin(b)).
    $
  ]
  This function extends continuously to the corridor endpoints with
  #nonum[
    $
    k_i (0)=0,
    quad
    k_i (ell_i)=1.
    $
  ]

  *Step 3: Negative curvature.* The same endpoint identities give
  #nonum[
    $
    cos(2 pi n gamma_i (u))=cos(a),
    quad
    cos(2 pi d gamma_i (u))=cos(b).
    $
  ]
  Substituting $k=k_i(u)$ into the second derivative yields
  #nonum[
    $
    H_(k_i (u)) (gamma_i (u))
    =
    -(2 pi)^2
    (n d sin(a)sin(b))/(n sin(a)+d sin(b))
    (n cot(a)+d cot(b)).
    $
  ]
  By @cotangent-positivity with $lambda=d/n$,
  #nonum[
    $
    n cot(a)+d cot(b)>0.
    $
  ]
  All the remaining factors preceding this parenthesis are positive. Hence
  #nonum[
    $
    H_(k_i (u)) (gamma_i (u))<0.
    $
  ]
  Every stationary point on the open corridor is therefore a nondegenerate
  local maximum.

  *Step 4: Monotonicity of the stationary parameter.* Since
  $a'=2 pi n$ and $b'=-2 pi d$, differentiating the quotient gives
  #nonum[
    $
    k_i '(u)
    =
    (2 pi n d
      (n cos(a)sin(b)+d sin(a)cos(b)))
    /
    (n sin(a)+d sin(b))^2
    =
    -H_(k_i (u)) (gamma_i (u))
    /
    (2 pi (n sin(a)+d sin(b)))
    >0.
    $
  ]
  Thus $k_i$ is a strictly increasing bijection from $[0,ell_i]$ to
  $[0,1]$.

  *Step 5: Inversion, uniqueness, and analyticity.* Let
  #nonum[
    $
    u_i (k)=k_i^(-1)(k).
    $
  ]
  The required branch is
  #nonum[
    $
    X_i (k)=gamma_i (u_i (k)).
    $
  ]
  It is strictly monotone because $u_i$ is strictly increasing and $gamma_i$
  has constant direction. At every point of this curve, stationarity and the
  strict inequality $H_k<0$ allow the implicit-function theorem to be applied.
  Any continuation of the anchored crest must therefore coincide locally, and
  hence globally, with this curve. This proves uniqueness.

  The denominator in the formula for $k_i$ is positive on the closed corridor.
  At the endpoints it equals respectively
  #nonum[
    $
    d sin(2 pi d ell_i)>0
    quad "and" quad
    n sin(2 pi n ell_i)>0,
    $
  ]
  because $0<2 pi n ell_i<2 pi d ell_i<pi$. Thus $k_i$ is real analytic on a
  neighborhood of $[0,ell_i]$. Direct evaluation of its derivative gives
  #nonum[
    $
    k_i '(0)
    =
    (2 pi n^2)/(d sin(2 pi d ell_i))
    >0,
    quad
    k_i '(ell_i)
    =
    (2 pi d^2)/(n sin(2 pi n ell_i))
    >0.
    $
  ]
  The analytic inverse-function theorem, applied one-sidedly at the endpoints,
  therefore makes $u_i(k)$ and $X_i(k)$ real analytic on $[0,1]$.

  Since $u_i(1)=ell_i$,
  #nonum[
    $
    X_i (1)
    =
    gamma_i (ell_i)
    =
    x_i^(1)
    =
    m_i/d.
    $
  ]

  *Step 6: Distinctness and cyclic order.* Every corridor has length less than
  $1/(2d)$ from its anchor. Adjacent anchors on the circle are separated by
  $1/n>1/d$, so the sum of the lengths of two adjacent corridors is strictly
  smaller than the distance between their anchors. The corridors are therefore
  pairwise disjoint. Since each anchored branch remains in its own corridor,
  the branches remain distinct and preserve their initial cyclic order.
]

#corollary(name: "Nearest-grid endpoint selection")[
  Under the hypotheses of @anchored-continuation, the endpoint selected from
  the anchor $i/n$ is the unique nearest point of the $d$-grid:
  #nonum[
    $
    X_i (1)
    =
    1/d floor((d i)/n+1/2).
    $
  ]
] <nearest-grid-endpoints>

#proof[
  This is the endpoint formula in @anchored-continuation together with the
  absence of a rounding tie proved there.
]

@fig-X-trajectories illustrates the anchored trajectories for $(n,d)=(5,7)$:
the five branches start on the regular $5$-grid, remain in their disjoint
corridors, and end at the selected sites of the $7$-grid.

#figure(
  image(
    "Figures/Crests.svg",
    width: 72%,
  ),
  caption: [
    Anchored crest-position trajectories $X_i (k)$ for $(n,d)=(5,7)$.
    The curves begin at the regular $5$-grid and terminate on selected points
    of the regular $7$-grid. The upper and lower horizontal boundary curves
    represent the same fixed circular branch $X_0 (k)=0$.
  ],
) <fig-X-trajectories>

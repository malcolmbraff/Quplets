#import "definitions.typ": *

= Even $n$: a mirror pair of canonical outcomes

The oddness assumption in the main theorem ensures that both anchored
continuation and nearest-grid selection are single valued. When $n$ is even,
coprimality forces $d$ to be odd. The central anchor $x=1/2$ is then fixed by
the reflection $x -> 1-x$, and it is the sole source of the even-case
difference.

== The central pitchfork

At the central anchor,
#nonum[
  $
  H_k (1/2)
  =
  -(2 pi)^2 ((1-k)n^2-k d^2).
  $
]
It vanishes at
#nonum[
  $
  k_*=n^2/(n^2+d^2).
  $
]
Thus the central branch is a crest for $k<k_*$ and a trough for $k>k_*$. At
the critical parameter,
#nonum[
  $
  F_(k_*) ^(4) (1/2)
  =
  (2 pi)^4 n^2 d^2 (n^2-d^2)/(n^2+d^2)<0.
  $
]
The loss of the central crest is therefore a symmetric pitchfork: for
$k>k_*$ it is replaced locally by two crest arms, exchanged by reflection.

== Global continuation of the two arms

#proposition(name: "Central-arm continuation")[
  Let $n<d$ be coprime with $n$ even, and let $k_*=n^2/(n^2+d^2)$. There are
  unique continuous branches
  #nonum[
    $
    X_- , X_+ : [k_*,1] -> RR / ZZ
    $
  ]
  such that
  #nonum[
    $
    X_-(k_*)=X_+(k_*)=1/2,
    quad
    X_- (k)<1/2<X_+ (k)
    quad
    (k>k_*),
    $
  ]
  and, for $k in (k_*,1]$, both points are nondegenerate local maxima of
  $F_k$. They are real analytic on $(k_*,1)$, satisfy
  #nonum[
    $
    X_- (k)=1-X_+ (k),
    $
  ]
  and have endpoints
  #nonum[
    $
    X_- (1)=(d-1)/(2d),
    quad
    X_+ (1)=(d+1)/(2d).
    $
  ]
] <even-central-arm-continuation>

#proof[
  It suffices to treat the right half. Write
  #nonum[
    $
    x=1/2+y,
    quad
    0<y<1/(2d).
    $
  ]
  Since $n$ is even and $d$ is odd,
  #nonum[
    $
    F_k (1/2+y)
    =
    -k cos(2 pi d y)+(1-k) cos(2 pi n y).
    $
  ]
  Its stationarity equation is
  #nonum[
    $
    k/(1-k)
    =
    R(y)
    :=
    n sin(2 pi n y)/(d sin(2 pi d y)).
    $ <even-arm-stationarity>
  ]

  The function $R$ is strictly increasing on $(0,1/(2d))$. Indeed,
  #nonum[
    $
    R'(y)/R(y)
    =
    2 pi (n cot(2 pi n y)-d cot(2 pi d y))>0.
    $
  ]
  To see the inequality, put $t=2 pi y$. Then
  #nonum[
    $
    0<n t<d t<pi,
    $
  ]
  and $u cot u$ is strictly decreasing on $(0,pi)$. Hence
  #nonum[
    $
    n cot(n t)
    =
    (n t cot(n t))/t
    >
    (d t cot(d t))/t
    =
    d cot(d t).
    $
  ]
  Moreover,
  #nonum[
    $
    lim_(y -> 0) R(y)=n^2/d^2,
    quad
    lim_(y -> 1/(2d)) R(y)=infinity.
    $
  ]
  Therefore, for every $k>k_*$, equation
  the stationarity equation above has exactly one solution $y_+ (k)$ in
  $(0,1/(2d))$. It satisfies
  #nonum[
    $
    lim_(k -> k_*^+) y_+ (k)=0,
    quad
    lim_(k -> 1^-) y_+ (k)=1/(2d).
    $
  ]

  Finally,
  #nonum[
    $
    partial_y F_k (1/2+y)
    =
    2 pi (1-k)d sin(2 pi d y)
    (k/(1-k)-R(y)).
    $
  ]
  This derivative is positive before $y_+ (k)$ and negative afterwards.
  Thus the unique stationary point is a nondegenerate local maximum. The
  implicit-function theorem gives its analyticity for $k in (k_*,1)$; its
  endpoint limits give the stated continuous extension. Set
  #nonum[
    $
    X_+ (k)=1/2+y_+ (k).
    $
  ]
  Reflection gives $X_- (k)=1-X_+ (k)$ and the other endpoint.
]

== The two canonical endpoint selections

For every noncentral label $i$, a nearest $d$-grid tie would imply
$n | 2i$, which is impossible for $i != n/2$. Thus the existing corridor
argument applies unchanged to the other $n-1$ anchored branches. The central
branch is replaced, after the pitchfork, by the two branches of
@even-central-arm-continuation.

At the central index, the two nearest endpoint sites are
#nonum[
  $
  (d-1)/(2d)
  quad "and" quad
  (d+1)/(2d).
  $
]
Retaining the unique nearest-grid choices at all other labels and choosing
either central site gives two reflected labeled endpoint selections. The same
nearest-rounding argument gives a Euclidean rhythm in each case; reflection
exchanges the two corresponding canonical Quplets.

Consequently, the even case preserves the rational grid, the Euclidean
endpoint class, and the anchored construction. What changes is precisely
uniqueness: the unperturbed phase-aligned signal has a canonical mirror pair,
rather than one canonical representative.

== A symmetry-breaking signal

A signed small perturbation can select one member of that pair:
#nonum[
  $
  F_(k,epsilon) ^s (x)
  =
  F_k (x)+s epsilon sin(2 pi x),
  quad
  s in {-1,1},
  quad
  0<epsilon.
  $
]
Since
#nonum[
  $
  partial_x F_(k,epsilon) ^s (1/2)=-2 pi s epsilon,
  $
]
the fixed central degeneracy is removed. Reflection exchanges the signs
$s=1$ and $s=-1$. This is only a signal-level tie-breaker: the exact
rational-grid and Euclidean statements above concern the unperturbed family
$F_k$.

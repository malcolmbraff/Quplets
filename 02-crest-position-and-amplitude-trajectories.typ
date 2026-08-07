#import "definitions.typ": *

= Anchored crest continuation and nearest-grid endpoints

== Anchored crest branches

Let $n,d in NN$ satisfy $1 < n < d$, and let $k in [0,1]$. We define the
interference function

$
F_k (x)
=
k cos(2 pi d x)
+
(1-k) cos(2 pi n x),
$ <Fk>

where $x in RR \/ ZZ$ denotes phase on the unit cycle.

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

A stationary point of $F_k$ is a phase $x in RR \/ ZZ$ satisfying
$G_k (x)=0$. It is a crest when $H_k (x)<0$, a trough when
$H_k (x)>0$, and degenerate when $H_k (x)=0$.

At $k=0$, the function

#nonum[
  $
  F_0 (x)=cos(2 pi n x)
  $
]

has exactly $n$ crests, located at the regular grid points

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

- *anchor:* $X_i (0)=i/n$,
- *stationarity:* $G_k (X_i (k))=0$,
- *crest condition:* $H_k (X_i (k))<0$.

Here, $I_i subset [0,1]$ is an interval containing $0$. The implicit-function
theorem guarantees the existence and uniqueness of the branch near $k=0$,
since

#nonum[
  $
  H_0 (i/n)=-(2 pi)^2 n^2 <0.
  $
]

The branch can be continued in graph form for as long as the corresponding
stationary point remains nondegenerate. A value of $k$ satisfying

#nonum[
  $
  G_k (X_i (k))=H_k (X_i (k))=0
  $
]

is therefore a possible boundary of continuation in graph form.

The branch issued from $0$ is fixed throughout the deformation. Indeed,

#nonum[
  $
  G_k (0)=0
  $
]

and

#nonum[
  $
  H_k (0)
  =
  -(2 pi)^2
  (
    k d^2
    +
    (1-k)n^2
  )
  <
  0
  $
]

for every $k in [0,1]$. Hence

#nonum[
  $
  X_0 (k)=0.
  $
]

The family of functions $X_i (k)$ records the horizontal motion of the
anchored crests. The continuation result below determines these trajectories
globally and identifies their exact endpoint sites.

== Anchored continuation by nearest-grid corridors

#lemma(name: "Cotangent positivity")[
  Let $lambda>1$ and $a,b in (0,pi)$ satisfy $lambda a+b<pi$.
  Then
  #nonum[
    $ cot(a)+lambda cot(b)>0 $.
  ]
] <cotangent-positivity>

#proof[
  If $b<=pi/2$, then $a+b<pi$ and
  #nonum[
    $ cot(a)+cot(b)=sin(a+b)/(sin(a)sin(b))>0 $,
  ]
  while
  #nonum[
    $ lambda cot(b)>=cot(b) $.
  ]

  If $b>pi/2$, put $c=pi-b$. Then $0<c<pi/2$ and $a<c/lambda$.
  Since $cot$ is decreasing,
  #nonum[
    $ cot(a)>cot(c/lambda) $.
  ]
  The strict increase of $tan(u)/u$ on $(0,pi/2)$ gives
  #nonum[
    $ tan(c/lambda)<tan(c)/lambda $,
  ]
  hence
  #nonum[
    $ cot(c/lambda)>lambda cot(c)=-lambda cot(b) $.
  ]
]

#proposition(name: "Global anchored continuation")[
  
  Let $1<n<d$ be coprime integers, with $n$ odd. For every
  $i in {0,dots,n-1}$, the crest of $F_0$ at $i/n$ continues uniquely to a branch $X_i : [0,1] arrow RR / ZZ$.
  
  Each branch is continuous on $[0,1]$,
  real analytic on $(0,1)$ with analytic one-sided endpoint extensions, and satisfies
  #nonum[
    $ G_k (X_i (k))=0 quad "and" quad H_k (X_i (k))<0. $
  ]
    
  The branch $X_0$ is constant. Every other branch has a strictly monotone lift, the $n$ branches remain distinct and preserve their cyclic order, and
  #nonum[
    $
    X_i (1)=m_i / d,
    quad
    m_i = floor((d i) / n + 1 / 2).
    $
  ]
  This statement concerns only the anchored components of the stationary
  set; additional unanchored stationary points may bifurcate elsewhere.
] <anchored-continuation>

#proof[
  
  Put 
  #nonum[
    $ alpha_i = 2pi i/n $
  ] 
  and
  #nonum[
    $ m_i = floor(d i/n+1/2) $,
  ] 
  and set 
  #nonum[
    $ beta_i = 2pi m_i / d$ .
  ]
  
  A rounding tie would
  give 
  #nonum[
    $ d i/n=q+1/2 $,
  ] 
  hence $n$ divides $2i$. 
  
  Since $n$ is odd and
  $0<=i<n$, this forces $i=0$, which is not a tie.
  
  Thus
  #nonum[
    $ abs(beta_i - alpha_i )<pi/d $.
  ]

  For $i!=0$, let $sigma_i$ be the sign of $beta_i - alpha_i$ and write
  #nonum[
    $ L_i = abs(beta_i - alpha_i ) $.
  ] 
  Parametrize the short corridor by
  #nonum[
    $ theta=alpha_i + sigma_i t $,
  ] 
  where $0<=t<=L_i$. 
  
  For $0<t<L_i$, set
  #nonum[
    $ a=n t$ and $b=d(L_i - t) $.
  ] 
  
  Then 
  #nonum[
    $ a,b in (0,pi) $
  ] 
  and
  #nonum[
    $ (d / n) a + b = d L_i < pi. $
  ]
  Moreover
  #nonum[
    $
    sin(n theta)=sigma_i sin(a),
    quad
    sin(d theta)=-sigma_i sin(b).
    $
  ]
  Hence the stationarity equation is equivalent to
  #nonum[
    $
    k=k_i (t)
    :=
    (n sin(a)) / (n sin(a) + d sin(b)).
    $
  ]
  This function extends continuously with $k_i (0)=0$ and $k_i (L_i )=1$.

  Let
  #nonum[
    $
    C_i (t)
    =
    (1-k_i (t))n^2 cos(n theta)
    +
    k_i (t)d^2 cos(d theta).
    $
  ]
  If
  $R=(1-k_i (t))n sin(a)=k_i (t)d sin(b)>0$, then
  #nonum[
    $
    C_i (t)
    =
    R(n cot(a)+d cot(b))>0
    $
  ]
  by @cotangent-positivity with $lambda=d/n$. 
  
  Direct differentiation gives
  #nonum[
    $
    k_i '(t)
    =
    C_i (t) / (n sin(a) + d sin(b))
    >0.
    $
  ]
  Thus $k_i$ is a bijection from $[0,L_i ]$ to $[0,1]$ and its inverse
  defines the required strictly monotone branch. 
  
  Since
  $H_k (theta/(2pi))=-4pi^2 C_i (t)$, every point of the branch is a
  nondegenerate local maximum. At the corridor endpoints, the sine-factor
  expansions give the one-sided derivatives
  #nonum[
    $
    k_i '(0)
    =
    n^2 / (d sin(d L_i))
    >0,
    quad
    k_i '(L_i)
    =
    d^2 / (n sin(n L_i))
    >0.
    $
  ]
  Indeed, $sin(d L_i)>0$ and $sin(n L_i)>0$ because
  $0<L_i<pi/d$ and $n<d$. The quotient defining $k_i$ therefore has analytic
  one-sided extensions at $t=0$ and $t=L_i$, with nonzero derivative at both
  endpoints. The analytic inverse-function theorem applied at each endpoint
  gives analytic one-sided extensions of the inverse $t_i (k)$, and hence of
  $X_i (k)$.

  For $i=0$, $alpha_0 = beta_0 = 0$ and $X_0 (k)=0$; its curvature factor is
  $(1-k)n^2 + k d^2 > 0$. 
  
  Finally, every corridor lies within distance $1/(2d)$ of its anchor. 
  
  Adjacent anchors are separated by $1/n>1/d$, so
  the short corridors are pairwise disjoint on the circle. The branches
  therefore remain distinct and preserve cyclic order. Nothing in this
  corridor argument excludes degeneracies on other stationary components.
]

#corollary(name: "Nearest-grid endpoint selection")[
  
  Under the hypotheses of @anchored-continuation, the endpoint selected from
  the anchor $i/n$ is the unique nearest point of the $d$-grid:
  #nonum[
    $
    X_i (1)
    =
    1 / d
    floor((d i) / n + 1 / 2).
    $
  ]
] <nearest-grid-endpoints>

The proposition is deliberately local to the $n$ anchored components. For
example, the simultaneous equations $G_k (x)=0$ and $H_k (x)=0$ can
still have solutions on other components, producing unanchored
maximum-minimum pairs without affecting the corridors above.

== Position trajectory overview

@anchored-continuation shows that the $n$ anchored crest positions form
distinct, order-preserving trajectories from the regular $n$-grid to their
nearest sites on the regular $d$-grid.

#figure(
  image(
    "Figures/crest-trajectories-n5-d7.svg",
    width: 72%,
  ),
  caption: [
    Anchored crest-position trajectories $X_i (k)$ for $(n,d)=(5,7)$.
    The curves begin at the regular $5$-grid and terminate on selected
    points of the regular $7$-grid. The upper and lower horizontal boundary
    curves represent the same fixed circular branch $X_0 (k)=0$.
    The dashed vertical line marks the slope-balanced parameter
    $k_c = 5/12$.
  ],
) <fig-X-trajectories>

@fig-X-trajectories illustrates the phase evolution of the anchored
crests in the case $(n,d)=(5,7)$. The rectangular representation duplicates
the fixed circular branch at phases $0$ and $1$.

The differential, phase-parametric, algebraic, amplitude, and lifted-trajectory
analyses are preserved in the standalone files under
#raw("further_steps/").

// Suppressed from the present article; preserved in further_steps.
// == Non-collision of nondegenerate branches
// 
// The local uniqueness furnished by the implicit-function theorem also prevents
// distinct anchored branches from meeting while they remain nondegenerate.
// 
// Let $X_i$ and $X_j$ be distinct anchored stationary branches. If both are
// defined at $k_0$ and
// #nonum[
//   $
//   H_(k_0) (X_i (k_0 )) != 0,
//   quad
//   H_(k_0) (X_j (k_0 )) != 0,
//   $
// ]
// then $X_i (k_0 ) != X_j (k_0 )$.
// 
// Indeed, equality at a point $x_0$ would give
// #nonum[
//   $
//   G_(k_0) (x_0 )=0
//   quad "and" quad
//   H_(k_0) (x_0 )!=0.
//   $
// ]
// The implicit-function theorem would then give a unique local stationary branch
// through $(k_0 ,x_0 )$, so $X_i$ and $X_j$ would coincide locally and hence,
// by analytic continuation, wherever both are defined. This contradicts their
// distinct anchors $X_i (0)=i/n$ and $X_j (0)=j/n$.
// 
// == Evolution law in graph form
// 
// Let
// 
// #nonum[
//   $
//   theta_i (k)=2 pi X_i (k).
//   $
// ]
// 
// Differentiating the stationarity equation $G_k (X_i (k))=0$ with respect to
// $k$ gives
// 
// $
// X_i '(k)
// =
// - (d sin(d theta_i (k)) - n sin(n theta_i (k))) / (2 pi
//   (
//     k d^2 cos(d theta_i (k))
//     +
//     (1-k)n^2 cos(n theta_i (k))
//   )).
// $ <X-ode>
// 
// The denominator in @X-ode equals
// $-H_k (X_i (k))/(2 pi)$ and is therefore strictly positive while the branch
// remains a crest. The graph representation can fail only when the stationary
// point becomes degenerate.
// 
// The numerator measures the phase imbalance between the two subdivision
// systems, while the denominator measures the local curvature of the waveform.
// Thus a branch may move rapidly when its crest approaches degeneracy.
// 
// #figure(
//   image(
//     "Figures/crest-trajectories-n5-d7.svg",
//     width: 72%,
//   ),
//   caption: [
//     Anchored crest-position trajectories $X_i (k)$ for $(n,d)=(5,7)$.
//     The curves begin at the regular $5$-grid and terminate on selected
//     points of the regular $7$-grid. The upper and lower horizontal boundary
//     curves represent the same fixed circular branch $X_0 (k)=0$.
//     The dashed vertical line marks the slope-balanced parameter
//     $k_c = 5/12$.
//   ],
// ) <fig-X-trajectories>
// 
// @fig-X-trajectories illustrates the phase evolution of the anchored
// crests in the case $(n,d)=(5,7)$. The rectangular representation duplicates
// the fixed circular branch at phases $0$ and $1$.
// 
// == Phase parametrization
// 
// Along the stationary set, it is useful to regard $k$ as a function of the
// phase $theta=2 pi x$. The stationarity equation is
// 
// #nonum[
//   $
//   k d sin(d theta)+(1-k)n sin(n theta)=0.
//   $
// ]
// 
// Solving for $k$ gives
// 
// $
// k(theta)
// =
// (n sin(n theta)) / (n sin(n theta) - d sin(d theta)).
// $ <k-theta>
// 
// This formula parametrizes the portions of the stationary set for which the
// denominator is nonzero. When
// 
// #nonum[
//   $
//   n sin(n theta)-d sin(d theta)=0,
//   $
// ]
// 
// @k-theta does not determine a finite value of $k$. If, in addition,
// 
// #nonum[
//   $
//   sin(n theta)=sin(d theta)=0,
//   $
// ]
// 
// then the phase is stationary for every $k in [0,1]$. Otherwise, no value of
// $k$ satisfies the stationarity equation at that phase.
// 
// The former unbounded modulation coordinate may still be useful as an auxiliary
// parameter. On the ordinary part of the stationary set, the same phase
// parametrization also determines the crest height. Define
// 
// #nonum[
//   $
//   K_(n,d) (theta)
//   =
//   (n sin(n theta)) / (n sin(n theta) - d sin(d theta))
//   $
// ]
// 
// and
// 
// #nonum[
//   $
//   cal(A)_(n,d) (theta)
//   =
//   (n sin(n theta) cos(d theta)
// -
//     d sin(d theta) cos(n theta)) / (n sin(n theta) - d sin(d theta)).
//   $
// ]
// 
// Then the triple
// 
// #nonum[
//   $
//   (
//     K_(n,d) (theta),
//     theta / (2 pi),
//     cal(A)_(n,d) (theta)
//   )
//   $
// ]
// 
// parametrizes the stationary set in parameter–phase–amplitude
// space. Restricting $K_(n,d)$ to the connected phase interval of
// the branch anchored at $theta=2 pi i/n$ and inverting recovers
// $X_i (k)$ and $A_i (k)$. Thus its branchwise restrictions are exactly
// the lifted trajectories introduced in @lifted-crest. This
// description is exact on the maximal branch interval $I_i$, and is
// global on $[0,1]$ because @anchored-continuation proves $I_i=[0,1]$, with endpoint values understood by continuous extension.
// 
// For $0 <= k < 1$, define
// 
// #nonum[
//   $
//   lambda= k / (1 - k).
//   $
// ]
// 
// Then
// 
// #nonum[
//   $
//   k= lambda / (1 + lambda),
//   $
// ]
// 
// and the stationarity equation becomes
// 
// #nonum[
//   $
//   lambda d sin(d theta)+n sin(n theta)=0.
//   $
// ]
// 
// Hence
// 
// #nonum[
//   $
//   lambda(theta)
//   =
//   - n / d sin(n theta) / sin(d theta).
//   $
// ]
// 
// Thus the compact coordinate $k in [0,1]$ and the unbounded coordinate
// $lambda in [0,infinity)$ describe the same deformation.
// 
// #remark(
//   numbering: none,
//   name: "Fixed-parameter algebraic form",
// )[
//   Let $c=cos(theta)$, and let $T_m$ and $U_m$ denote the Chebyshev
//   polynomials of the first and second kind. Apart from the common
//   stationary phases $theta in pi ZZ$, the stationarity condition is
//   equivalent to
// 
//   #nonum[
//     $
//     k d U_(d-1) (c)
//     +
//     (1-k) n U_(n-1) (c)
//     =
//     0.
//     $
//   ]
// 
//   In particular, if $k=p/q$ with $0<p<q$, then
// 
//   #nonum[
//     $
//     p d U_(d-1) (c)
//     +
//     (q-p) n U_(n-1) (c)
//     =
//     0.
//     $
//   ]
// 
//   Let $c_i$ be the root selected by continuation from the branch
//   anchored at $i/n$, and let $theta_i$ be its branch-selected phase,
//   so that $cos(theta_i )=c_i$. Then
// 
//   #nonum[
//     $
//     X_i (p/q)= theta_i / (2 pi),
//     quad
//     A_i (p/q)
//     =
//     (p T_d (c_i ) + (q-p)T_n (c_i )) / q.
//     $
//   ]
// 
//   Consequently, at every rational modulation parameter, $c_i$ and
//   $A_i$ are algebraic. The normalized position $X_i$ is exactly
//   defined by the branch-selected angle, but need not itself be an
//   algebraic number.
// ]
// 
// 

// Endpoint and amplitude analysis moved to further_steps.
// == Behaviour at $k=1$
// 
// At the endpoint $k=1$,
// 
// #nonum[
//   $
//   F_1 (x)=cos(2 pi d x),
//   $
// ]
// 
// whose crests lie at the regular $d$-grid
// 
// #nonum[
//   $
//   {j/d : j=0,dots,d-1}.
//   $
// ]
// 
// By @anchored-continuation, every anchored crest branch extends continuously to $k=1$ while
// retaining crest status, and therefore
// 
// #nonum[
//   $
//   X_i (1)=j_i / d
//   $
// ]
// 
// for some $j_i in {0,dots,d-1}$. More precisely, @nearest-grid-endpoints gives
// $j_i = floor((d i) / n + 1 / 2)$.
// 
// == Amplitude along an anchored crest branch
// 
// For each anchored crest branch, define its *amplitude trajectory function* by
// 
// #nonum[
//   $
//   A_i (k)=F_k (X_i (k)).
//   $
// ]
// 
// The position function $X_i (k)$ records the phase of the crest, whereas
// $A_i (k)$ records its vertical position in the graph of $F_k$.
// 
// By the chain rule,
// 
// #nonum[
//   $
//   A_i '(k)
//   =
//   partial_k F_k (X_i (k))
//   +
//   partial_x F_k (X_i (k)) X_i '(k).
//   $
// ]
// 
// The second term vanishes because $X_i (k)$ is stationary. Since
// 
// #nonum[
//   $
//   partial_k F_k (x)
//   =
//   cos(2 pi d x)-cos(2 pi n x),
//   $
// ]
// 
// we obtain
// 
// $
// A_i '(k)
// =
// cos(2 pi d X_i (k))
// -
// cos(2 pi n X_i (k)).
// $ <A-deriv>
// 
// The amplitude evolution is therefore simpler than the position evolution:
// the curvature denominator appearing in @X-ode disappears because
// $partial_x F_k (X_i (k))=0$.
// 
// The amplitude is analytic wherever the anchored branch is analytic. At the
// initial point,
// 
// #nonum[
//   $
//   A_i (0)=1,
//   $
// ]
// 
// and
// 
// #nonum[
//   $
//   A_i '(0)
//   =
//   cos(2 pi d i/n)-1
//   <=
//   0.
//   $
// ]
// 
// If $gcd(n,d)=1$, equality occurs only for $i=0$. Indeed, equality requires
// $d i/n in ZZ$, and coprimality then implies $i=0$ modulo $n$.
// 
// Since $X_0 (k)=0$, the corresponding amplitude trajectory is constant:
// 
// #nonum[
//   $
//   A_0 (k)=1.
//   $
// ]
// 
// If another anchored branch extends to a crest of $F_1$, then
// 
// #nonum[
//   $
//   A_i (1)=1.
//   $
// ]
// 
// Thus every nonconstant globally continued amplitude trajectory begins and
// ends at amplitude $1$.
// 
// == Convexity of crest-amplitude trajectories
// 
// The amplitude trajectories satisfy a second-order identity that does not
// require an explicit solution for $X_i (k)$.
// 
// #remark(
//   numbering: none,
//   name: "Convexity identity for crest amplitude",
// )[
//   
//   Let $X_i (k)$ be a nondegenerate stationary branch. Then
// 
//   $
//   A_i ''(k)
//   =
//   -
//   ((
//       partial_(k x) F_k (X_i (k))
//     )^2 ) / H_k (X_i (k)).
//   $ <A-second-deriv>
// 
//   Consequently, while the branch remains a crest,
// 
//   #nonum[
//     $
//     A_i ''(k)>=0.
//     $
//   ]
// 
//   Equality holds precisely when
// 
//   #nonum[
//     $
//     partial_(k x) F_k (X_i (k))=0.
//     $
//   ]
// ]
// 
// #proof[
//   Differentiating @A-deriv in its invariant form
// 
//   #nonum[
//     $
//     A_i '(k)=partial_k F_k (X_i (k))
//     $
//   ]
// 
//   gives
// 
//   #nonum[
//     $
//     A_i ''(k)
//     =
//     partial_k^2 F_k (X_i (k))
//     +
//     partial_(k x) F_k (X_i (k)) X_i '(k).
//     $
//   ]
// 
//   Since $F_k$ is affine in $k$,
// 
//   #nonum[
//     $
//     partial_k^2 F_k = 0.
//     $
//   ]
// 
//   Differentiating the stationarity condition
// 
//   #nonum[
//     $
//     partial_x F_k (X_i (k))=0
//     $
//   ]
// 
//   gives
// 
//   #nonum[
//     $
//     partial_(k x) F_k (X_i (k))
//     +
//     H_k (X_i (k)) X_i '(k)
//     =
//     0.
//     $
//   ]
// 
//   Hence
// 
//   #nonum[
//     $
//     X_i '(k)
//     =
//     -
//     (partial_(k x) F_k (X_i (k))) / H_k (X_i (k)).
//     $
//   ]
// 
//   Substitution yields @A-second-deriv. Since $H_k (X_i (k))<0$ along a
//   nondegenerate crest branch, the right-hand side is nonnegative.
// ]
// 
// Thus every nondegenerate crest-amplitude trajectory is convex on its interval
// of continuation.
// 
// It follows that every interior critical point of a nonconstant
// crest-amplitude trajectory is a minimum. More precisely, if
// 
// #nonum[
//   $
//   A_i '(k_0 )=0,
//   $
// ]
// 
// then $k_0$ is a global minimum of $A_i$ on every interval of nondegenerate
// crest continuation containing $k_0$.
// 
// If a branch extends as a crest over $[0,1]$, then convexity together with
// 
// #nonum[
//   $
//   A_i (0)=A_i (1)=1
//   $
// ]
// 
// implies
// 
// #nonum[
//   $
//   A_i (k)<=1
//   $
// ]
// 
// for every $k in [0,1]$.
// 
// #figure(
//   image(
//     "Figures/amplitude-trajectories-n5-d7.svg",
//     width: 72%,
//   ),
//   caption: [
//     Distinct anchored crest-amplitude trajectories for $(n,d)=(5,7)$.
//     Reflection symmetry gives $A_1 = A_4$ and $A_2 = A_3$, while
//     $A_0 (k)=1$ remains constant. The marked points are the interior
//     critical points detected through @A-deriv. The dashed vertical line
//     marks the slope-balanced parameter $k_c = 5/12$, at which the two nonconstant
//     amplitude classes reach their minima.
//   ],
// ) <fig-A-trajectories>
// 
// In this example, the nonconstant amplitude minima occur simultaneously at
// $k_c$. The following observation identifies the rational phase grids on which
// such amplitude-critical events may occur.
// 
// == Critical phases of the amplitude trajectories
// 
// The critical points of the amplitude functions can occur only when the
// corresponding crest lies on one of two rational phase grids.
// 
// #remark(
//   numbering: none,
//   name: "Critical phases of crest amplitude",
// )[
//   
//   Let $X_i (k)$ be a nondegenerate anchored crest branch. 
//   
//   If
// 
//   #nonum[
//     $
//     A_i '(k)=0,
//     $
//   ]
// 
//   then
// 
//   $
//   X_i (k)
//   in
//   1 / (d - n) ZZ
//   quad "or" quad
//   X_i (k)
//   in
//   1 / (d + n) ZZ
//   quad "mod" 1.
//   $ <A-critical-grids>
// ]
// 
// #proof[
//   By @A-deriv, the condition $A_i '(k)=0$ is equivalent to
// 
//   #nonum[
//     $
//     cos(2 pi d X_i (k))
//     =
//     cos(2 pi n X_i (k)).
//     $
//   ]
// 
//   For real numbers $u$ and $v$, the equality $cos(u)=cos(v)$ holds precisely
//   when
// 
//   #nonum[
//     $
//     u=v+2 pi ell
//     quad "or" quad
//     u=-v+2 pi ell
//     $
//   ]
// 
//   for some $ell in ZZ$. Therefore,
// 
//   #nonum[
//     $
//     (d-n)X_i (k) in ZZ
//     quad "or" quad
//     (d+n)X_i (k) in ZZ.
//     $
//   ]
// ]
// 
// This gives a necessary phase condition, not a complete
// classification of the critical points of $A_i$. A branch must also reach the
// corresponding phase at a compatible value of $k$.
// 
// Combined with the convexity identity, it shows that whenever a crest branch
// reaches one of these grids with $A_i '(k)=0$, its amplitude is minimized
// there.
// 
// The $(d+n)$-grid will play a distinguished role at the balanced parameter
// introduced in the next section. At that parameter, its stationary points are
// simultaneously critical with respect to phase and modulation.
// 
// == Lifted crest trajectories
// 
// The position and amplitude functions may be combined into the *lifted crest
// trajectory*
// 
// $
// Gamma_i (k)
// =
// (
//   X_i (k),
//   A_i (k)
// ).
// $ <lifted-crest>
// 
// This is a curve in the phase-amplitude cylinder
// 
// #nonum[
//   $
//   (RR \/ ZZ) times RR.
//   $
// ]
// 
// Its tangent vector is
// 
// #nonum[
//   $
//   Gamma_i '(k)
//   =
//   (
//     X_i '(k),
//     A_i '(k)
//   ),
//   $
// ]
// 
// whose components are given by @X-ode and @A-deriv.
// 
// The two coordinates carry complementary information. The phase coordinate
// describes displacement and possible degeneracy, whereas the amplitude
// coordinate describes prominence, amplitude ordering, and passage through the
// critical phase grids.
// 
// The lifted trajectories provide a unified representation of the selected
// crests in the evolving graph of $F_k$. The later Huplet construction will
// discard their amplitudes and retain only the circular differences between
// their phases.
// 
// 

// Moved immediately after the anchored-branch definition.
// == Anchored continuation by nearest-grid corridors
// 
// #lemma(name: "Cotangent positivity")[
//   Let $lambda>1$ and $a,b in (0,pi)$ satisfy $lambda a+b<pi$.
//   Then
//   #nonum[
//     $ cot(a)+lambda cot(b)>0 $.
//   ]
// ] <cotangent-positivity>
// 
// #proof[
//   If $b<=pi/2$, then $a+b<pi$ and
//   #nonum[
//     $ cot(a)+cot(b)=sin(a+b)/(sin(a)sin(b))>0 $,
//   ]
//   while
//   #nonum[
//     $ lambda cot(b)>=cot(b) $.
//   ]
// 
//   If $b>pi/2$, put $c=pi-b$. Then $0<c<pi/2$ and $a<c/lambda$.
//   Since $cot$ is decreasing,
//   #nonum[
//     $ cot(a)>cot(c/lambda) $.
//   ]
//   The strict increase of $tan(u)/u$ on $(0,pi/2)$ gives
//   #nonum[
//     $ tan(c/lambda)<tan(c)/lambda $,
//   ]
//   hence
//   #nonum[
//     $ cot(c/lambda)>lambda cot(c)=-lambda cot(b) $.
//   ]
// ]
// 
// #proposition(name: "Global anchored continuation")[
//   
//   Let $1<n<d$ be coprime integers, with $n$ odd. For every
//   $i in {0,dots,n-1}$, the crest of $F_0$ at $i/n$ continues uniquely to a branch $X_i : [0,1] arrow RR / ZZ$.
//   
//   Each branch is continuous on $[0,1]$,
//   real analytic on $(0,1)$ with analytic one-sided endpoint extensions, and satisfies
//   #nonum[
//     $ G_k (X_i (k))=0 quad "and" quad H_k (X_i (k))<0. $
//   ]
//     
//   The branch $X_0$ is constant. Every other branch has a strictly monotone lift, the $n$ branches remain distinct and preserve their cyclic order, and
//   #nonum[
//     $
//     X_i (1)=m_i / d,
//     quad
//     m_i = floor((d i) / n + 1 / 2).
//     $
//   ]
//   This statement concerns only the anchored components of the stationary
//   set; additional unanchored stationary points may bifurcate elsewhere.
// ] <anchored-continuation>
// 
// #proof[
//   
//   Put 
//   #nonum[
//     $ alpha_i = 2pi i/n $
//   ] 
//   and
//   #nonum[
//     $ m_i = floor(d i/n+1/2) $,
//   ] 
//   and set 
//   #nonum[
//     $ beta_i = 2pi m_i / d$ .
//   ]
//   
//   A rounding tie would
//   give 
//   #nonum[
//     $ d i/n=q+1/2 $,
//   ] 
//   hence $n$ divides $2i$. 
//   
//   Since $n$ is odd and
//   $0<=i<n$, this forces $i=0$, which is not a tie.
//   
//   Thus
//   #nonum[
//     $ abs(beta_i - alpha_i )<pi/d $.
//   ]
// 
//   For $i!=0$, let $sigma_i$ be the sign of $beta_i - alpha_i$ and write
//   #nonum[
//     $ L_i = abs(beta_i - alpha_i ) $.
//   ] 
//   Parametrize the short corridor by
//   #nonum[
//     $ theta=alpha_i + sigma_i t $,
//   ] 
//   where $0<=t<=L_i$. 
//   
//   For $0<t<L_i$, set
//   #nonum[
//     $ a=n t$ and $b=d(L_i - t) $.
//   ] 
//   
//   Then 
//   #nonum[
//     $ a,b in (0,pi) $
//   ] 
//   and
//   #nonum[
//     $ (d / n) a + b = d L_i < pi. $
//   ]
//   Moreover
//   #nonum[
//     $
//     sin(n theta)=sigma_i sin(a),
//     quad
//     sin(d theta)=-sigma_i sin(b).
//     $
//   ]
//   Hence the stationarity equation is equivalent to
//   #nonum[
//     $
//     k=k_i (t)
//     :=
//     (n sin(a)) / (n sin(a) + d sin(b)).
//     $
//   ]
//   This function extends continuously with $k_i (0)=0$ and $k_i (L_i )=1$.
// 
//   Let
//   #nonum[
//     $
//     C_i (t)
//     =
//     (1-k_i (t))n^2 cos(n theta)
//     +
//     k_i (t)d^2 cos(d theta).
//     $
//   ]
//   If
//   $R=(1-k_i (t))n sin(a)=k_i (t)d sin(b)>0$, then
//   #nonum[
//     $
//     C_i (t)
//     =
//     R(n cot(a)+d cot(b))>0
//     $
//   ]
//   by @cotangent-positivity with $lambda=d/n$. 
//   
//   Direct differentiation gives
//   #nonum[
//     $
//     k_i '(t)
//     =
//     C_i (t) / (n sin(a) + d sin(b))
//     >0.
//     $
//   ]
//   Thus $k_i$ is a bijection from $[0,L_i ]$ to $[0,1]$ and its inverse
//   defines the required strictly monotone branch. 
//   
//   Since
//   $H_k (theta/(2pi))=-4pi^2 C_i (t)$, every point of the branch is a
//   nondegenerate local maximum. At the corridor endpoints, the sine-factor
//   expansions give the one-sided derivatives
//   #nonum[
//     $
//     k_i '(0)
//     =
//     n^2 / (d sin(d L_i))
//     >0,
//     quad
//     k_i '(L_i)
//     =
//     d^2 / (n sin(n L_i))
//     >0.
//     $
//   ]
//   Indeed, $sin(d L_i)>0$ and $sin(n L_i)>0$ because
//   $0<L_i<pi/d$ and $n<d$. The quotient defining $k_i$ therefore has analytic
//   one-sided extensions at $t=0$ and $t=L_i$, with nonzero derivative at both
//   endpoints. The analytic inverse-function theorem applied at each endpoint
//   gives analytic one-sided extensions of the inverse $t_i (k)$, and hence of
//   $X_i (k)$.
// 
//   For $i=0$, $alpha_0 = beta_0 = 0$ and $X_0 (k)=0$; its curvature factor is
//   $(1-k)n^2 + k d^2 > 0$. 
//   
//   Finally, every corridor lies within distance $1/(2d)$ of its anchor. 
//   
//   Adjacent anchors are separated by $1/n>1/d$, so
//   the short corridors are pairwise disjoint on the circle. The branches
//   therefore remain distinct and preserve cyclic order. Nothing in this
//   corridor argument excludes degeneracies on other stationary components.
// ]
// 
// #corollary(name: "Nearest-grid endpoint selection")[
//   
//   Under the hypotheses of @anchored-continuation, the endpoint selected from
//   the anchor $i/n$ is the unique nearest point of the $d$-grid:
//   #nonum[
//     $
//     X_i (1)
//     =
//     1 / d
//     floor((d i) / n + 1 / 2).
//     $
//   ]
// ] <nearest-grid-endpoints>
// 
// The proposition is deliberately local to the $n$ anchored components. For
// example, the simultaneous equations $G_k (x)=0$ and $H_k (x)=0$ can
// still have solutions on other components, producing unanchored
// maximum-minimum pairs without affecting the corridors above.
// 
// 

/*== Conjecture on global continuation and monotonicity

Numerical experiments suggest that the anchored crest branches behave
regularly on the full modulation interval when $n$ is odd and $gcd(n,d)=1$.
They appear to remain crests and move monotonically from the $n$-grid towards
the $d$-grid.

*Conjecture (global evolution of anchored crests).* Let $1 < n < d$ be
coprime integers, with $n$ odd. For every $i in {0,dots,n-1}$, the anchored
crest branch issued from $i/n$ satisfies:

1. *Global continuation.* The branch extends to the full interval $[0,1]$.

2. *No loss of crest status.* For every $k in [0,1]$,

   #nonum[
     $
     H_k (X_i (k))<0.
     $
   ]

3. *Monotonicity.* After choosing a continuous lift of the circular phase to
   $RR$, the function $X_i (k)$ is monotone on $[0,1]$.

If the conjecture holds, each branch reaches a crest of $F_1$ and therefore

#nonum[
  $
  X_i (1)=j_i/d
  $
]

for some $j_i in {0,dots,d-1}$. Moreover, local uniqueness prevents two
nondegenerate anchored branches with distinct initial points from colliding.
The endpoint sites are therefore distinct.

The circular spacings between these endpoint sites then define the dynamical
Quplet associated with $(n,d)$.

The convexity proposition then implies that every globally continued
nonconstant crest amplitude satisfies

#nonum[
  $
  A_i (k)<=1
  $
]

throughout the deformation.

*/
The stronger claim that the anchored crests are the $n$ highest local maxima
for every $k in [0,1)$ remains open and is recorded in
#raw("further_steps/amplitude-selection-conjecture.typ").

// == Conjecture on amplitude selection
// 
// Numerical experiments indicate that the anchored branches can also be
// identified from the instantaneous crest amplitudes.
// 
// *Conjecture (amplitude selection).*  
// 
// Let $1<n<d$ be coprime, with $n$ odd. For every $k in [0,1)$, the anchored
// crests are precisely the $n$ highest local maxima of $F_k$.
// 
// At $k=1$, all $d$ crests have amplitude $1$, so amplitude ranking no longer
// selects a unique subset. The selected $n$ endpoint sites are instead inherited
// from the continuous anchored branches.
// 
// This conjecture links branch continuation to the amplitude ordering of all
// local maxima. The next section identifies the highest stationary points at the
// balanced parameter and shows that the resonant $(n+d)$-grid points are joint
// critical points of the surface $(k,x) mapsto F_k (x)$.
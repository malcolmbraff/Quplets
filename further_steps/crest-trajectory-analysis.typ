#import "../definitions.typ": *
#set math.equation(numbering: "(1)")

= Crest trajectory analysis

#emph[Follow-up material extracted from the main article. This file studies
position and amplitude trajectories after the global anchored-continuation
result has been established.]

Let $1<n<d$ be coprime integers, with $n$ odd, and let

$
F_k (x)
=
k cos(2 pi d x)
+
(1-k) cos(2 pi n x).
$ <Fk>

Write

$
G_k (x)=partial_x F_k (x)
$ <G>

and

$
H_k (x)=partial_x^2 F_k (x).
$ <H>

For each initial crest $i/n$, let $X_i (k)$ denote its globally continued
anchored crest branch, and set $A_i (k)=F_k (X_i (k))$.

== Evolution law in graph form

Let

#nonum[
  $
  theta_i (k)=2 pi X_i (k).
  $
]

Differentiating the stationarity equation $G_k (X_i (k))=0$ with respect to
$k$ gives

$
X_i '(k)
=
- (d sin(d theta_i (k)) - n sin(n theta_i (k))) / (2 pi
  (
    k d^2 cos(d theta_i (k))
    +
    (1-k)n^2 cos(n theta_i (k))
  )).
$ <X-ode>

The denominator in the position evolution equation equals
$-H_k (X_i (k))/(2 pi)$ and is therefore strictly positive while the branch
remains a crest. The graph representation can fail only when the stationary
point becomes degenerate.

The numerator measures the phase imbalance between the two subdivision
systems, while the denominator measures the local curvature of the waveform.
Thus a branch may move rapidly when its crest approaches degeneracy.

#figure(
  image(
    "../Figures/crest-trajectories-n5-d7.svg",
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

== Phase parametrization

Along the stationary set, it is useful to regard $k$ as a function of the
phase $theta=2 pi x$. The stationarity equation is

#nonum[
  $
  k d sin(d theta)+(1-k)n sin(n theta)=0.
  $
]

Solving for $k$ gives

$
k(theta)
=
(n sin(n theta)) / (n sin(n theta) - d sin(d theta)).
$ <k-theta>

This formula parametrizes the portions of the stationary set for which the
denominator is nonzero. When

#nonum[
  $
  n sin(n theta)-d sin(d theta)=0,
  $
]

the phase-parametrization formula does not determine a finite value of $k$. If, in addition,

#nonum[
  $
  sin(n theta)=sin(d theta)=0,
  $
]

then the phase is stationary for every $k in [0,1]$. Otherwise, no value of
$k$ satisfies the stationarity equation at that phase.

The former unbounded modulation coordinate may still be useful as an auxiliary
parameter. On the ordinary part of the stationary set, the same phase
parametrization also determines the crest height. Define

#nonum[
  $
  K_(n,d) (theta)
  =
  (n sin(n theta)) / (n sin(n theta) - d sin(d theta))
  $
]

and

#nonum[
  $
  cal(A)_(n,d) (theta)
  =
  (n sin(n theta) cos(d theta)
-
    d sin(d theta) cos(n theta)) / (n sin(n theta) - d sin(d theta)).
  $
]

Then the triple

#nonum[
  $
  (
    K_(n,d) (theta),
    theta / (2 pi),
    cal(A)_(n,d) (theta)
  )
  $
]

parametrizes the stationary set in parameter–phase–amplitude
space. Restricting $K_(n,d)$ to the connected phase interval of
the branch anchored at $theta=2 pi i/n$ and inverting recovers
$X_i (k)$ and $A_i (k)$. Thus its branchwise restrictions are exactly
the lifted trajectories introduced in the lifted-trajectory formula. This
description is exact on the maximal branch interval $I_i$, and is
global on $[0,1]$ because the global anchored-continuation proposition in the main article proves $I_i=[0,1]$, with endpoint values understood by continuous extension.

For $0 <= k < 1$, define

#nonum[
  $
  lambda= k / (1 - k).
  $
]

Then

#nonum[
  $
  k= lambda / (1 + lambda),
  $
]

and the stationarity equation becomes

#nonum[
  $
  lambda d sin(d theta)+n sin(n theta)=0.
  $
]

Hence

#nonum[
  $
  lambda(theta)
  =
  - n / d sin(n theta) / sin(d theta).
  $
]

Thus the compact coordinate $k in [0,1]$ and the unbounded coordinate
$lambda in [0,infinity)$ describe the same deformation.

== Amplitude along an anchored crest branch

For each anchored crest branch, define its *amplitude trajectory function* by

#nonum[
  $
  A_i (k)=F_k (X_i (k)).
  $
]

The position function $X_i (k)$ records the phase of the crest, whereas
$A_i (k)$ records its vertical position in the graph of $F_k$.

By the chain rule,

#nonum[
  $
  A_i '(k)
  =
  partial_k F_k (X_i (k))
  +
  partial_x F_k (X_i (k)) X_i '(k).
  $
]

The second term vanishes because $X_i (k)$ is stationary. Since

#nonum[
  $
  partial_k F_k (x)
  =
  cos(2 pi d x)-cos(2 pi n x),
  $
]

we obtain

$
A_i '(k)
=
cos(2 pi d X_i (k))
-
cos(2 pi n X_i (k)).
$ <A-deriv>

The amplitude evolution is therefore simpler than the position evolution:
the curvature denominator appearing in the position evolution equation disappears because
$partial_x F_k (X_i (k))=0$.

The amplitude is analytic wherever the anchored branch is analytic. At the
initial point,

#nonum[
  $
  A_i (0)=1,
  $
]

and

#nonum[
  $
  A_i '(0)
  =
  cos(2 pi d i/n)-1
  <=
  0.
  $
]

If $gcd(n,d)=1$, equality occurs only for $i=0$. Indeed, equality requires
$d i/n in ZZ$, and coprimality then implies $i=0$ modulo $n$.

Since $X_0 (k)=0$, the corresponding amplitude trajectory is constant:

#nonum[
  $
  A_0 (k)=1.
  $
]

If another anchored branch extends to a crest of $F_1$, then

#nonum[
  $
  A_i (1)=1.
  $
]

Thus every nonconstant globally continued amplitude trajectory begins and
ends at amplitude $1$.

== Convexity of crest-amplitude trajectories

The amplitude trajectories satisfy a second-order identity that does not
require an explicit solution for $X_i (k)$.

#remark(
  numbering: none,
  name: "Convexity identity for crest amplitude",
)[
  
  Let $X_i (k)$ be a nondegenerate stationary branch. Then

  $
  A_i ''(k)
  =
  -
  ((
      partial_(k x) F_k (X_i (k))
    )^2 ) / H_k (X_i (k)).
  $ <A-second-deriv>

  Consequently, while the branch remains a crest,

  #nonum[
    $
    A_i ''(k)>=0.
    $
  ]

  Equality holds precisely when

  #nonum[
    $
    partial_(k x) F_k (X_i (k))=0.
    $
  ]
]

#proof[
  Differentiating the amplitude derivative identity in its invariant form

  #nonum[
    $
    A_i '(k)=partial_k F_k (X_i (k))
    $
  ]

  gives

  #nonum[
    $
    A_i ''(k)
    =
    partial_k^2 F_k (X_i (k))
    +
    partial_(k x) F_k (X_i (k)) X_i '(k).
    $
  ]

  Since $F_k$ is affine in $k$,

  #nonum[
    $
    partial_k^2 F_k = 0.
    $
  ]

  Differentiating the stationarity condition

  #nonum[
    $
    partial_x F_k (X_i (k))=0
    $
  ]

  gives

  #nonum[
    $
    partial_(k x) F_k (X_i (k))
    +
    H_k (X_i (k)) X_i '(k)
    =
    0.
    $
  ]

  Hence

  #nonum[
    $
    X_i '(k)
    =
    -
    (partial_(k x) F_k (X_i (k))) / H_k (X_i (k)).
    $
  ]

  Substitution yields the convexity identity. Since $H_k (X_i (k))<0$ along a
  nondegenerate crest branch, the right-hand side is nonnegative.
]

Thus every nondegenerate crest-amplitude trajectory is convex on its interval
of continuation.

It follows that every interior critical point of a nonconstant
crest-amplitude trajectory is a minimum. More precisely, if

#nonum[
  $
  A_i '(k_0 )=0,
  $
]

then $k_0$ is a global minimum of $A_i$ on every interval of nondegenerate
crest continuation containing $k_0$.

If a branch extends as a crest over $[0,1]$, then convexity together with

#nonum[
  $
  A_i (0)=A_i (1)=1
  $
]

implies

#nonum[
  $
  A_i (k)<=1
  $
]

for every $k in [0,1]$.

#figure(
  image(
    "../Figures/amplitude-trajectories-n5-d7.svg",
    width: 72%,
  ),
  caption: [
    Distinct anchored crest-amplitude trajectories for $(n,d)=(5,7)$.
    Reflection symmetry gives $A_1 = A_4$ and $A_2 = A_3$, while
    $A_0 (k)=1$ remains constant. The marked points are the interior
    critical points detected through the amplitude derivative identity. The dashed vertical line
    marks the slope-balanced parameter $k_c = 5/12$, at which the two nonconstant
    amplitude classes reach their minima.
  ],
) <fig-A-trajectories>

In this example, the nonconstant amplitude minima occur simultaneously at
$k_c$. The following observation identifies the rational phase grids on which
such amplitude-critical events may occur.

== Critical phases of the amplitude trajectories

The critical points of the amplitude functions can occur only when the
corresponding crest lies on one of two rational phase grids.

#remark(
  numbering: none,
  name: "Critical phases of crest amplitude",
)[
  
  Let $X_i (k)$ be a nondegenerate anchored crest branch. 
  
  If

  #nonum[
    $
    A_i '(k)=0,
    $
  ]

  then

  $
  X_i (k)
  in
  1 / (d - n) ZZ
  quad "or" quad
  X_i (k)
  in
  1 / (d + n) ZZ
  quad "mod" 1.
  $ <A-critical-grids>
]

#proof[
  By the amplitude derivative identity, the condition $A_i '(k)=0$ is equivalent to

  #nonum[
    $
    cos(2 pi d X_i (k))
    =
    cos(2 pi n X_i (k)).
    $
  ]

  For real numbers $u$ and $v$, the equality $cos(u)=cos(v)$ holds precisely
  when

  #nonum[
    $
    u=v+2 pi ell
    quad "or" quad
    u=-v+2 pi ell
    $
  ]

  for some $ell in ZZ$. Therefore,

  #nonum[
    $
    (d-n)X_i (k) in ZZ
    quad "or" quad
    (d+n)X_i (k) in ZZ.
    $
  ]
]

This gives a necessary phase condition, not a complete
classification of the critical points of $A_i$. A branch must also reach the
corresponding phase at a compatible value of $k$.

Combined with the convexity identity, it shows that whenever a crest branch
reaches one of these grids with $A_i '(k)=0$, its amplitude is minimized
there.

The $(d+n)$-grid will play a distinguished role at the balanced parameter
introduced in the next section. At that parameter, its stationary points are
simultaneously critical with respect to phase and modulation.

== Lifted crest trajectories

The position and amplitude functions may be combined into the *lifted crest
trajectory*

$
Gamma_i (k)
=
(
  X_i (k),
  A_i (k)
).
$ <lifted-crest>

This is a curve in the phase-amplitude cylinder

#nonum[
  $
  (RR \/ ZZ) times RR.
  $
]

Its tangent vector is

#nonum[
  $
  Gamma_i '(k)
  =
  (
    X_i '(k),
    A_i '(k)
  ),
  $
]

whose components are given by the position evolution equation and the amplitude derivative identity.

The two coordinates carry complementary information. The phase coordinate
describes displacement and possible degeneracy, whereas the amplitude
coordinate describes prominence, amplitude ordering, and passage through the
critical phase grids.

The lifted trajectories provide a unified representation of the selected
crests in the evolving graph of $F_k$. The later Huplet construction will
discard their amplitudes and retain only the circular differences between
their phases.


#import "definitions.typ": *

= Crest trajectories $X_i (k)$

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
  H_0 (i/n)=-(2 pi)^2 n^2<0.
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

== Non-collision of nondegenerate branches

The local uniqueness furnished by the implicit-function theorem also prevents
distinct anchored branches from meeting while they remain nondegenerate.

*Lemma (non-collision).*  
Let $X_i$ and $X_j$ be two anchored stationary branches, with $i != j$.
Suppose that both branches are defined at $k_0$ and satisfy

#nonum[
  $
  H_(k_0) (X_i (k_0)) != 0,
  quad
  H_(k_0) (X_j (k_0)) != 0.
  $
]

Then

#nonum[
  $
  X_i (k_0) != X_j (k_0).
  $
]

*Proof.*  
Assume that

#nonum[
  $
  X_i (k_0)=X_j (k_0)=x_0.
  $
]

Since $G_(k_0) (x_0)=0$ and $H_(k_0) (x_0)!=0$, the implicit-function
theorem gives a unique local stationary branch through $(k_0,x_0)$. Hence
$X_i$ and $X_j$ coincide in a neighbourhood of $k_0$. By analytic
continuation, they coincide wherever both are defined, contradicting their
distinct anchors

#nonum[
  $
  X_i (0)=i/n
  quad "and" quad
  X_j (0)=j/n.
  $
]

Therefore the branches cannot meet. $square$

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
X_i ' (k)
=
-frac(
  d sin(d theta_i (k))-n sin(n theta_i (k)),
  2 pi
  (
    k d^2 cos(d theta_i (k))
    +
    (1-k)n^2 cos(n theta_i (k))
  )
).
$ <X-ode>

The denominator in @X-ode equals
$-H_k (X_i (k))/(2 pi)$ and is therefore strictly positive while the branch
remains a crest. The graph representation can fail only when the stationary
point becomes degenerate.

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
frac(
  n sin(n theta),
  n sin(n theta)-d sin(d theta)
).
$ <k-theta>

This formula parametrizes the portions of the stationary set for which the
denominator is nonzero. When

#nonum[
  $
  n sin(n theta)-d sin(d theta)=0,
  $
]

@k-theta does not determine a finite value of $k$. If, in addition,

#nonum[
  $
  sin(n theta)=sin(d theta)=0,
  $
]

then the phase is stationary for every $k in [0,1]$. Otherwise, no value of
$k$ satisfies the stationarity equation at that phase.

The former unbounded modulation coordinate may still be useful as an auxiliary
parameter. For $0 <= k < 1$, define

#nonum[
  $
  lambda=frac(k,1-k).
  $
]

Then

#nonum[
  $
  k=frac(lambda,1+lambda),
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
  -frac(n,d) frac(sin(n theta),sin(d theta)).
  $
]

Thus the compact coordinate $k in [0,1]$ and the unbounded coordinate
$lambda in [0,infinity)$ describe the same deformation.

== Behaviour at $k=1$

At the endpoint $k=1$,

#nonum[
  $
  F_1 (x)=cos(2 pi d x),
  $
]

whose crests lie at the regular $d$-grid

#nonum[
  $
  {j/d : j=0,dots,d-1}.
  $
]

Consequently, if an anchored crest branch extends continuously to $k=1$ while
retaining crest status, then

#nonum[
  $
  X_i (1)=j_i/d
  $
]

for some $j_i in {0,dots,d-1}$. The global existence of this extension is not
assumed here; it is part of the continuation problem formulated below.

== Amplitude along an anchored crest branch

For each anchored crest branch, define

#nonum[
  $
  A_i (k)=F_k (X_i (k)).
  $
]

By the chain rule,

#nonum[
  $
  A_i ' (k)
  =
  partial_k F_k (X_i (k))
  +
  partial_x F_k (X_i (k)) X_i' (k).
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
A_i ' (k)
=
cos(2 pi d X_i (k))-cos(2 pi n X_i (k)).
$ <A-deriv>

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
  A_i ' (0)=cos(2 pi d i/n)-1.
  $
]

== Conjecture on global continuation and monotonicity

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

The circular spacings between these endpoint sites then define the Quplet
associated with $(n,d)$.

== Conjecture on amplitude selection

Numerical experiments indicate that the anchored branches can also be
identified from the instantaneous crest amplitudes.

*Conjecture (amplitude selection).*  
Let $1<n<d$ be coprime, with $n$ odd. For every $k in [0,1)$, the anchored
crests are precisely the $n$ highest local maxima of $F_k$.

At $k=1$, all $d$ crests have amplitude $1$, so amplitude ranking no longer
selects a unique subset. The selected $n$ endpoint sites are instead inherited
from the continuous anchored branches.

== Transition

The equations above describe the local evolution of each anchored crest
branch. The next section studies the stationary configuration at the balanced
parameter $k_c=n/(n+d)$ and asks which of its stationary points lie on the
anchored branches.
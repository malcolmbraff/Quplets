#import "definitions.typ": *

= General frequency pairs: primitive reduction and mirror bifurcation <general-frequency-pairs>

The preceding sections establish the canonical endpoint theorem for a coprime
pair with odd lower frequency. Both restrictions can now be removed. Let
$1<n<d$ be arbitrary and write
$ g=gcd(n,d), quad p=n/g, quad q=d/g. $
Then $gcd(p,q)=1$ and $1<=p<q$. We call $(p,q)$ the *primitive pair* of
$(n,d)$.

For an onset set $A subset RR/ZZ$, define its $g$-fold periodic lift by
$ "Rep"_g (A)
  =
  { (a+r)/g : a in A, r=0,dots,g-1 }.
$
For a cyclic gap word $w$, $"Rep"_g (w)$ denotes the concatenation of $g$
copies of $w$.

== Reduction to the primitive period

#proposition(name: "Primitive-period reduction")[
For every $k in [0,1]$,
$ F_k ^(n,d) (x)
  =
  k cos(2 pi d x)+(1-k)cos(2 pi n x)
  =
  F_k ^(p,q) (g x).
$ <primitive-scaling-identity>
Consequently $F_k ^(n,d)$ has period $1/g$. A phase $u$ is a stationary
point, crest, trough, or degenerate stationary point of the primitive
profile $F_k ^(p,q)$ if and only if, for every
$r in {0,dots,g-1}$,
$ x=(u+r)/g $
has the same type for $F_k ^(n,d)$. Every primitive stationary trajectory
therefore lifts to $g$ translated trajectories, and every primitive endpoint
configuration lifts by $"Rep"_g$.
] <primitive-period-reduction>

#proof[
The identity @primitive-scaling-identity follows from $n=g p$ and $d=g q$.
Differentiating gives
$ partial_x F_k ^(n,d) (x)
  =
  g (partial_u F_k ^(p,q))(g x),
  quad
  partial_x^2 F_k ^(n,d) (x)
  =
  g^2 (partial_u^2 F_k ^(p,q))(g x).
$
Thus stationarity and the sign of the second derivative are preserved.
The solutions of $g x=u$ modulo one are precisely
$x=(u+r)/g$, $r=0,dots,g-1$, which proves the lifting statements.
]

#corollary(name: "Repeated nearest-grid word")[
Let
$ a_j=floor((j d)/n+1/2)=floor((j q)/p+1/2), quad j in ZZ. $
Then
$ a_(j+p)=a_j+q. $
Hence the length-$n$ cyclic gap word determined by $(a_j)_(j=0)^n$ is the
$g$-fold repetition of its primitive length-$p$ word. In particular, the
configuration for $(n,d)=(9,15)$ is three translated copies of the
configuration for $(p,q)=(3,5)$.
] <repeated-nearest-grid-word>

#proof[
Since $(j+p) q/p=j q/p+q$ and $q$ is integral,
$ a_(j+p)
  =
  floor((j q)/p+q+1/2)
  =
  a_j+q.
$
Taking first differences proves periodic repetition of the gap word.
]

The reduction shows that parity must be tested after division by the gcd.
For example, an even unreduced $n$ can have odd primitive numerator $p$; in
that case there is no primitive midpoint bifurcation.

== Universal slope balance

The slope-balanced parameter exists for every frequency pair and is unchanged
by primitive reduction:

$ k_c=n/(n+d)=p/(p+q). $

Writing $theta=2 pi x$, the stationary equation at $k=k_c$ is

$ sin(n theta)+sin(d theta)
  =
  2 sin(((n+d)theta)/2) cos(((d-n)theta)/2)
  =
  0. $

Thus the resonant and complementary stationary families occur independently
of coprimality and parity. Oddness is used in Sections 3--5 to determine the
crest selection and the threshold-extension identity, not to define $k_c$ or
obtain this factorization. For an even primitive numerator, the endpoint
classification below is instead controlled by the midpoint mirror
bifurcation; no complete amplitude ordering at $k_c$ is asserted here.

== Primitive midpoint parity classification

For every primitive pair $(p,q)$, the symmetry center $u=1/2$ is stationary
for all $k$. Its behavior depends on the parity of the primitive pair, not on
the parity of the unreduced frequencies. Set

$ k_p=p^2/(p^2+q^2)=n^2/(n^2+d^2). $

#proposition(name: "Primitive midpoint parity bifurcation")[
Let $1<=p<q$ and $gcd(p,q)=1$.

- If $p$ and $q$ are both odd, $u=1/2$ is a nondegenerate trough for every
  $k in [0,1]$.

- If $p$ is even and $q$ is odd, $u=1/2$ is a crest for $0<=k<k_p$,
  degenerate at $k=k_p$, and a trough for $k>k_p$. For $k>k_p$ it is
  accompanied by two mirror-related nondegenerate crests. This is the
  anchored-crest splitting relevant to the even primitive Quplet.

- If $p$ is odd and $q$ is even, $u=1/2$ is a trough for $0<=k<k_p$,
  degenerate at $k=k_p$, and a crest for $k>k_p$. For $k>k_p$ it is
  accompanied by two mirror-related nondegenerate troughs. This pitchfork
  creates an unanchored crest and does not split any initial crest branch.

In either opposite-parity case, for $t in (0,pi/q)$ define

$ kappa(t)
  =
  (p sin(p t))/(p sin(p t)+q sin(q t)),
  quad
  Y^(plus.minus) (t)
  =
  1/2 plus.minus t/(2 pi).
$

Then $kappa$ extends continuously and strictly increasingly from
$[0,pi/q]$ onto $[k_p,1]$. The phases
$Y^(plus.minus) (kappa^(-1)(k))$ are the two noncentral stationary arms.
They are crests when $p$ is even and troughs when $p$ is odd, have equal
amplitudes by reflection, and satisfy

$ Y^(plus.minus) (1)=(q plus.minus 1)/(2q). $

For the unreduced pair $(n,d)=g(p,q)$, the primitive midpoint lifts to the
$g$ phases

$ x_r=(r+1/2)/g, quad r=0,dots,g-1. $

Hence every primitive midpoint pitchfork occurs simultaneously in exactly
$g$ translated copies.
] <even-mirror-bifurcation>

#proof[
At $u=1/2$,

$ partial_u^2 F_k ^(p,q) (1/2)
  =
  -(2 pi)^2
  ((1-k)p^2 (-1)^p+k q^2 (-1)^q).
$

If $p$ and $q$ are odd, this quantity is strictly positive, so the midpoint
is always a trough. Suppose instead that $p$ and $q$ have opposite parity
and put $s=(-1)^p$. Then

$ partial_u^2 F_k ^(p,q) (1/2)
  =
  -(2 pi)^2 s ((1-k)p^2-k q^2),
$

which vanishes only at $k=k_p$. At that parameter,

$ partial_u^4 F_(k_p) ^(p,q) (1/2)
  =
  (2 pi)^4 s
  (p^2 q^2 (p^2-q^2))/(p^2+q^2).
$

Since $p<q$, this fourth derivative is negative for even $p$ and positive
for odd $p$, giving the two stated pitchfork orientations.

Put $u=1/2+t/(2 pi)$. In the opposite-parity cases,

$ sin(2 pi p u)=s sin(p t),
  quad
  sin(2 pi q u)=-s sin(q t),
$

so the stationarity equation is equivalent to $k=kappa(t)$. For fixed
$t in (0,pi/q)$, the function
$lambda mapsto lambda cot(lambda t)$ is strictly decreasing on
$(0,pi/t)$ because

$ partial_lambda (lambda cot(lambda t))
  =
  (sin(2 lambda t)/2-lambda t)/(sin^2(lambda t))
  <0.
$

Therefore $p cot(p t)>q cot(q t)$, which makes $kappa$ strictly increasing;
its endpoint values are $k_p$ and $1$. At a stationary arm, put

$ R=(1-k)p sin(p t)=k q sin(q t)>0. $

Then

$ -(2 pi)^(-2) partial_u^2 F_k ^(p,q) (u)
  =
  s R (p cot(p t)-q cot(q t)).
$

The arms are consequently crests for even $p$ and troughs for odd $p$.
Reflection about $u=1/2$ gives equal amplitudes, and $t=pi/q$ gives the
stated endpoints. The $g$-fold multiplicity follows from
@primitive-period-reduction.
]

The example $(n,d)=(6,8)=2(3,4)$ has $p=3$ odd and $q=4$ even. It therefore
has two midpoint pitchforks, at $x=1/4$ and $x=3/4$, but they are
trough-to-crest pitchforks rather than splittings of anchored crests.

When $p$ is even, every other primitive anchor $i/p$, $i!=p/2$, has a
unique nearest $q$-grid site and continues by the same nondegenerate
short-corridor argument as in @anchored-continuation. The midpoint
bifurcation replaces one labeled primitive crest by an unordered mirror
pair and does not canonically choose one arm.

== Generalized Quplets

For a primitive pair define the *primitive period-respecting Quplet output*

$ cal(Q)(p,q)
  =
  cases(
    {Q(p,q)}, & p " odd",
    {Q^+ (p,q),Q^- (p,q)}, & p " even",
  ).
$

In the even case, $Q^+$ uses the upper midpoint resolution and $Q^-$ the
lower resolution; reflection exchanges them. If $p$ is odd and $q$ is even,
the unanchored midpoint pitchfork in @even-mirror-bifurcation does not alter
the singleton anchored Quplet.

For an arbitrary pair $(n,d)=g(p,q)$ with even $p$, each of the $g$ copied
anchored midpoint crests may be resolved locally to either arm. Denote the
resulting endpoint family by

$ cal(R)(n,d)
  =
  {Q^sigma (n,d): sigma in {+,-}^g}.
$

Thus $abs(cal(R)(n,d))=2^g$. Most choices break the actual period $1/g$ of
the signal. The period-respecting generalized Quplet output is the subset

$ cal(Q)(n,d)
  =
  {"Rep"_g (Q): Q in cal(Q)(p,q)}
  subset cal(R)(n,d).
$ <generalized-quplet-definition>

It consists of the two coherent choices $sigma=(+,dots,+)$ and
$sigma=(-,dots,-)$. Mixed local resolutions are legitimate selections from
the split branches, but they are not translation-equivariant and need not be
Euclidean. When $p$ is odd, no anchored tie occurs and $cal(Q)(n,d)$ is the
single repeated primitive Quplet.

#theorem(name: "General Euclidean endpoint theorem")[
Let $1<n<d$ be arbitrary, let $g=gcd(n,d)$, and let
$(p,q)=(n/g,d/g)$.

- If $p$ is odd, the period-respecting output $cal(Q)(n,d)$ is a singleton:
  $g$ repeated copies of the primitive Quplet $Q(p,q)$. This remains true
  when $q$ is even; the resulting midpoint pitchfork is unanchored.

- If $p$ is even, the full local resolution family has $2^g$ members, while
  $cal(Q)(n,d)$ consists of exactly two reflection-related,
  period-respecting configurations. They choose the same arm at all $g$
  anchored midpoint pitchforks.

Every member of $cal(Q)(n,d)$ has $n$ onsets on the $d$-pulse circle, its
cyclic gap word is $g$ repetitions of a primitive Euclidean gap word, and
its necklace is the Euclidean rhythm class $E(n,d)$.
] <general-euclidean-endpoint-theorem>

#proof[
If $p$ is odd, @euclidean-endpoint-theorem gives the primitive canonical
Quplet and @primitive-period-reduction lifts its anchored trajectories and
endpoint to $g$ translated copies. When $q$ is even,
@even-mirror-bifurcation concerns an unanchored central trajectory and does
not change this endpoint selection.

Suppose $p$ is even. The $p-1$ tie-free primitive anchors continue to their
nearest $q$-grid sites, while the middle anchor yields the two mirror
endpoints $(q plus.minus 1)/(2q)$. Resolving all repeated midpoint ties
upward gives

$ a_j^+=floor((j d)/n+1/2)=floor((j q)/p+1/2). $

For every $j in ZZ$ and every $ell in {1,dots,n-1}$,

$ a_(j+ell)^+-a_j^+
  in
  {floor((ell d)/n),ceil((ell d)/n)}.
$

This is the elementary floor-difference identity. Since $d/n>1$, the
selected sites are strictly ordered. The all-scale distance
characterization used in Section 4 therefore identifies this endpoint
necklace with $E(n,d)$. Reflection gives the coherent lower completion and
preserves the same condition. Finally, @repeated-nearest-grid-word proves
that both period-respecting endpoint words repeat with primitive period
$p$. Mixed members of $cal(R)(n,d)$ are excluded from this conclusion.
]

The theorem covers every pair with $1<n<d$. Pairs with $n>d$ reduce to this
orientation by exchanging the frequencies and replacing $k$ by $1-k$; the
case $n=d$ is the undeformed single-frequency profile.

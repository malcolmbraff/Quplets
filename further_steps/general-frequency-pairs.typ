#import "../definitions.typ": *

= General frequency pairs: primitive reduction and coherent lifts <general-frequency-pairs>

The paper works on a primitive period and treats the odd and even primitive
numerators separately. This note records the remaining formal extension to
arbitrary integer frequency pairs. It concerns period reduction and endpoint
structure; it does not assert an amplitude ordering beyond the range proved in
the paper.

Let $1<n<d$ be arbitrary and write
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
$
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
The identity follows from $n=g p$ and $d=g q$.
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

== Primitive outputs and coherent lifts

The parity relevant to the endpoint is the parity of the primitive numerator
$p$, not that of the unreduced frequency $n$. The odd-primitive theorem in
the paper supplies one anchored endpoint $Q(p,q)$. The even-primitive
extension supplies two mirror endpoints $Q^+(p,q)$ and $Q^-(p,q)$, obtained
by resolving the anchored midpoint branch on its two arms. Accordingly define

$ cal(Q)(p,q)
  =
  cases(
    {Q(p,q)}, & p " odd",
    {Q^+ (p,q),Q^- (p,q)}, & p " even",
  ).
$

If $p$ is odd and $q$ is even, the midpoint bifurcation is unanchored and
does not alter the singleton anchored output.

For an arbitrary pair $(n,d)=g(p,q)$ with even $p$, each of the $g$ copied
anchored midpoint crests admits either local resolution. Denote the full local
endpoint family by

$ cal(R)(n,d)
  =
  {Q^sigma (n,d): sigma in {+,-}^g}.
$

Thus $abs(cal(R)(n,d))=2^g$. Most choices break the actual period $1/g$ of
the signal. The period-respecting generalized Quplet output is

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
  $g$ repeated copies of the primitive Quplet $Q(p,q)$. This includes
  $p=1$ and remains true when $q$ is even.
- If $p$ is even, the full local resolution family has $2^g$ members, while
  $cal(Q)(n,d)$ consists of exactly two reflection-related,
  period-respecting configurations. They choose the same arm at all $g$
  anchored midpoint pitchforks.

Every member of $cal(Q)(n,d)$ has $n$ onsets on the $d$-pulse circle, its
cyclic gap word is $g$ repetitions of a primitive Euclidean gap word, and
its necklace is the Euclidean rhythm class $E(n,d)$.
] <general-euclidean-endpoint-theorem>

#proof[
If $p=1$, the primitive anchored endpoint is the single onset at the origin.
Its periodic lift consists of the $g=n$ points $r/g$, whose $d=g q$ pulse
gaps are all $q$. This is $E(n,d)$ directly.

If $p>1$ is odd, the paper's odd-primitive endpoint theorem gives
$Q(p,q)$. The primitive-period reduction lifts its anchored trajectories and
endpoint to $g$ translated copies. When $q$ is even, the central
pitchfork belongs to an unanchored trajectory and does not change this
endpoint selection.

Suppose $p$ is even. The paper's even-primitive extension gives $p-1$
tie-free anchored endpoints and two mirror resolutions of the middle anchor.
Resolving every repeated midpoint tie upward gives

$ a_j^+=floor((j d)/n+1/2)=floor((j q)/p+1/2). $

For every $j in ZZ$ and every $ell in {1,dots,n-1}$,

$ a_(j+ell)^+-a_j^+
  in
  {floor((ell d)/n),ceil((ell d)/n)}.
$

This is the elementary floor-difference identity. Since $d/n>1$, the
selected sites are strictly ordered. The all-scale distance characterization
used in the paper therefore identifies this endpoint necklace with $E(n,d)$.
Reflection gives the coherent lower completion and preserves the same
condition. Finally, @repeated-nearest-grid-word proves that both
period-respecting endpoint words repeat with primitive period $p$. Mixed
members of $cal(R)(n,d)$ are excluded from this conclusion.
]

The theorem covers every pair with $1<n<d$. Pairs with $n>d$ reduce to this
orientation by exchanging the frequencies and replacing $k$ by $1-k$; the
case $n=d$ is the undeformed single-frequency profile.

// Selector curves and thresholdless triggering of the anchored crests
// Companion note to "Crest continuation and canonical Euclidean-rhythm selection"
// Intended location: further_steps/selector-curves-and-triggering.typ

#set page(margin: (x: 2.6cm, y: 2.6cm))
#set par(justify: true, leading: 0.62em)
#set text(size: 10.5pt)
#set heading(numbering: "1.1.")

#let qed = [#h(1fr) $square$]

#align(center)[
  #text(size: 15pt)[*Selector curves and thresholdless triggering of the anchored crests*] \
  #v(0.3em)
  #text(size: 11pt)[Companion note to _Crest continuation and canonical Euclidean-rhythm selection_] \
]

#v(1em)

= Setting and motivation

Let $1<n<d$ be coprime, $n$ odd, and
$F_k (x)=k cos(2 pi d x)+(1-k)cos(2 pi n x)$ on $RR\/ZZ$. The main paper
proves (Theorem 6.3) that for every $k in (0,1)$ the $n$ anchored crest
branches $X_0 (k),dots,X_(n-1)(k)$ of Proposition 2.2 are precisely the
$n$ highest local maxima of $F_k$. Read as an accent profile, $F_k$
therefore carries a proved onset selection at every mixing setting.

The engineering question examined here: can a device trigger at the $n$
anchored crests _only_, for a freely varying $k$, without a tuned
amplitude threshold? Two design families are considered. The first pairs
$F_k$ with a companion _selector curve_ $T_k$ and triggers on
coincidences $T_k (x)=F_k (x)$; the second gates the stationary events of
$F_k$ by exact side conditions supplied by the theorems of the paper. The
outcome, in brief: selector curves are canonical and exact as
_representations_ of the selection but cannot be certified as
_characterizations_; the gate conditions are certified, and they lead to
a trigger architecture in which every comparator references zero --- no
level threshold appears anywhere.

Throughout, $G_k = partial_x F_k$, $H_k = partial_x^2 F_k$,
$k_c = n\/(n+d)$, $k_(p f)=n^2\/(n^2+d^2)$, $N=n+d$,
$q_i = floor(d i\/n+1\/2)$, $epsilon_i = n q_i - i d$, and
$Phi = cos(pi(n-1)\/N)$ is the anchored floor of Lemma 6.2.

= What a companion curve can and cannot do

*Lemma 2.1 (Parity obstruction).* Let $T$ be continuous and $1$-periodic
with $T-F_k$ having finitely many zeros, all sign-changing. Then the
number of zeros is even. In particular, since $n$ is odd, no continuous
periodic curve meets $F_k$ transversally at exactly the $n$ anchored
crests.
_Proof._ Sign changes of a continuous function pair up around the circle.
#qed

A meeting _at_ a crest is automatically transversal whenever
$T'(X_i)!=0$, because $(T-F_k)'(X_i)=T'(X_i)$. Consequently a curve that
meets $F_k$ _only_ at the crests must do so tangentially, and a curve
that meets transversally at the crests must also meet $F_k$ elsewhere.
Both behaviours occur below.

*Remark 2.2 (No slow-phase curve).* No selector of the form
$T(x)=g("dist"(x, 1/n ZZ))$ can interpolate the crest heights: the height
of a crest is not a function of its position inside the slow lobe. A
verified witness is $(n,d)=(7,50)$ at $k=0.0324037$, where two crests of
the lobe of $3\/7$ sit at slow distances $0.004965$ and $0.004483$ with
heights $0.958355$ and $0.930253$: the _nearer_ crest is the _lower_ one.
Any exact selector must therefore encode the fast phase. This is the same
lesson as the choice of the cell phase as the monotone variable in
Section 6 of the paper.

*Proposition 2.3 (Exact coincidence at slope balance).* At $k=k_c$, every
resonant stationary point satisfies $F_(k_c)(x)=cos(2 pi n x)$. In
particular all $n$ anchored crest tops lie exactly on the pure slow wave.
The full meeting set of the two curves is
$1/N ZZ union 1/(d-n) ZZ$.
_Proof._ At a resonant point $cos(2 pi d x)=cos(2 pi n x)$, so
$F_(k_c)=cos(2 pi n x)$; Corollary 3.4 places the anchored crests on the
resonant grid. The meeting set solves $cos(2 pi d x)=cos(2 pi n x)$,
i.e. $(d-n)x in ZZ$ or $(d+n)x in ZZ$. #qed

This identity is exact but parameter-locked: away from $k_c$ no
elementary closed form survives, for the structural reason of Remark 2.2.

= The canonical interpolant

*Proposition 3.1.* For every $k in (0,1)$ there is a unique trigonometric
polynomial $T_k$ of degree at most $(n-1)\/2$ with
$T_k (X_i (k)) = F_k (X_i (k))$ for $i=0,dots,n-1$. It depends
real-analytically on $k$ and equals the constant $1$ at both $k=0$ and
$k=1$.
_Proof._ Since $n$ is odd, the space of trigonometric polynomials of
degree at most $(n-1)\/2$ has dimension $n$ and is unisolvent at any $n$
distinct nodes (trigonometric Vandermonde). The nodes and values are
real-analytic in $k$ by Proposition 2.2, and at $k in {0,1}$ all values
equal $1$, whose unique interpolant is the constant. #qed

$T_k$ meets $F_k$ transversally at each crest (Lemma 2.1 forces
additional meetings, observed on the flanks). The coincidence system
$ T_k (x)=F_k (x) quad and quad G_k (x)=0 $
contains the anchored crests by construction; exactness would require
that no _unanchored_ stationary point ever lies on $T_k$. No theorem
protects this: between its nodes $T_k$ descends below the anchored floor
$Phi$, into the range where unanchored values live. Numerically the
system was exact in every tested configuration, but with thin clearance:
over $k in [0.02,0.98]$, the minimal distance from $T_k$ to an unanchored
stationary value was $3 dot 10^(-4)$ for $(5,7)$, $1.0 dot 10^(-3)$ for
$(7,50)$, $1 dot 10^(-4)$ for $(3,100)$, and $4.2 dot 10^(-3)$ for
$(9,20)$, with no sign change of the clearance. Verdict: $T_k$ is the
canonical _visualization_ of the selection --- exact at its nodes,
analytic in $k$, collapsing to the slow wave's role at $k_c$ by
Proposition 2.3 --- but not a certified trigger condition.

*Remark 3.2 (Tangential comb).* For any $lambda>0$,
$ T_lambda (x) = F_k (x) + lambda product_(i=0)^(n-1)
  sin^2 (pi (x - X_i (k))) $
satisfies $T_lambda >= F_k$ with equality exactly at the anchored crests:
the single equation $T_lambda (x)=F_k (x)$ has solution set
${X_i (k)}$, with second-order contact, consistent with Lemma 2.1. The
construction is exact but circular --- the comb is built from the crest
data. Any interpolating selector shares this status: it re-encodes the
selection; it cannot produce it. Producing it requires independent
structure, which the paper supplies and the next section uses.

= Certified trigger conditions

*Proposition 4.1 (Corridor gate).* For every $k in [0,1]$, the solution
set of
$ G_k (x)=0, quad x in union.big_(i=0)^(n-1) [i/n, q_i/d] $
(intervals taken in circular order, degenerate for $i=0$) is exactly
${X_0 (k),dots,X_(n-1)(k)}$.
_Proof._ Proposition 2.2: each corridor contains exactly one stationary
point for each $k$, namely the anchored crest. #qed

*Lemma 4.2 (Cell occupancy).* For all $k in [0,1]$ and all $i$,
$ floor(n X_i (k) + 1/2) = i, quad floor(d X_i (k) + 1/2) = q_i. $
_Proof._ By monotonicity, $X_i (k)$ lies between $i\/n$ and $q_i\/d$, so
$|X_i (k)-i\/n| <= |epsilon_i|\/(n d)$ and
$|d X_i (k)-q_i| <= |epsilon_i|\/n <= (n-1)\/(2n) < 1\/2$; likewise
$n|X_i (k)-i\/n| <= (n-1)\/(2d) < 1\/2$. #qed

*Proposition 4.3 (Residue gate).* For every $k in (0,1)$, a point
$x in RR\/ZZ$ is an anchored crest of $F_k$ if and only if
$ G_k (x)=0, quad H_k (x)<0, quad F_k (x)>0, quad
  |n floor(d x + 1/2) - d floor(n x + 1/2)| <= (n-1)/2. $
_Proof._ Anchored crests satisfy all four: stationarity and the crest
condition by Proposition 2.2, positivity by the floor
$F_k (X_i) >= Phi > 0$ of Lemma 6.2, and the residue condition by
Lemma 4.2, since $|n q_i - d i| = |epsilon_i| <= (n-1)\/2$.

Conversely, let $x$ be a crest with $F_k (x)>0$ and residue at most
$(n-1)\/2$, and write $i,p$ for the two roundings. For $k<k_c$, positivity
excludes the outer (half-grid-side) component, whose height is negative
throughout (Section 6.3), so $x$ lies on the central grid-side sheet; the
cell phase is strictly increasing along the crest portion of that sheet,
so each pair $(i,p)$ carries at most one grid-side crest, and the
anchored crest occupies $(i,q_i)$ by Lemma 4.2; an unanchored grid-side
crest therefore has $p != q_i$ and residue
$|n p - d i| >= n-|epsilon_i| >= (n+1)\/2$ (Section 6.5), contradiction;
hence $x$ is anchored. For $k>k_c$, Proposition 6.1 places every crest in
a fast window with integer residue $r_p = n p - d i$ reduced centrally,
and the anchored windows are exactly those with $|r_p| <= (n-1)\/2$. At
$k=k_c$ the window branches and their integer residues extend by
continuity, and Corollary 3.4 identifies the anchored selection; the
classification persists. #qed

All four conditions reference only zero levels and integer arithmetic:
an event ($G=0$), a direction ($H<0$), a sign ($F>0$), and a residue
computed from two cycle counters. No amplitude threshold occurs, and no
comparison between crest heights is ever performed --- the ranking is
carried entirely by Theorem 6.3.

= A thresholdless trigger architecture

The residue gate translates directly into hardware or DSP. One master
phase $phi(t) in RR\/ZZ$ drives two coherent oscillators at cycle counts
$n$ and $d$ per period (a coprime divider chain from one clock);
their weighted sum is $F_k$, with $k$ a live crossfade. The trigger path:

1. _Event._ Detect falling zero crossings of $F'_k$
   (differentiator plus zero comparator): all crests, anchored or not.
2. _Latch._ At the event, latch the nearest-cycle indices
   $i = floor(n phi + 1\/2)$ and $p = floor(d phi + 1\/2)$ from the two
   phase accumulators.
3. _Gate._ Fire if and only if $|n p - d i| <= (n-1)\/2$ and
   $F_k > 0$ (a sign comparator against ground).

By Proposition 4.3 the output fires at the anchored crests and nowhere
else, for every fixed or slowly varying $k in (0,1)$: the device is a
continuously morphing sequencer whose trigger pattern deforms from the
regular $n$-tuplet ($k -> 0$) through the exact threshold configuration
$Q(n,N)$ at $k=k_c$ (Corollary 4.2 of the paper) to the Euclidean Quplet
$Q(n,d)$ ($k -> 1$), with proved correctness at every intermediate
setting.

Robustness remarks. The residue margin is a full integer --- accepted
cells satisfy $|n p - d i| <= (n-1)\/2$, rejected ones
$>= (n+1)\/2$ --- so a latch error smaller than half a fast cell cannot
flip the gate. The stationary pairs born in $[k_(p f), k_c]$ appear in
rejected cells or on the negative outer component, so births and deaths
of competitors never touch the trigger stream. Degenerate threshold
points (when $d$ is odd) carry $F_(k_c)=0$ and are removed by the sign
condition. Near $k=1$ all crests approach height $1$ and the derivative
zeros crowd at spacing $1\/d$, so the required timing resolution scales
with $d$; the selection itself remains strict for every $k<1$.

The corridor gate of Proposition 4.1 gives an alternative analog-flavored
architecture --- trigger enabled only while the phase pair lies inside a
corridor --- exact on the closed interval $[0,1]$, at the cost of
window logic instead of one integer comparison.

= Validation summary

The claims above were exercised numerically against direct crest
extraction (dense sampling plus bisection on $G_k$): the residue
classification of Proposition 4.3 agreed with corridor membership for
every stationary point over four pairs
$(5,7),(7,50),(3,100),(9,20)$ and $49$ values of $k$ spanning
$(0,1)$; the phase-sheet monotonicity underlying it was confirmed on
$18$ configurations across six pairs, with reflection ties exactly equal;
the slope-balance identity of Proposition 2.3 holds to $3 dot 10^(-15)$;
and the interpolant clearances of Section 3 are as reported. An
interactive tracer (`../python/scripts/T_k(x).py`) draws $F_k$, $T_k$,
and the anchored crests under a live $k$ slider, with the
$cos(2 pi n x)$ coincidence displayed near $k_c$.

Nothing in this note is needed by the main paper; it records the
selector-curve exploration and the certified trigger design built on
Theorem 6.3.

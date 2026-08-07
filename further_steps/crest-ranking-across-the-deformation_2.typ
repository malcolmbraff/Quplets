// Crest ranking across the deformation
// Companion note to "Introducing Quplets: from crest trajectories to Euclidean rhythms"
// Supersedes: amplitude-ranking-above-slope-balance.typ
// Intended location: further_steps/crest-ranking-across-the-deformation.typ

#set page(margin: (x: 2.6cm, y: 2.6cm))
#set par(justify: true, leading: 0.62em)
#set text(size: 10.5pt)
#set heading(numbering: "1.1.")

#let qed = [#h(1fr) $square$]
#let sgn = math.op("sgn")

#align(center)[
  #text(size: 15pt)[*Crest ranking across the deformation*] \
  #v(0.3em)
  #text(size: 11pt)[Companion note to _Introducing Quplets_, with a roadmap for revising the paper] \
  #v(0.3em)
  Malcolm Braff, HSM Basel, FHNW
]

#v(1em)

*Abstract.*
This note is the detailed supplement to the main paper's ranking results,
focused on what remains open: the subcritical cascade. For
$k in [k_c, 1)$, $k_c = n\/(n+d)$: no bifurcation occurs, the $d$ crests of
the pure carrier persist, and their amplitudes are completely ordered by the
centered residue $|r_j equiv n j (mod d)|$, equivalently by distance to the
$n$-grid; the anchored crests occupy the $n$ smallest values and are
strictly the $n$ highest maxima, all $d$ heights tying only at $k = 1$
(Sections 2--6). Along each anchored branch the amplitude is a convex
function of $k$ with vanishing derivative at $k_c$, giving the uniform floor
$A_i (k) >= cos(2 pi epsilon_i \/ N) >= cos(pi (n-1)\/N)$, $N = n + d$, on
all of $[0, 1)$ (Section 7). Below $k_c$ the crest count descends from $d$
to $n$ through a cascade of annihilations; each of the $n$ windows around
the $n$-grid retains a crest containing the anchored branch, but the total
distance ranking fails among the doomed crests, so the correct statement
below slope balance is the top-$n$ property alone. That property is proved
for $k <= n^2\/(n^2+2d^2)$ and on an explicit strip $[k_c - h_0, k_c)$:
degeneracies of $F_k$ occur only at or below slope balance, with amplitude
at most $C sqrt(k_c - k)$, too low to bridge the resonant gap within the
strip, whether the crest is continued from $k_c$ or newborn. For two of the
five cascade pairs tested the strip contains the entire observed cascade.
Elsewhere the property holds at every sampled parameter, with subcritical
margins never more than about $8%$ below the resonant gap
$2 sin(pi\/N) sin(pi n\/N)$ inherited at $k_c$, and would follow everywhere
from the sufficient condition that doomed crests stay below the floor until
annihilation. A final section lists the remaining revision items for the
paper.

#v(0.5em)

= Introduction

Notation is that of the main paper #cite(<quplets>, form: "normal"):
$1 < n < d$ coprime, $n$ odd, anchored branches $X_i (k)$ with endpoints
$X_i (1) = m_i\/d$, $m_i = floor(d i\/n + 1\/2)$, rounding residues
$epsilon_i = n m_i - i d$ forming the complete centered residue system modulo
$n$, and $k_c = n\/(n+d)$. The main paper now proves that the $n$ anchored
crests are the $n$ highest local maxima of $F_k$ on $[k_c, 1)$ and on
$(0, n^2\/(n^2+2d^2)]$; Theorem 7.5 below extends the proven region by an
explicit strip $[k_c - h_0, k_c)$, so the remaining open region is the part
of the subcritical cascade beneath the strip. This note supplies the detailed proofs of the upper-interval
ranking (Sections 2--6), the convexity floor (Section 7.2), and the
corrected empirical anatomy of the cascade (Section 7.4), and closes with
the remaining revision items.

The idea developed here is to run the deformation backwards. Writing
$ F_k (x) = k [ cos(2 pi d x) + kappa cos(2 pi n x) ], quad
  kappa = (1-k)/k in [0, oo), $
the parameter $kappa$ measures a slow perturbation of the pure $d$-carrier.
At $kappa = 0$ (that is, $k = 1$) there are exactly $d$ crests, all of height
$1$, at the $d$-grid. As $kappa$ grows, the slow component modulates the
carrier, and the $d$-crests nearest the crests of $cos(2 pi n x)$ are
amplified the most. Two observations turn this heuristic into a proof valid
on the whole interval $k in (k_c, 1]$:

- $k_c$ is exactly the parameter at which the maximal slope of the slow
  component, $2 pi n kappa dot k = 2 pi (1-k) n$, reaches the maximal slope
  of the carrier, $2 pi k d$. Above slope balance, stationary points can
  neither merge nor be created (Section 3), so the perturbative picture is
  structurally exact on $(k_c, 1]$, not merely for small $kappa$.

- The amplitude of the crest at site $j\/d$ depends on $j$ only through the
  centered residue $r_j equiv n j (mod d)$ (Section 4), and is strictly
  decreasing in $|r_j|$ (Section 5). The anchored sites are precisely those
  with $|r_j| <= (n-1)\/2$.

= The reversed frame and the first-order ranking

For $k$ close to $1$, the crest near $j\/d$ has amplitude
$ A_j (k) = k + (1-k) cos((2 pi n j)/d) + O((1-k)^2), $
so to first order the $d$ crests are ranked by $cos(2 pi n j\/d)$: the
$d$-crests closest to the maxima of the slow component are amplified most.
The arithmetic bookkeeping is the following.

#block(above: 1.1em, below: 1.1em)[
*Lemma 2.1* (Residues of the sites).
As $j$ runs over $\{0, dots, d-1\}$, the centered residues
$r_j equiv n j (mod d)$, $|r_j| <= d\/2$, take every centered value exactly
once. The anchored endpoint sites $j = m_i$ are exactly the $n$ sites with
$|r_j| <= (n-1)\/2$, and there $r_(m_i) = epsilon_i$.
]

_Proof._
The map $j |-> n j (mod d)$ is a bijection since $gcd(n,d) = 1$. From
$epsilon_i = n m_i - i d$ we get $n m_i equiv epsilon_i (mod d)$, and
$|epsilon_i| <= (n-1)\/2 < d\/2$, so the centered residue of the site $m_i$
is $epsilon_i$. As $i$ runs over $\{0, dots, n-1\}$, the $epsilon_i$ exhaust
the centered residues of magnitude at most $(n-1)\/2$ (Corollary 5.1 of the
main paper), and these values are distinct centered residues modulo $d$
because $d > n$. By bijectivity no other site can carry a residue of
magnitude $<= (n-1)\/2$.
#qed

So already at first order, the $n$ highest crests are the anchored ones, the
$(n+1)$-st crest trailing by
$(1-k)[cos(pi (n-1)\/d) - cos(pi (n+1)\/d)] + O((1-k)^2)$. The rest of the
note removes the $O((1-k)^2)$.

= No bifurcations above slope balance

#block(above: 1.1em, below: 1.1em)[
*Lemma 3.1* (Persistence).
Let $k in (k_c, 1]$. Then $F_k$ has exactly $2d$ stationary points, all
nondegenerate: one crest in each window
$ W_j = (j/d - 1/(4d), #h(0.4em) j/d + 1/(4d)), quad j = 0, dots, d-1, $
and one trough in each complementary window. In particular, no crest--trough
bifurcation occurs on $(k_c, 1]$, and the $d$ crests of $k = 1$ continue to
$k_c$.
]

_Proof._
$F'_k = -2 pi phi$ with
$phi(x) = k d sin(2 pi d x) + (1-k) n sin(2 pi n x)$, a trigonometric
polynomial of degree $d$, hence with at most $2d$ zeros on the circle. At the
$2d$ quarter-grid points $x_s = (2s+1)\/(4 d)$ we have
$sin(2 pi d x_s) = (-1)^s$, so
$ phi(x_s) = (-1)^s k d + (1-k) n sin(2 pi n x_s), $
and $|(1-k) n sin(2 pi n x_s)| <= (1-k) n < k d$ precisely because
$k > k_c$. Hence $sgn thin phi(x_s) = (-1)^s$: the sign alternates $2d$
times, so $phi$ has at least $2d$ zeros, therefore exactly $2d$, all simple
(a multiple zero would raise the count with multiplicity above the degree
bound), and exactly one in each interval $(x_(s-1), x_s)$. Simplicity of the
zeros of $phi$ gives $F''_k != 0$ at every stationary point. On the window
$W_j$, the boundary values satisfy $phi < 0$ on the left edge and
$phi > 0$ on the right edge, so $F'_k$ points inward at both edges and the
unique interior stationary point is a local maximum.
#qed

For $n, d$ both odd with $n + d equiv 0 (mod 4)$, the persistence bound is
sharp in a pointed way: at $x = 1\/4$ both sines are extremal with opposite
signs, so $F'_(k_c)(1\/4) = F''_(k_c)(1\/4) = 0$ while
$F'''_(k_c)(1\/4) != 0$; a degenerate stationary point sits at $x = 1\/4$
(and $3\/4$) exactly at slope balance, and pair creation begins there as $k$
decreases through $k_c$. (Checked for $(5,7)$: at $k_c = 5\/12$, both
$F'$ and $F''$ vanish at $1\/4$ and the cubic term is nonzero.)

= Residue reduction and the window function

#block(above: 1.1em, below: 1.1em)[
*Lemma 4.1* (Residue reduction).
Let $k in (k_c, 1]$ and let $A_j (k)$ denote the amplitude of the crest in
$W_j$. Then
$ A_j (k) = M(c_j), quad c_j = (2 pi r_j)/d, $
where
$ M(c) = max_(|u| <= 1/(4d)) h(u; c), quad
  h(u; c) = k cos(2 pi d u) + (1-k) cos(c + 2 pi n u). $
Moreover $M$ is even and $2 pi$-periodic in $c$, so $A_j$ depends on $j$ only
through $|r_j|$; in particular mirror sites $j$ and $d - j$ have equal
amplitudes.
]

_Proof._
Substituting $x = j\/d + u$ gives
$cos(2 pi n x) = cos(2 pi n j\/d + 2 pi n u) = cos(c_j + 2 pi n u)$, since
$n j\/d$ and $r_j\/d$ differ by an integer. By Lemma 3.1 the crest is the
unique stationary point in $W_j$ and $F'_k$ points inward at both window
edges, so the maximum of $h$ over the closed window is attained at that
interior point and nowhere on the boundary; hence the crest amplitude equals
$M(c_j)$. Evenness follows from $h(-u; -c) = h(u; c)$.
#qed

#block(above: 1.1em, below: 1.1em)[
*Lemma 4.2* (Strict monotonicity).
Let $k in (k_c, 1)$. Then $M$ is strictly decreasing on $(0, pi)$.
]

_Proof._
Fix $c in (0, pi)$. The argmax $u^*$ of $h(dot; c)$ is the unique interior
critical point supplied by Lemma 3.1, so $M$ is differentiable in $c$ with
$ M'(c) = (partial h)/(partial c)(u^*; c) = -(1-k) sin(c + 2 pi n u^*), $
and it suffices to prove $c + 2 pi n u^* in (0, pi)$.

_The crest lies left of the anchor._ At $u = 0$,
$partial_u h = -2 pi (1-k) n sin c < 0$, while at the left window edge
$u = -1\/(4d)$,
$ partial_u h = 2 pi k d - 2 pi (1-k) n sin(c - (pi n)/(2 d)) >= 2 pi (k d - (1-k) n) > 0, $
again exactly because $k > k_c$. Since the critical point is unique,
$u^* in (-1\/(4d), 0)$, and therefore
$c + 2 pi n u^* < c < pi$.

_The crest lies right of the slow attractor._ If $c >= pi n\/(2d)$, then
$c + 2 pi n u^* > c - pi n\/(2 d) >= 0$, strictly because $u^*$ is interior.
If $c < pi n\/(2 d)$, the alignment point $u_a = -c\/(2 pi n)$, where the
slow component peaks, lies inside the window, and there
$ partial_u h (u_a) = -2 pi k d sin(- (d c)/n) = 2 pi k d sin((d c)/n) > 0, $
since $0 < d c\/n < pi\/2$. So $h$ is increasing at $u_a$, and by uniqueness
of the critical point $u^* > u_a$, i.e. $c + 2 pi n u^* > 0$.

In both cases $c + 2 pi n u^* in (0, pi)$, hence $M'(c) < 0$.
#qed

#block(above: 1.1em, below: 1.1em)[
*Lemma 4.3* (The anchored branches are the window crests).
Let $k in [k_c, 1]$ and $i in \{0, dots, n-1\}$. Then $X_i (k) in W_(m_i)$,
and $X_i (k)$ is the crest of Lemma 3.1 in that window.
]

_Proof._
By Corollary 3.3 of the main paper and $floor(N i\/n + 1\/2) = i + m_i$,
$ X_i (k_c) = (i + m_i)/N, quad "so" quad
  m_i/d - X_i (k_c) = (n m_i - i d)/(d N) = epsilon_i/(d N), $
and $|epsilon_i|\/(d N) <= (n-1)\/(2 d (n+d)) < 1\/(4d)$ because
$n - 2 < d$. So $X_i (k_c) in W_(m_i)$. On $[k_c, 1]$ the branch moves
monotonically along its corridor toward its endpoint $m_i\/d$ (Proposition
2.2 of the main paper), hence stays between $X_i (k_c)$ and $m_i\/d$, both in
$W_(m_i)$. Being a stationary point of $F_k$ in $W_(m_i)$, it is the unique
one, namely the crest.
#qed

= The ranking theorem

#block(above: 1.1em, below: 1.1em)[
*Theorem 5.1* (Complete amplitude ranking above slope balance).
Let $1 < n < d$ be coprime with $n$ odd, and let $k in (k_c, 1)$. Then $F_k$
has exactly $d$ crests, one per window $W_j$, and their amplitudes satisfy
$ |r_j| < |r_(j')| quad ==> quad A_j (k) > A_(j') (k), $
with equality of amplitudes exactly for mirror pairs $r_(j') = -r_j$.
Consequently the $n$ anchored crests are strictly the $n$ highest local
maxima of $F_k$, with gap at least
$ A^((n)) - A^((n+1)) = M((pi (n-1))/d) - M((pi (n+1))/d) > 0 . $
]

_Proof._
Combine Lemmas 3.1, 4.1, 4.2 for the ranking; Lemma 2.1 identifies the sites
with $|r| <= (n-1)\/2$ as the anchored endpoints, and Lemma 4.3 identifies
the crests in those windows with the anchored branches. The order statistics
$A^((n)), A^((n+1))$ are attained at $|r| = (n-1)\/2$ and $(n+1)\/2$ by
monotonicity.
#qed

#block(above: 1.1em, below: 1.1em)[
*Corollary 5.2.*
The top-$n$ property holds on $[k_c, 1]$, strictly on $[k_c, 1)$: for every
$k in [k_c, 1)$ the anchored crests are strictly the $n$ highest local
maxima, and at $k = 1$ they are among the maxima of largest height (all $d$
crest heights being equal there). The case $k = k_c$ is Proposition 3.1 of
the main paper; the case $k in (k_c, 1)$ is Theorem 5.1.
]

Theorem 5.1 is strictly stronger than the conjecture on its range: it orders
_all_ $d$ crests, not only the top $n$, by the single arithmetic invariant
$|r_j|$. At $k = k_c$ this ranking degenerates onto the resonant heights
$cos(2 pi r\/N)$ of the main paper, which are likewise ordered by $|r|$: the
threshold selection of Proposition 3.1 is the boundary case of a ranking
valid on the entire upper half of the deformation.

= Numerical verification

For each pair below, all crests of $F_k$ were located by sign-change
bracketing and bisection (precision $30$ digits) at four parameters
$k = k_c + t (1 - k_c)$, $t in \{0.02, 0.25, 0.6, 0.95\}$. In every case the
crest count equals $d$ exactly, the full amplitude ranking coincides with the
$|r|$-ranking, the anchored crests are the top $n$, and the $n$-to-$(n+1)$
gap is as follows.

#table(
  columns: (auto, auto, auto, auto, auto),
  align: (center, center, center, center, center),
  stroke: 0.4pt,
  table.header([$(n,d)$], [$t = 0.02$], [$t = 0.25$], [$t = 0.6$], [$t = 0.95$]),
  [$(5,7)$],  [$0.495$], [$0.360$], [$0.172$], [$0.020$],
  [$(5,8)$],  [$0.446$], [$0.352$], [$0.181$], [$0.022$],
  [$(7,9)$],  [$0.377$], [$0.253$], [$0.112$], [$0.013$],
  [$(7,12)$], [$0.301$], [$0.245$], [$0.129$], [$0.016$],
  [$(9,11)$], [$0.303$], [$0.188$], [$0.078$], [$0.009$],
)

The gap closes toward $k = 1$ (all heights tend to $1$) and opens toward
$k_c$, consistent with the first-order estimate of Section 2 and with the
resonant gap $cos(pi (n-1)\/N) - cos(pi (n+1)\/N)$ at $k_c$.

= Below slope balance

For $k < k_c$ the slow slope exceeds the carrier slope on part of the
circle, tangencies become possible, and the crest count must descend from
$d$ to $n$. Corrected numerics (Section 7.4) show this happens through a
cascade of separate annihilation events spread over an interval of width up
to $approx 0.15$, not at once. Three rigorous statements frame the cascade.

== Mirror persistence

#block(above: 1.1em, below: 1.1em)[
*Lemma 7.1* (One crest per $n$-window).
Let $k in (0, k_c)$ and $V_i = (i/n - 1/(4n), i/n + 1/(4n))$. Then each
$V_i$ contains at least one crest, and the anchored branch $X_i (k)$ lies in
$V_i$.
]

_Proof._
At the quarter-points $y_s = (2s+1)/(4n)$,
$phi(y_s) = (1-k) n (-1)^s + k d sin(2 pi d y_s)$ and
$|k d sin(2 pi d y_s)| <= k d < (1-k) n$ exactly because $k < k_c$; so
$F'_k$ points inward at both edges of $V_i$ and an interior maximum exists.
For the anchored branch,
$X_i (k_c) - i/n = epsilon_i/(n N)$ and $|epsilon_i|/(n N) < 1/(4 n)$,
so $X_i (k_c) in V_i$; on $[0, k_c]$ the branch lies between its origin
$i/n$ and $X_i (k_c)$ by corridor monotonicity, hence in $V_i$.
#qed

The asymmetry with Lemma 3.1 is the degree bound: $phi$ has degree $d$, so
the $2n$ sign alternations cannot cap the number of stationary points, and
extra crests do coexist with the anchored ones throughout the cascade. The
mirror argument therefore controls existence and location of the anchored
family, but not the total count; this is precisely why the region below
$k_c$ is harder than the region above.

== A uniform amplitude floor

#block(above: 1.1em, below: 1.1em)[
*Lemma 7.2* (Convexity and the uniform floor).
Along each anchored branch, $A_i (k) = F_k (X_i (k))$ is convex on $[0, 1)$
with $A'_i (k_c) = 0$; consequently $A_i$ is nonincreasing on $[0, k_c]$,
nondecreasing on $[k_c, 1)$, and
$ A_i (k) >= A_i (k_c) = cos((2 pi epsilon_i)/N) >= cos((pi (n-1))/N)
  quad "for every" k in [0, 1). $
]

_Proof._
By the envelope identity,
$A'_i (k) = partial_k F_k (X_i (k)) = cos(2 pi d X_i) - cos(2 pi n X_i)$.
Since $F_k$ is linear in $k$, $partial_(k k) F_k = 0$, so differentiating
once more and using $X'_i = - partial_(k x) F_k \/ partial_(x x) F_k$
(implicit differentiation of $partial_x F_k (X_i (k)) = 0$),
$ A''_i (k) = partial_(k x) F_k (X_i) dot X'_i
  = - ((partial_(k x) F_k (X_i))^2)/(partial_(x x) F_k (X_i)) >= 0, $
because $partial_(x x) F_k (X_i) < 0$: the branch is a nondegenerate
maximum for all $k in [0, 1)$ (Proposition 2.2 of the main paper). At
$k_c$, $X_i (k_c) = (i + m_i)/N$ and $d equiv -n (mod N)$ give
$cos(2 pi d X_i) = cos(2 pi n X_i) = cos(2 pi epsilon_i \/ N)$, hence
$A'_i (k_c) = 0$ and $A_i (k_c) = cos(2 pi epsilon_i \/ N)$. A convex
function with vanishing derivative at $k_c$ attains its global minimum
there. (For $i = 0$ the branch is $X_0 equiv 0$, $A_0 equiv 1$, consistent
with $epsilon_0 = 0$.)
#qed

This also proves the unimodality of the anchored amplitudes, with minimum
exactly at slope balance, previously only observed numerically.

The anchored family therefore never sinks below the resonant heights it has
at $k_c$; combined with the entry values of the doomed crests (at most
$cos(pi (n+1)\/N)$, or negative), every doomed crest enters the cascade with
deficit at least the resonant gap
$ Delta_(n,d) = cos((pi (n-1))/N) - cos((pi (n+1))/N)
  = 2 sin(pi/N) sin((pi n)/N). $

== Emptiness for small $k$

#block(above: 1.1em, below: 1.1em)[
*Proposition 7.3* (No unanchored crests for small $k$).
Let $sigma(k) = k d \/ ((1-k) n)$ and $tau(k) = k d^2 \/ ((1-k) n^2)$. If
$tau(k) < sqrt(1 - sigma(k)^2)$, then every crest of $F_k$ is anchored. In
particular this holds, and the conjecture with it, on
$(0, thin n^2\/(n^2 + 2 d^2)]$.
]

_Proof sketch._
At any stationary point $|sin(2 pi n x)| <= sigma(k)$, confining stationary
points to arcs around the $n$-grid and $n$-half-grid; the crest condition
forces $cos(2 pi n x) > -tau(k)$, which under the stated inequality
excludes the half-grid arcs; within an anchor arc
$cos(2 pi n x) >= sqrt(1 - sigma^2) > tau$ excludes troughs, so each arc
holds exactly one crest, the anchored one.
#qed

== The cascade, empirically

Corrected crest counts (the scan must not drop the fixed branch
$X_0 equiv 0$, whose amplitude is exactly $1$ for every $k$) give the
following structure. In the three pairs tested with $d < 2n$
($(5,7)$, $(7,9)$, $(9,11)$) there is _no cascade_: the count is exactly
$n$ on all of $(0, k_c)$, the clean mirror regime extends to the pure
$n$-grid, and the descent from the $d$-grid to the $n$-grid crosses a
single transition at $k_c$. Whether this persists for all $d < 2n$ has not
been tested beyond these pairs. For larger $d\/n$ the cascade is real and
wide:

#table(
  columns: (auto, auto, auto, auto, auto),
  align: (center, center, center, center, center),
  stroke: 0.4pt,
  table.header([$(n,d)$], [cascade interval], [width], [worst margin], [$Delta_(n,d)$]),
  [$(7,12)$], [$[0.254, 0.368]$], [$0.114$], [$+0.295$], [$0.301$],
  [$(5,11)$], [$[0.265, 0.312]$], [$0.047$], [$+0.312$], [$0.324$],
  [$(3,10)$], [$[0.083, 0.230]$], [$0.148$], [$+0.299$], [$0.317$],
  [$(5,13)$], [$[0.211, 0.277]$], [$0.067$], [$+0.248$], [$0.266$],
  [$(7,16)$], [$[0.161, 0.304]$], [$0.143$], [$+0.204$], [$0.223$],
)

Here "worst margin" is the minimum, over sampled $k in (0, k_c)$ at which
more than $n$ crests exist, of the difference between the $n$-th and
$(n+1)$-st highest crest amplitudes. (On $[k_c, 1)$ positivity is Theorem
5.1, and the gap there closes as $k -> 1$, so a whole-interval minimum
would only report the trivial ties at the right endpoint.) Two readings of
the subcritical table. First, the
margin is strictly positive at every sampled parameter of every pair: no
doomed crest ever overtakes the anchored family. Second, the worst margin
never falls more than about $8%$ below the entry deficit $Delta_(n,d)$: the
deficit inherited at $k_c$ is essentially never eroded during the cascade.
The doomed crests die at the bottom of the field (e.g. for $(7,12)$ at
$k = 0.30$ the last doomed crest sits at $x = 1/2$ with amplitude $-0.40$
against an anchored floor of $+0.56$).

One caution. The complete ranking of Theorem 5.1 does _not_ extend below
$k_c$: sorting all crests by distance to the $n$-grid fails to sort them by
amplitude at many parameters inside the cascade (the failures occur among
the doomed crests), and at isolated parameters the $n$ crests nearest the
$n$-grid are not the $n$ anchored ones, even though the anchored ones remain
the $n$ highest. Below slope balance the correct invariant is anchoring
(continuation), not momentary proximity, and the correct statement is the
top-$n$ property alone.

== A proven strip below slope balance

The obstruction of Section 7.1 (no upper bound on the crest count) can be
bypassed on an explicit strip below $k_c$, without positional control of the
doomed branches, because degeneracies are amplitude-starved near slope
balance.

#block(above: 1.1em, below: 1.1em)[
*Lemma 7.4* (Degeneracies are low).
Suppose $F'_(k^*)(x^*) = F''_(k^*)(x^*) = 0$ with $x^* in.not {0, 1\/2}$.
Then $k^* <= k_c$, and with $u = k_c - k^*$,
$ F_(k^*)(x^*)^2
  = ((d^2-n^2) thin N u thin ((1-k^*)n + k^* d))/(n^2 d^2)
  <= (2 N (d-n))/(n d) thin u, $
so $F_(k^*)(x^*) <= C sqrt(u)$ with $C = sqrt(2N(d-n)\/(n d))$.
]

_Proof._
Write $a = 2 pi d x^*$, $b = 2 pi n x^*$, $rho = (1-k^*)n\/(k^* d)$. The two
degeneracy equations read $k^* d sin a + (1-k^*) n sin b = 0$ and
$k^* d^2 cos a + (1-k^*) n^2 cos b = 0$, i.e. $sin a = -rho sin b$ and
$cos a = -rho (n\/d) cos b$ (the sine and cosine of $b$ do not both vanish
since $x^* != 0, 1\/2$). Squaring and adding,
$1 = rho^2 (1 - (1 - n^2\/d^2) cos^2 b)$; hence $rho >= 1$, which is
$k^* <= k_c$, and $cos^2 b = (rho^2 - 1)\/(rho^2 (1 - n^2\/d^2))$.
Substituting $k^* cos a = -(1-k^*)(n^2\/d^2) cos b$ into
$F_(k^*)(x^*) = k^* cos a + (1-k^*) cos b$ gives
$F_(k^*)(x^*) = (1-k^*)(1 - n^2\/d^2) cos b$; squaring and using
$(1-k^*)\/rho = k^* d\/n$ and $(1-k^*)n - k^* d = N(k_c - k^*)$ yields the
identity. The inequality is
$(1-k^*)n + k^* d = 2 n d\/N - u(d-n) <= 2 n d\/N$.
#qed

The identity is exact at real events: for $(7,12)$ the mirror pair dies at
$k^* = 0.33930$ with amplitude $0.2550$; the identity gives $0.2545$ and the
bound $C sqrt(u)$ gives $0.2567$. As a byproduct, $rho >= 1$ re-proves that
no degeneracy of any kind occurs above slope balance.

#block(above: 1.1em, below: 1.1em)[
*Theorem 7.5* (Strip below slope balance).
Let $phi = cos(pi (n-1)\/N)$, $c_0 = max(cos(pi (n+1)\/N), 0)$, $C$ as
above, and
$ h_0 = min{ (phi - c_0)/2, #h(0.6em) ((sqrt(C^2 + 8 phi) - C)/4)^2 }. $
Then for every $k in [k_c - h_0, k_c)$ every unanchored crest of $F_k$ has
amplitude strictly below $phi$; combined with Lemma 7.2, the anchored
crests are strictly the $n$ highest local maxima of $F_k$ for every
$k in [k_c - h_0, 1)$.
]

_Proof._
Fix $k$ with $h = k_c - k <= h_0$ and an unanchored crest, and follow its
branch upward in the parameter. The only stationary points where the sines
of both frequencies vanish are $x = 0$, which carries the anchored branch
$X_0$, nondegenerate for every $k$, and $x = 1\/2$, which for $d$ even is a
crest exactly for $k > n^2\/(n^2+d^2)$, whose branch then continues to
$k_c$; the transition at $x = 1\/2$ absorbs that crest into a trough and
creates none (the fourth derivative is positive at the critical parameter).
Hence exactly one of two cases holds.

(i) _The branch continues to $k_c$._ Its limit is an unanchored crest or a
degenerate stationary point of $F_(k_c)$, whose value is at most $c_0$: the
unanchored stationary values at $k_c$ are the resonant heights
$cos(2 pi r\/N)$ with $|r| >= (n+1)\/2$, the negative values of the
complementary family (Propositions 3.1 and Corollary 3.3 of the main
paper), and the value $0$ at degenerate quarter-points. Along the branch
$|dif A\/dif k| = |cos(2 pi d X) - cos(2 pi n X)| <= 2$, so
$A(k) <= c_0 + 2h < phi$ by the first term in $h_0$.

(ii) _The branch terminates at a degeneracy at some $k^* in (k, k_c)$._
Going downward in $k$ this is the birth of the crest together with its
adjacent trough, at the common amplitude $F_(k^*)(x^*) <= C sqrt(u)$,
$u = k_c - k^*$ (Lemma 7.4). The climb bound then gives
$A(k) <= C sqrt(u) + 2 (h - u) <= C sqrt(h) + 2 h < phi$, since
$t = sqrt(h_0)$ satisfies $2 t^2 + C t <= phi$ by the second term in $h_0$.
#qed

The theorem assumes nothing about the cascade: births below $k_c$ are
permitted (none were observed) and are handled by Lemma 7.4. Explicit
strips for the pairs of Section 7.4:

#table(
  columns: (auto, auto, auto, auto, auto),
  align: (center, center, center, center, center),
  stroke: 0.4pt,
  table.header([$(n,d)$], [$h_0$], [proven strip], [cascade observed], [coverage]),
  [$(5,7)$],  [$0.082$], [$[0.335, 0.417)$], [none],             [---],
  [$(7,9)$],  [$0.064$], [$[0.374, 0.438)$], [none],             [---],
  [$(9,11)$], [$0.052$], [$[0.398, 0.450)$], [none],             [---],
  [$(7,12)$], [$0.072$], [$[0.297, 0.368)$], [$[0.254, 0.368]$], [upper part],
  [$(5,11)$], [$0.083$], [$[0.229, 0.312)$], [$[0.265, 0.312]$], [*entire cascade*],
  [$(3,10)$], [$0.085$], [$[0.146, 0.231)$], [$[0.083, 0.230]$], [upper part],
  [$(5,13)$], [$0.082$], [$[0.196, 0.278)$], [$[0.211, 0.277]$], [*entire cascade*],
  [$(7,16)$], [$0.076$], [$[0.228, 0.304)$], [$[0.161, 0.304]$], [upper part],
)

For $(5,11)$ and $(5,13)$ the strip contains every observed bifurcation
event, so on those pairs the top-$n$ property is proved on an interval
containing the entire visible cascade; what remains unproven there is the
empirically event-free window between $n^2\/(n^2+2d^2)$ and $k_c - h_0$.

== Status and reduction

#block(above: 1.1em, below: 1.1em)[
*Conjecture 7.6* (Main conjecture, sharpened status).
For every $k in (0, 1)$ the anchored crests are strictly the $n$ highest
local maxima of $F_k$. This is proved on $[k_c - h_0, 1)$ (Theorems 5.1 and
7.5; at $k = 1$ all $d$ heights tie) and on $(0, n^2\/(n^2+2d^2)]$
(Proposition 7.3), and holds vacuously wherever the crest count equals
$n$. On the cascade it
would follow from the sufficient condition that no doomed crest amplitude
reaches $cos(pi (n-1)\/N)$ before annihilation; the condition is not
necessary, since anchored amplitudes may exceed the floor.
]

By Lemma 7.2 the target is stationary while the doomed amplitudes move; the
envelope identity
$dif/(dif k) thin F_k (X(k)) = cos(2 pi d X) - cos(2 pi n X)$ bounds their
climb rate by $Delta$-independent quantities, and at a saddle-node birth at
parameter $k^*$ the birth amplitude is
$(1 - k^*)(1 - n^2\/d^2) cos(2 pi n x^*)$. What is missing is positional
control of the doomed branches across the cascade: a backward analogue of
the corridor construction, assigning each doomed branch a monotone habitat
between $k_c$ and its death, would convert the numerical margin into a
proof and close the conjecture entirely.

= Roadmap for updating the paper

The results now in hand change the status of the paper's open problem and
touch several sections. Concretely, in suggested order of execution:

*A. Results integration.* The ranking theorem on $[k_c, 1)$ and the
small-$k$ proposition are now integrated in the main paper; remaining:

+ _Floor lemma._ Lemma 7.2 belongs in the paper: convexity of $A_i$ along
  the branch ($A''_i = -(partial_(k x) F)^2 \/ partial_(x x) F >= 0$) with
  $A'_i (k_c) = 0$ gives the uniform floor
  $A_i (k) >= cos(2 pi epsilon_i \/ N)$ on $[0, 1)$ and proves the
  unimodality with minimum at $k_c$.

+ _Strip theorem._ Theorem 7.5 with Lemma 7.4 belongs in the paper: an
  explicit strip $[k_c - h_0, k_c)$ of the subcritical region is proved,
  with the byproduct that degeneracies of $F_k$ exist only at or below
  slope balance; for $(5,11)$ and $(5,13)$ the strip already contains the
  entire observed cascade.

+ _Open-problem statement._ Ensure the paper describes the remaining open
  region as the part of the subcritical cascade beneath the strip of
  Theorem 7.5 (Conjecture 7.6 here), states the floor condition as
  sufficient (not equivalent), and cites this note for the cascade
  numerics. Whole-interval strictness claims should read
  $[k_c, 1)$, all $d$ heights tying at $k = 1$.

+ _Rational alignment._ Add a remark after Corollary 3.3 citing the first
  companion note #cite(<rigidity>, form: "normal"): $k_c$ is conjecturally
  the unique interior parameter at which all anchored crests are rational
  (proved in the trivial Conway--Jones regime for odd $n >= 7$; exact
  counterexample family for $n = 5$; density for $n = 3$).

*B. Hypotheses and framing.*

+ _Oddness of $n$ is essential, not technical._ Remark after Proposition
  2.2: for $n$ even (hence $d$ odd), the branch $i = n\/2$ is pinned at
  $x = 1\/2$ and loses crest status at $k = n^2\/(n^2+d^2)$ (a pitchfork by
  the symmetry of $F_k$), so the anchored continuation genuinely fails.

+ _Phase alignment._ Remark that the selected representative depends on both
  components peaking at $x = 0$; a relative phase translates the endpoint
  sites and generically destroys the fixed branch $X_0$.

+ _Mediant structure._ Remark at Corollary 4.2: $N = n + d$ is the Farey
  mediant denominator and $k_c = n\/(n+d)$ is mediant-shaped; the
  deformation from the $n$-grid to the $d$-grid passes through the canonical
  configuration on the mediant grid. State the companion question: for odd
  $n >= 5$, are $k_c$ and $k = 1$ the only parameters where
  $"Huplet"(n,d,k)$ is a canonical representative $sans(Q)(n, m)$? (True
  ladder for $n = 3$, stops at the first rung for $n = 5$; see the rigidity
  note.)

+ _Proposition 5.2._ Soften: the inequality is termwise projection; the
  content is that the nearest-grid selection is injective and
  order-preserving for free. Drop "universal".

*C. Literature.*

+ Add and discuss: Toussaint (2005) and Bjorklund (origin of Euclidean
  rhythms); Clough--Douthett (1991) for maximal evenness, the correct
  lineage of the two-value distance property invoked through Demaine et al.;
  Amiot (2016) for the DFT characterization of maximally even sets, which
  sits close to the two-term Fourier construction and may yield an
  alternative proof of the selection at $k_c$; the three-distance theorem;
  mechanical and Christoffel words (the endpoint sequence
  $m_i = floor(i d\/n + 1\/2)$ is a centered Beatty sequence, and parts of
  Section 5's arithmetic should be positioned against that literature, the
  novel contribution being the dynamical selection); Conway--Jones (1976)
  for the rigidity remark.

*D. Numerics and supplementary material.*

+ Report the verification scans: the ranking scan of Section 6, the
  cascade and margin scans of Section 7.4 (with the corrected cyclic crest
  finder; scans that seed at $x = 0$ silently drop the fixed branch), the
  rational-alignment scans (denominator coverage $q >= 4 n d$), and the
  $n = 5$ family checks. Deposit the `further_steps/` material (companion
  notes and scan scripts) on Zenodo and cite the DOI; remove bare directory
  pointers from the submitted PDF.

*E. Editorial pass.*

+ "1List of content" $->$ "Contents"; abstract: onset distances lie in
  ${floor(ell d\/n), ceil(ell d\/n)}$; fix the $C_i^t$ typo to $C_i (t)$ in
  Proposition 2.2; consolidate the standing hypotheses ($1 < n < d$ coprime,
  $n$ odd) at the head of Section 2; add one sentence on the Huplet/Quplet
  naming; make equation numbering uniform.

#v(1em)

#bibliography(bytes("@unpublished{quplets,
  author = {Braff, Malcolm},
  title = {Introducing Quplets: from crest trajectories to Euclidean rhythms},
  note = {Manuscript, HSM Basel, FHNW},
  year = {2026}
}
@unpublished{rigidity,
  author = {Braff, Malcolm},
  title = {Rational alignment rigidity of anchored crests},
  note = {Companion note, further\\_steps},
  year = {2026}
}"), title: "Bibliography", style: "ieee")

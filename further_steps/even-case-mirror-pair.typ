// The even case: pitchfork continuation, the mirror pair, and the rounding tie
// Companion note to "Crest continuation and canonical Euclidean-rhythm selection: a two-frequency cosine model"
// Intended location: further_steps/even-case-mirror-pair.typ

#set page(margin: (x: 2.6cm, y: 2.6cm))
#set par(justify: true, leading: 0.62em)
#set text(size: 10.5pt)
#set heading(numbering: "1.1.")

#let qed = [#h(1fr) $square$]

#align(center)[
  #text(size: 15pt)[*The even case: pitchfork continuation, the mirror pair, and the rounding tie*] \
  #v(0.3em)
  #text(size: 11pt)[Companion note to _Crest continuation and canonical Euclidean-rhythm selection_] \
  #v(0.3em)
  Malcolm Braff, HSM Basel, FHNW
]

#v(1em)

*Abstract.*
The main paper assumes $n$ odd. This note develops the even case. For $n$
even (hence $d$ odd), the anchor $i = n\/2$ sits at $x = 1\/2$, which is
stationary for every $k$; the branch is pinned there, remains a crest up to
$k_p = n^2\/(n^2+d^2)$, and undergoes a supercritical pitchfork: for
$k > k_p$ it splits into two mirror crests $1\/2 plus.minus y(k)$ whose arms
admit the exact parametrization $k = n sin(n t)\/(n sin(n t) + d sin(d t))$
and terminate at the two sites $(d minus.plus 1)\/(2d)$ of the rounding tie
$d\/2$. Because $F_k$ is even in $x$, the two arms have exactly equal
amplitude for every $k$: above slope balance they occupy ranks $n$ and
$n+1$ of the parity-free window ranking, exactly tied, so there the "$n$
highest crests" is intrinsically ill-posed at its last rank, and the tie
itself persists on all of $(k_p, 1]$. The
deformation therefore outputs, for even $n$, the $n-1$ determinate labeled
onsets together with an unordered mirror pair for the middle onset: two
Quplets $Q^(plus.minus)(n,d)$, both Euclidean, exchanged by reflection. We
prove these statements, and discuss the three candidate resolutions of the
tie: the set-valued answer (exact), probabilistic selection (a theorem
about symmetry-breaking perturbations), and alternation (unsupported by the
autonomous family).

#v(0.5em)

= The pinned branch and the pitchfork

Let $1 < n < d$ be coprime with $n$ _even_, so $d$ is odd. Both
$sin(pi d) = 0$ and $sin(pi n) = 0$, so $x = 1\/2$ is stationary for every
$k$. Its values are
$ F_k (1\/2) = -k + (1-k) = 1 - 2k, quad
  H_k (1\/2) = -(2 pi)^2 ((1-k) n^2 - k d^2), $
using $cos(pi d) = -1$ and $cos(pi n) = +1$. Hence $x = 1\/2$ is a
nondegenerate crest exactly for
$ k < k_p = n^2/(n^2 + d^2), $
degenerate at $k_p$, and a trough above. The anchored branch issued from
$i = n\/2$ is therefore $X_(n\/2)(k) equiv 1\/2$ on $[0, k_p)$, and its
crest continuation fails at $k_p$: this is the structural obstruction
behind the oddness hypothesis of the main paper.

The failure is a symmetric pitchfork. At $k_p$ the fourth derivative is
$ F_k^((4))(1\/2) = (2 pi)^4 ((1-k) n^4 - k d^4)
  |_(k = k_p) = (2 pi)^4 (n^2 d^2 (n^2 - d^2))/(n^2 + d^2) < 0, $
so the even-order normal form has a negative quartic term: as $k$ increases
through $k_p$, the crest at $1\/2$ splits into two local maxima at
$1\/2 plus.minus y(k)$ and leaves a local minimum at $1\/2$. The two new
crests are exchanged by the reflection $x |-> -x$, which leaves $F_k$
invariant; consequently their amplitudes are exactly equal for every $k$.

All other anchors are unaffected: a rounding tie $d i\/n in ZZ + 1\/2$
forces $n | 2i$, hence $i in {0, n\/2}$; for $i in.not {0, n\/2}$ the
corridor construction of the main paper applies verbatim and produces
$n - 1$ global branches with endpoints $m_i = floor(d i\/n + 1\/2)$
(including the fixed branch $X_0 equiv 0$).

= The two arms

#block(above: 1.1em, below: 1.1em)[
*Lemma 2.1* (Slope comparison).
For fixed $t > 0$, the function $lambda |-> lambda cot(lambda t)$ is
strictly decreasing on $(0, pi\/t)$. In particular
$n cot(n t) > d cot(d t)$ for every $t in (0, pi\/d)$.
]

_Proof._
$partial_lambda [lambda cot(lambda t)]
 = cot(lambda t) - (lambda t)/(sin^2(lambda t))
 = (1/2 sin(2 lambda t) - lambda t)/(sin^2(lambda t)) < 0$,
since $sin u < u$ for $u > 0$.
#qed

#block(above: 1.1em, below: 1.1em)[
*Proposition 2.2* (Exact arm parametrization).
For $t in (0, pi\/d)$ define
$ kappa(t) = (n sin(n t))/(n sin(n t) + d sin(d t)), quad
  Y^(plus.minus)(t) = 1/2 plus.minus t/(2 pi). $
Then $kappa$ is real analytic and strictly increasing, with
$kappa(0^+) = k_p$ and $kappa(pi\/d) = 1$. For every $k in (k_p, 1)$ the
open half-corridor $(1\/2, 1\/2 + 1\/(2d))$ contains exactly one stationary
point of $F_k$, namely $Y^+ (kappa^(-1)(k))$, and it is a nondegenerate
crest; the mirror statement holds in $(1\/2 - 1\/(2d), 1\/2)$. The two arms
extend continuously to $k = 1$ with endpoints
$ Y^(plus.minus)(1) = (d plus.minus 1)/(2 d), $
and satisfy $A^+ (k) = A^- (k)$ for every $k in (k_p, 1]$.
]

_Proof._
Put $x = 1\/2 + t\/(2 pi)$, $t in (0, pi\/d)$. Since $n$ is even and $d$
odd,
$ sin(2 pi n x) = sin(pi n + n t) = sin(n t), quad
  sin(2 pi d x) = sin(pi d + d t) = -sin(d t), $
both positive on the range of $t$. Stationarity
$k d sin(2 pi d x) + (1-k) n sin(2 pi n x) = 0$ is therefore equivalent to
$(1-k) n sin(n t) = k d sin(d t)$, i.e. $k = kappa(t)$. The logarithmic
derivative of $sin(n t)\/sin(d t)$ is $n cot(n t) - d cot(d t) > 0$ by
Lemma 2.1, so $kappa$ is strictly increasing; its limits at $t -> 0^+$ and
$t -> (pi\/d)^-$ are $n^2\/(n^2 + d^2) = k_p$ and $1$. Hence for each
$k in (k_p, 1)$ there is exactly one $t$ with $kappa(t) = k$, which is the
unique stationary point in the open half-corridor, and none exists there
for $k <= k_p$.

For the crest property, with
$R = (1-k) n sin(n t) = k d sin(d t) > 0$,
$ -(2 pi)^(-2) H_k (x)
  = k d^2 cos(2 pi d x) + (1-k) n^2 cos(2 pi n x)
  = (1-k) n^2 cos(n t) - k d^2 cos(d t)
  = R (n cot(n t) - d cot(d t)) > 0, $
again by Lemma 2.1. The endpoint $t = pi\/d$ gives $x = (d+1)\/(2d)$, a
crest of $F_1$. Equality of the arm amplitudes is the invariance of $F_k$
under $x |-> -x$, which exchanges the arms.
#qed

Numerically the parametrization is exact: for $(n, d) = (4, 7)$,
$k_p = 16\/65 approx 0.24615$; at $t = 0.3 pi\/d$ the formula gives
$k = 0.265933$ and $x = 0.521429$, at which $F'_k$ vanishes to machine
precision; the pair at $k = 0.98$ sits at ${0.42883, 0.57117}$, converging
to ${3\/7, 4\/7}$.

= The endpoint pair and the rounding tie

The tie is the arithmetic shadow of the pitchfork: the site nearest
$1\/2$ on the $d$-grid is ambiguous because $d$ is odd, the two candidates
being $(d minus.plus 1)\/(2 d)$, each at distance $1\/(2d)$. The two arms
select exactly these two sites. Define the two completions
$ A^(plus.minus) = {m_i : i != n\/2} union {(d plus.minus 1)/2}, $
with the corresponding labeled gap vectors $Q^(plus.minus)(n, d)$.

#block(above: 1.1em, below: 1.1em)[
*Proposition 3.1* (Both completions are Euclidean, and mirror-exchanged).
$Q^+ (n, d)$ and $Q^- (n, d)$ are both representatives of the Euclidean
class $E(n, d)$, and the reflection $x |-> -x$ (equivalently the label
reversal $i |-> n - i$ modulo $n$) maps one onto the other. They differ in
exactly one onset.
]

_Proof._
The completion $A^+$ is given by the single formula
$a_j = floor(j d\/n + 1\/2)$ for all $j$, which resolves the tie upward.
The floor identity $floor(x + y) - floor(x) in {floor(y), ceil(y)}$
requires no tie-freeness, so every cyclic $ell$-onset distance of $A^+$
lies in ${floor(ell d\/n), ceil(ell d\/n)}$; strict ordering holds since
$d\/n > 1$. By the Demaine distance criterion, $A^+$ represents $E(n, d)$.
The reflection maps the $d$-grid to itself, maps each anchor $i\/n$ to
$(n - i)\/n$, preserves nearest-site relations, and exchanges the two tie
candidates; it maps $A^+$ onto $A^-$. Reflection reverses the cyclic gap
word, and the multiset of $ell$-step distances is reversal-invariant, so
$A^-$ satisfies the same two-value property and represents $E(n, d)$ as
well. The completions agree at every $i != n\/2$.
#qed

= The permanent tie in the amplitude ranking

The window analysis of the main paper above slope balance is parity-free:
for $k in (k_c, 1)$, $k_c = n\/(n + d)$, there are exactly $d$
nondegenerate crests, one per quarter-width window around each $d$-grid
site $j\/d$, and their amplitudes are strictly decreasing in the centered
residue $|r_j|$, $r_j equiv n j (mod d)$ (Proposition 6.1 of the main
paper; its counting, reduction, and monotonicity arguments nowhere use the
parity of $n$). Only the identification of the selected windows changes.

#block(above: 1.1em, below: 1.1em)[
*Proposition 4.1* (Even-case ranking; the ill-posed last rank).
Let $n$ be even and $k in (k_c, 1)$. The $n - 1$ corridor branches occupy
the windows with $|r| <= n\/2 - 1$, exhausting them; the two arms occupy
the windows of the sites $(d plus.minus 1)\/2$, whose centered residues are
$minus.plus n\/2$. Consequently the amplitude order is: the $n - 1$
corridor crests strictly first, then the two arms exactly tied at ranks $n$
and $n + 1$, then all remaining crests strictly below. Consequently the
"$n$ highest local maxima" of $F_k$ is ill-posed at its last rank for
every $k in [k_c, 1)$, and the maximal well-posed selection there is the
top $n - 1$ together with the unordered arm pair. On $(k_p, k_c)$ the arms
remain exactly tied (Proposition 2.2), so no amplitude criterion can
select one of them at any parameter; whether they occupy ranks $n$ and
$n + 1$ on that range as well is the even-case analogue of the subcritical
question, expected near $k_c$ by the same degeneracy bounds.
]

_Proof._
For $i in.not {0, n\/2}$ the residues $epsilon_i = n m_i - i d$ are
distinct modulo $n$ and satisfy $|epsilon_i| < n\/2$ strictly (no tie),
hence $|epsilon_i| <= n\/2 - 1$; together with $epsilon_0 = 0$ they exhaust
the $n - 1$ centered classes of magnitude at most $n\/2 - 1$, and as in the
main paper the centered $d$-residue of the site $m_i$ equals $epsilon_i$.
At the sites $(d plus.minus 1)\/2$,
$ n dot (d plus.minus 1)/2 = n/2 dot d plus.minus n/2
  equiv plus.minus n/2 (mod d). $
For the window membership of the arms: at $k_c$ the arm positions are the
resonant sites $(N plus.minus 1)\/(2 N)$, $N = n + d$ (see below), and
their distance to the window centers $(d plus.minus 1)\/(2 d)$ is
$ (d+1)/(2d) - (N+1)/(2N) = ((d+1) N - (N+1) d)/(2 d N) = n/(2 d N)
  < 1/(4 d), $
the last inequality being $2 n < N$, i.e. $n < d$. The arm
positions move monotonically toward $(d plus.minus 1)\/(2d)$ as $k$
increases (Proposition 2.2), so they remain in those windows on
$[k_c, 1)$. The strict $|r|$-monotonicity of the window amplitudes and the
exact mirror tie of the arms give the stated order; the tie on the wider
range $(k_p, 1)$ is Proposition 2.2.
#qed

At the threshold itself the picture is resonant: for $N = n + d$ (odd,
since $n$ is even and $d$ odd), the two $N$-grid sites nearest $1\/2$ are
$(N plus.minus 1)\/(2 N)$, with centered residues $minus.plus n\/2$ and
common height $cos(pi n\/N)$; the corridor branches sit at heights
$cos(2 pi epsilon_i\/N) >= cos(pi (n - 2)\/N)$, and the next resonant
heights are at most $cos(pi (n + 2)\/N)$. The amplitude convexity of the
main paper applies along each arm on $(k_p, 1]$ (nondegeneracy holds
there), and at $k_c$ both cosine components at a resonant site coincide, so
each arm amplitude is convex with vanishing derivative at $k_c$:
$ A^(plus.minus)(k) >= A^(plus.minus)(k_c) = cos((pi n)/N)
  quad "on" (k_p, 1]. $
Numerically, for $(4, 7)$ at $k_c = 4\/11$: arms at $5\/11$ and $6\/11$
with common amplitude $cos(4 pi \/ 11) = 0.415415$, as computed.

= Making sense of the tie

Three candidate readings were on the table: two solutions, a fifty-percent
probability, an oscillation. The mathematics decides among them as
follows.

*The set-valued answer is the theorem.* The crest continuation through
$k_p$ is genuinely two-valued, and the two values are exchanged by an
exact symmetry of the family: every intrinsic criterion -- amplitude,
prominence, continuation, any functional of $F_k$ invariant under
$x |-> -x$ -- assigns the two arms identical scores, permanently. The
correct primary statement is therefore that for even $n$ the deformation
selects the necklace $E(n, d)$, the $n - 1$ labeled onsets $m_i$, and the
unordered mirror pair
$ Q(n, d) = {Q^+ (n, d), thin Q^- (n, d)}, $
a reflection orbit rather than a single representative. Nothing weaker is
true and nothing stronger is available inside the phase-aligned family.

*Probability enters through symmetry breaking, as a derived notion.*
Introduce a small relative phase, e.g.
$F_k^phi (x) = k cos(2 pi d x) + (1-k) cos(2 pi n x - phi)$. For
$phi != 0$ the reflection symmetry is broken and $x = 1\/2$ is no longer
stationary; the pitchfork unfolds generically, one crest passes $k_p$
smoothly toward the side determined by $"sign"(phi)$, and the crest
continuation from the middle anchor becomes unique, converging to the two
resolutions as $phi -> 0^(plus.minus)$. Under any probability law for
$phi$ that is symmetric about $0$, each resolution occurs with probability
exactly $1\/2$. The fifty-percent reading is thus a theorem about
symmetric perturbations of the model, not a primitive postulate; which
representative appears is decided by whatever infinitesimal asymmetry the
context supplies, and the main paper's phase-alignment remark already
identifies phase as the natural carrier of that asymmetry.

*Oscillation is unsupported.* The family is autonomous in $k$; no
mechanism makes the selection alternate. Alternating rounding conventions
(round half to even) are external rules designed for sequences of ties,
and each pair $(n, d)$ contains exactly one tie, so there is nothing to
alternate over.

Two further readings are worth recording. Read literally, the pair is two
onsets at the minimal grid distance $1\/d$: a doubled realization of the
ambiguous mid-cycle onset (in performance terms, a flam). And the refusal
to quantize -- keeping the middle onset at $1\/2$ -- is vetoed by the model
itself: for $k > k_p$ the point $1\/2$ is a local _minimum_ of the
salience profile, the least accented phase in its neighborhood.

= Numerical record

For $(n, d) = (4, 7)$, $k_p = 0.246154$, $k_c = 0.363636$:

#table(
  columns: (auto, auto, auto),
  align: (center, center, center),
  stroke: 0.4pt,
  table.header([$k$], [crests near $1\/2$], [amplitudes]),
  [$0.226$], [$0.5$], [$0.547692$],
  [$0.266$], [$0.47846, #h(0.4em) 0.52154$], [$0.473529$ (both)],
  [$0.364$], [$5\/11, #h(0.4em) 6\/11$], [$0.415415 = cos(4 pi\/11)$ (both)],
  [$0.700$], [$0.43418, #h(0.4em) 0.56582$], [$0.653807$ (both)],
  [$0.980$], [$0.42883, #h(0.4em) 0.57117$], [$0.975613$ (both)],
)

At $k = 0.5$ the full ranking of the seven crests by amplitude is:
site $0$ ($r = 0$), then sites $2, 5$ ($r = plus.minus 1$, tied mirror
corridor branches), then sites $3, 4$ ($r = minus.plus 2 = minus.plus n\/2$,
the arms, exactly tied at ranks $4$ and $5$), then sites $1, 6$
($r = minus.plus 3$). The corresponding amplitudes are $1.000000$,
$0.853003$, $0.471760$, $0.071283$.

#v(1em)

#bibliography(bytes("@unpublished{quplets,
  author = {Braff, Malcolm},
  title = {Crest continuation and canonical Euclidean-rhythm selection: a two-frequency cosine model},
  note = {Manuscript, HSM Basel, FHNW},
  year = {2026}
}"), title: "Bibliography", style: "ieee")

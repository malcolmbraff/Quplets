// Monotone unanchored amplitudes and the full-interval ranking theorem
// Companion note to "Crest continuation and canonical Euclidean-rhythm selection: a two-frequency cosine model"
// Intended location: further_steps/monotone-amplitudes-full-interval.typ

#set page(margin: (x: 2.6cm, y: 2.6cm))
#set par(justify: true, leading: 0.62em)
#set text(size: 10.5pt)
#set heading(numbering: "1.1.")

#let qed = [#h(1fr) $square$]

#align(center)[
  #text(size: 15pt)[*Monotone unanchored amplitudes and the full-interval ranking theorem*] \
  #v(0.3em)
  #text(size: 11pt)[Companion note to _Crest continuation and canonical Euclidean-rhythm selection_] \
  #v(0.3em)
  Malcolm Braff, HSM Basel, FHNW
]

#v(1em)

*Abstract.*
The main paper proves that the anchored crests of
$F_k (x) = k cos(2 pi d x) + (1-k) cos(2 pi n x)$ are the $n$ highest local
maxima for $k$ in $[0, k_0] union (k_c - h_0, 1)$ and leaves a subcritical
interval open. This note closes that interval for an explicit family of
pairs, replacing the strip machinery by a monotonicity theorem. The
ingredients are: an exact window for stationary degeneracies,
$k^* in [k_"pf", k_c]$ with $k_"pf" = n^2\/(n^2+d^2)$, together with the
factored value $plus.minus D(k^*)$,
$D(k) = (1-k) sqrt((1-n^2\/d^2)(1-sigma(k)^2))$; a two-sided type
dichotomy for subcritical stationary points; the convexity of the
amplitude along _any_ nondegenerate crest branch; and the sign of the
envelope derivative at branch endpoints. Together these show that every
unanchored crest amplitude is strictly monotone on its lifetime:
half-grid-side crests rise and remain negative, grid-side crests fall from
their birth value $D(k^*) <= D_max = (d^2-n^2)\/(d^2+n^2)$. Consequently,
whenever $(star)$: $D_max < cos(pi(n-1)\/(n+d))$ holds, the anchored
crests are the $n$ highest local maxima for every $k in [0, 1)$; a
four-line crossing argument derives this from the window, the convexity,
and the threshold ranking alone, the monotonicity theorem being the finer
portrait.
Unconditionally, the possibly unresolved set is confined to an explicit
window of width at most $(D_max - phi.alt)\/2$ above $k_"pf"$, and $F_k$
has exactly $n$ crests for all $k < k_"pf"$, sharply.

#v(0.5em)

= Setting and statement of results

Throughout, $1 < n < d$ are coprime, $n$ is odd, $k in [0,1]$, and
$F_k (x) = k cos(2 pi d x) + (1-k) cos(2 pi n x)$ on $x in RR\/ZZ$.
We freely use the main paper's notation and results: the anchored branches
$X_i (k)$ with amplitudes $A_i (k) = F_k (X_i (k))$, the slope-balanced
parameter $k_c = n\/N$ with $N = n + d$, the anchored floor
$ A_i (k) >= phi.alt := cos((pi (n-1))/N) > 0 $
(Lemma 6.4 of the paper), the threshold ranking at $k_c$
(Proposition 3.1, Corollary 3.4), and the upper-range window ranking on
$(k_c, 1)$ (Proposition 6.1). Set
$ sigma(k) = (k d)/((1-k) n), quad
  tau(k) = (k d^2)/((1-k) n^2), quad
  rho(k) = 1/(sigma(k)), $
so that $sigma(k) < 1 <=> k < k_c$ and $tau(k) < 1 <=> k < k_"pf"$, where
$ k_"pf" := n^2/(n^2 + d^2), quad
  D(k) := (1-k) sqrt((1 - n^2/d^2)(1 - sigma(k)^2)), quad
  D_max := D(k_"pf") = (d^2 - n^2)/(d^2 + n^2). $

#block(above: 1.1em, below: 1.1em)[
*Theorem 1.1* (Full-interval ranking).
Assume
$ (star): quad (d^2 - n^2)/(d^2 + n^2) < cos((pi (n-1))/(n+d)). $
Then for every $k in [0, 1)$ the anchored crests are precisely the $n$
highest local maxima of $F_k$, with strict separation between the anchored
family and all other local maxima.
]

Condition $(star)$ is explicit per pair; Section 8 tabulates its exact
domain (all coprime $d <= 62$ for $n = 3$, $d <= 17$ for $n = 5$,
$d <= 16$ for $n = 7$, and roughly $d lt.tilde n + 8$ for larger $n$).
Two statements hold without $(star)$.

#block(above: 1.1em, below: 1.1em)[
*Corollary 1.2* (Sharp subcritical crest count).
For every $k in [0, k_"pf")$, $F_k$ has exactly $n$ crests, namely the
anchored ones. The bound is sharp: for $d$ even, an unanchored crest
exists at $x = 1\/2$ for every $k in (k_"pf", k_c)$.
]

#block(above: 1.1em, below: 1.1em)[
*Corollary 1.3* (Unconditional localization).
If $D_max >= phi.alt$, let $k_D in (k_"pf", k_c)$ be the unique parameter
with $D(k_D) = phi.alt$; then
$ k_D - k_"pf" <= (D_max - phi.alt)/2. $
If the top-$n$ property fails at some $k in (0, k_c)$, then $F$ has a
grid-side stationary degeneracy at some $k^* in [k_"pf", k_D]$.
Equivalently: if no grid-side degeneracy occurs in that window, the
conclusion of Theorem 1.1 holds for the pair on all of $[0, 1)$.
]

These results supersede the subcritical strip theorem of the paper
(Theorem 6.8) on the domain of $(star)$, and supersede the small-modulation
threshold $k_0 = n^2\/(n^2 + 2 d^2)$ (Proposition 6.2) everywhere. The
proofs use the branch-continuation alternative (Lemma 6.7 of the paper)
and sharpen its degeneracy lemma (Lemma 6.6) into an exact window-and-value
statement.

= The degeneracy window and the amplitude formula

#block(above: 1.1em, below: 1.1em)[
*Lemma 2.1* (Window and value).
Suppose $F'_(k^*) (x^*) = H_(k^*) (x^*) = 0$ for some
$x^* in RR\/ZZ$, $k^* in [0, 1]$. Then
$ k_"pf" <= k^* <= k_c,
  quad "and" quad
  F_(k^*) (x^*) = epsilon thin D(k^*),
  quad epsilon = "sign"(cos(2 pi n x^*)) in {+1, -1}. $
Moreover $D$ is strictly decreasing and concave on $[k_"pf", k_c]$, with
$D(k_"pf") = D_max$, $D(k_c) = 0$, and $D'(k_"pf") = -2$.
]

_Proof._
Write $a = 2 pi d x^*$, $b = 2 pi n x^*$, $rho = rho(k^*)$. Stationarity
and degeneracy read
$ sin(a) = -rho sin(b), quad cos(a) = -rho (n/d) cos(b). $
(At $k^* in {0, 1}$ these force a sine and cosine of one phase to vanish
together; hence $0 < k^* < 1$ and $rho$ is defined.) Squaring and adding,
$ 1 = rho^2 (1 - (1 - n^2/d^2) cos(b)^2),
  quad "so" quad
  cos(b)^2 = (1 - sigma^2)/(1 - n^2\/d^2), $
using $sigma = 1\/rho$. The left identity requires $rho >= 1$, i.e.
$k^* <= k_c$; the constraint $cos(b)^2 <= 1$ requires
$rho^2 n^2\/d^2 <= 1$, i.e. $k^* >= k_"pf"$. Substituting
$k^* rho = (1-k^*) n\/d$ into $F = k^* cos(a) + (1-k^*) cos(b)$ gives
$ F_(k^*) (x^*) = (1-k^*)(1 - n^2/d^2) cos(b)
  = "sign"(cos b) dot (1-k^*) sqrt((1-n^2/d^2)(1-sigma^2)), $
which is the displayed formula; $cos(b) != 0$ since $sigma(k^*) < 1$ for
$k^* < k_c$, and at $k^* = k_c$ both sides vanish. Note that $x^* = 0$
never occurs ($cos a = 1 = -rho n\/d$ is impossible), while $x^* = 1\/2$
is covered seamlessly: for $d$ odd it never degenerates, and for $d$ even
the equations force $rho = d\/n$, i.e. $k^* = k_"pf"$ exactly, with value
$-D(k_"pf")$.

For the properties of $D$: expanding $sigma$ gives the factored identity
$ D(k)^2 = ((d^2-n^2) N (k_c - k)((1-k)n + k d))/(n^2 d^2), $
a nonnegative concave quadratic in $k$ on $[k_"pf", k_c]$ (leading
coefficient $-(d-n) < 0$ inside the product), so $D$ is concave; it is
strictly decreasing because both $(1-k)^2$ and $1 - sigma(k)^2$ are.
Evaluating at $k_"pf"$ (where $sigma = n\/d$) gives $D_max$; at $k_c$
(where $sigma = 1$) it vanishes. Finally, differentiating $D^2$ at
$k_"pf"$: $(d/(d k))[(k_c-k)((1-k)n+k d)] = -((1-k)n + k d) + (k_c-k)(d-n)$
equals $-4 n^2 d^2\/(N(n^2+d^2))$ there, whence
$(D^2)'(k_"pf") = -4(d^2-n^2)\/(n^2+d^2)$ and
$D'(k_"pf") = (D^2)'\/(2 D_max) = -2$.
#qed

The identity $D^2 = (d^2-n^2) N u W\/(n^2 d^2)$, $u = k_c - k$,
$W = (1-k)n + k d$, is the paper's Lemma 6.6 in factored form; the new
content is the lower window edge $k^* >= k_"pf"$ (from $|cos a| <= 1$,
which the paper does not impose), the sign statement, and the removal of
all exclusions.

= The two sides

#block(above: 1.1em, below: 1.1em)[
*Lemma 3.1* (Type dichotomy).
Let $k in (0, k_c)$. Every stationary point $x$ of $F_k$ satisfies
$|sin(2 pi n x)| <= sigma(k) < 1$; hence
$cos(2 pi n x) >= sqrt(1 - sigma(k)^2)$ (_grid-side_) or
$cos(2 pi n x) <= -sqrt(1 - sigma(k)^2)$ (_half-grid-side_). Along any
continuous family of stationary points with parameters in a subinterval of
$(0, k_c)$, the side is constant.
]

_Proof._
Stationarity gives
$|sin(2 pi n x)| = sigma(k) |sin(2 pi d x)| <= sigma(k)$, and
$sigma(k) < 1$ below $k_c$. Along a continuous family,
$cos(2 pi n X(kappa))$ is continuous and never vanishes (its modulus is at
least $sqrt(1 - sigma(kappa)^2) > 0$), so its sign is constant.
#qed

= Universal crest convexity

#block(above: 1.1em, below: 1.1em)[
*Lemma 4.1* (Convexity along any crest branch).
Let $X: J -> RR\/ZZ$ be a branch of nondegenerate crests on an open
interval $J subset (0,1)$, and $A(kappa) = F_kappa (X(kappa))$. Then
$ A'(kappa) = cos(2 pi d X(kappa)) - cos(2 pi n X(kappa)),
  quad
  A''(kappa) = -((partial_(k x) F_kappa (X(kappa)))^2)
               /(partial_(x x) F_kappa (X(kappa))) >= 0. $
In particular $A'$ is nondecreasing: once a crest starts rising, it never
drops again.
]

_Proof._
The first identity is the envelope theorem ($partial_x F = 0$ along the
branch). Differentiating again, using that $F$ is affine in $k$ and
$X' = -partial_(k x) F \/ partial_(x x) F$ from implicit differentiation
of the stationarity equation, gives the second; the denominator is
negative at a nondegenerate crest.
#qed

This is the computation inside the paper's Lemma 6.4 with the anchoredness
hypothesis removed; only nondegeneracy of the crest is used.

#block(above: 1.1em, below: 1.1em)[
*Lemma 4.2* (No flat segments off ${0, 1\/2}$).
If $A'$ is constant on an open subinterval of $J$, then
$X(kappa) in {0, 1\/2}$ there.
]

_Proof._
$A'' equiv 0$ forces $partial_(k x) F equiv 0$ along the branch, i.e.
$d sin(2 pi d X) = n sin(2 pi n X)$; combined with stationarity
$k d sin(2 pi d X) = -(1-k) n sin(2 pi n X)$ this gives
$n sin(2 pi n X) (k + (1-k)) = 0$, hence
$sin(2 pi n X) = sin(2 pi d X) = 0$. Then $2 n X, 2 d X in ZZ$, and
coprimality gives $2 X in ZZ$, i.e. $X in {0, 1\/2}$.
#qed

= Branch endpoints

By an _unanchored branch_ we mean a maximal branch of nondegenerate
unanchored crests $X: (alpha, beta) -> RR\/ZZ$ with
$(alpha, beta) subset.eq (0, k_c]$; maximality is with respect to the
implicit-function continuation of the paper's Lemma 6.7, applied in both
parameter directions. Since the stationary set of each $F_kappa$ is
finite, the limit sets at both ends are single points, and $X$ extends
continuously to $[alpha, beta]$.

#block(above: 1.1em, below: 1.1em)[
*Lemma 5.1* (Lower end).
$alpha >= k_"pf" > 0$, the terminal point
$(alpha, x_alpha)$ is a stationary degeneracy, and
$ lim_(kappa arrow.b alpha) A(kappa)
  = F_alpha (x_alpha) = epsilon thin D(alpha), $
where $epsilon$ is the side sign of the branch.
]

_Proof._
Suppose first that the maximal interval reached $alpha = 0$. Then
$X(kappa)$ accumulates on a stationary point of $F_0 = cos(2 pi n x)$
with $H <= 0$ in the limit, i.e. on an $n$-grid point $i\/n$, which is a
nondegenerate crest of $F_0$; by implicit-function uniqueness the branch
coincides near $0$ with the anchored branch $X_i$, contradicting
unanchoredness. Hence $alpha > 0$. If the terminal point were
nondegenerate, the branch would extend below $alpha$, contradicting
maximality; so it is a degeneracy, and Lemma 2.1 places
$alpha in [k_"pf", k_c]$ and gives the value $epsilon' D(alpha)$ with
$epsilon' = "sign"(cos(2 pi n x_alpha))$. Since $alpha < beta <= k_c$,
Lemma 2.1 gives $cos(2 pi n x_alpha) != 0$, and by continuity its sign is
the branch side $epsilon$.
#qed

#block(above: 1.1em, below: 1.1em)[
*Lemma 5.2* (Upper end, grid-side).
If the branch is grid-side, then
$lim_(kappa arrow.t beta) A'(kappa) <= 0$.
]

_Proof._
If $beta < k_c$, the terminal point is a degeneracy (as above), grid-side
by continuity, and by the degeneracy relations
$ lim A' = cos(a) - cos(b) = -(1 + rho(beta) n\/d) cos(b) < 0, $
since $cos(b) = cos(2 pi n x_beta) > 0$.
If $beta = k_c$, the limit $x_beta$ is a stationary point of $F_(k_c)$
and $cos(2 pi n x_beta) >= 0$ (limit of the grid-side inequality). By the
threshold factorization, $x_beta$ is resonant, complementary, or an
intersection point. At a resonant point, $d equiv -n mod N$ gives
$cos(2 pi d x_beta) = cos(2 pi n x_beta)$, so $lim A' = 0$. At a purely
complementary point, $cos(2 pi n x_beta) = -cos(2 pi d x_beta)$, so
$lim A' = -2 cos(2 pi n x_beta) <= 0$. At an intersection both cosines
vanish and $lim A' = 0$.
#qed

#block(above: 1.1em, below: 1.1em)[
*Lemma 5.3* (Upper end, half-grid-side).
If the branch is half-grid-side, then
$lim_(kappa arrow.t beta) A(kappa) <= 0$.
]

_Proof._
If $beta < k_c$: the terminal degeneracy is half-grid-side, with value
$-D(beta) < 0$ by Lemma 2.1. If $beta = k_c$: now
$cos(2 pi n x_beta) <= 0$. At a resonant limit the value is
$F_(k_c) (x_beta) = cos(2 pi d x_beta) = cos(2 pi n x_beta) <= 0$. At a
complementary limit,
$F_(k_c) = (n cos(2 pi d x_beta) + d cos(2 pi n x_beta))\/N
= ((n - d)\/N) cos(2 pi d x_beta) <= 0$, since
$cos(2 pi d x_beta) = -cos(2 pi n x_beta) >= 0$. At an intersection the
value is $0$.
#qed

= The monotonicity theorem

#block(above: 1.1em, below: 1.1em)[
*Theorem 6.1* (Monotone unanchored amplitudes).
Let $X$ be an unanchored branch on $(alpha, beta) subset.eq (0, k_c]$
with amplitude $A$.
+ If half-grid-side, then
  $A'(kappa) >= sqrt(1 - sigma(kappa)^2) (1 + 1\/tau(kappa)) > 0$ and
  $A(kappa) < 0$ for every $kappa$.
+ If grid-side, then $A' < 0$ on $(alpha, beta)$, and
  $ A(kappa) < lim_(kappa' arrow.b alpha) A(kappa') = D(alpha)
    <= D_max quad "for every" kappa. $
]

_Proof._
(a) At a half-grid-side crest, $cos(2 pi n X) <= -w$ with
$w = sqrt(1-sigma^2)$, and the crest inequality
$k d^2 cos(2 pi d X) > -(1-k) n^2 cos(2 pi n X) >= (1-k) n^2 w$ gives
$cos(2 pi d X) >= w\/tau$. Hence
$A' = cos(2 pi d X) - cos(2 pi n X) >= w(1 + 1\/tau) > 0$: $A$ is
strictly increasing, so $A(kappa) < lim_(arrow.t beta) A <= 0$ by
Lemma 5.3.

(b) By Lemma 5.2 and Lemma 4.1, $A'$ is nondecreasing with
$lim_(arrow.t beta) A' <= 0$, so $A' <= 0$ throughout. If $A'(kappa_0) = 0$
for some $kappa_0$, then $A' equiv 0$ on $[kappa_0, beta)$, which by
Lemma 4.2 forces $X in {0, 1\/2}$ there; but $x = 0$ is anchored and
$x = 1\/2$ is half-grid-side ($n$ odd). Hence $A' < 0$ strictly, $A$ is
strictly decreasing, and its supremum is the lower-end limit
$D(alpha) <= D_max$ from Lemma 5.1 (with $epsilon = +1$ on the grid
side), the value $D(alpha)$ itself not being attained.
#qed

= Proof of the main results

The theorem follows from four facts by a crossing argument: amplitude
convexity along any crest branch (Lemma 4.1), the anchored floor with its
minimum at $k_c$, the strict threshold ranking at $k_c$, and the
degeneracy value bound $|F| <= D_max$ at both ends of any unanchored
branch (Lemmas 2.1 and 5.1). The type dichotomy and Theorem 6.1 are not
needed here; see Remark 7.1.

_Proof of Theorem 1.1._
For $k in [k_c, 1)$ this is the threshold ranking and the upper-range
window ranking of the main paper; recall in quantitative form that every
_unanchored_ stationary value of $F_(k_c)$ is at most
$c_+ := cos(pi(n+1)\/N) < phi.alt$ (unselected resonant sites are at
most $c_+$, complementary values are negative, intersection values
vanish). Fix $k in (0, k_c)$; every anchored amplitude is at least
$phi.alt$. Let $x$ be an unanchored local maximum of $F_k$ and suppose
$F_k (x) >= phi.alt$. If $x$ is degenerate, Lemma 2.1 gives
$|F_k (x)| <= D(k) <= D_max < phi.alt$ by $(star)$, a contradiction. So
$x$ lies on a maximal unanchored branch with amplitude $A$ and lower end
$alpha$; by Lemma 5.1,
$ A(alpha^+) = epsilon D(alpha) <= D_max < phi.alt <= A(k), $
so by continuity and the mean value theorem there is
$kappa_0 in (alpha, k)$ with $A'(kappa_0) > 0$. Convexity gives
$A'(kappa) >= A'(kappa_0) > 0$ for all $kappa >= kappa_0$: the amplitude
rises from $kappa_0$ onward, so the upper limit $V$ of $A$ on the branch
within $(alpha, k_c]$ satisfies $V >= A(k) >= phi.alt$. But $V$ is
either the value of an interior terminal degeneracy, whence
$|V| <= D_max < phi.alt$ by the branch alternative and Lemma 2.1, or the
value of a stationary point of $F_(k_c)$; the latter is unanchored
(a nondegenerate anchored crest admits, by the implicit-function
theorem, a unique local stationary graph, namely the anchored branch),
hence $V <= c_+ < phi.alt$. This contradiction shows
$F_k (x) < phi.alt$ for every unanchored local maximum, so the anchored
crests are exactly the $n$ highest local maxima, strictly. The case
$k = 0$ is trivial.
#qed

_Proof of Corollary 1.2._
Any unanchored crest at parameter $k$ lies on an unanchored branch with
lower end $alpha >= k_"pf"$ (Lemma 5.1), or is itself degenerate with
$k in [k_"pf", k_c]$ (Lemma 2.1). Hence no unanchored crest exists for
$k < k_"pf"$, and the $n$ anchored crests are all of them. Sharpness for
$d$ even: $H_k (1\/2) = -(2 pi)^2 (k d^2 - (1-k) n^2)$ (using
$cos(pi d) = 1$, $cos(pi n) = -1$), so $x = 1\/2$ is an unanchored crest
exactly for $k > k_"pf"$.
#qed

_Proof of Corollary 1.3._
Concavity of $D$ (Lemma 2.1) gives
$D(k) <= D_max - 2 (k - k_"pf")$ on the window, so
$phi.alt = D(k_D) <= D_max - 2(k_D - k_"pf")$, which is the width bound.
Suppose the top-$n$ property fails at $k in (0, k_c)$: some unanchored
local maximum has amplitude $>= phi.alt > 0$. If it is degenerate, it is
itself a degeneracy with value $+D(k) >= phi.alt$, hence grid-side and
$k in [k_"pf", k_D]$. Otherwise run the crossing argument of Theorem 1.1
without $(star)$: either $A(alpha^+) = epsilon D(alpha) >= phi.alt$,
forcing $epsilon = +1$ and $alpha in [k_"pf", k_D]$; or
$A(alpha^+) < phi.alt <= A(k)$, and the rising argument forces the upper
limit $V >= phi.alt$, which excludes a $k_c$-arrival
($V <= c_+ < phi.alt$), so the upper end is an interior degeneracy with
value $epsilon D(beta') >= phi.alt$, forcing $epsilon = +1$ and
$beta' in [k_"pf", k_D]$. In every case a grid-side degeneracy occurs in
$[k_"pf", k_D]$.
#qed

#block(above: 1.1em, below: 1.1em)[
*Remark 7.1* (Role of the monotonicity theorem).
Theorem 1.1 and Corollary 1.3 use only the degeneracy window and value
(Lemma 2.1), universal convexity (Lemma 4.1), the lower-termination
lemma (Lemma 5.1), and the threshold bound. The type dichotomy
(Section 3), the endpoint-slope analysis (Lemmas 5.2 and 5.3), and
Theorem 6.1 are the finer portrait of the model rather than part of the
proof: they show that every unanchored amplitude is in fact monotone on
its lifetime, that half-grid-side amplitudes are negative, and they
underlie the scaling limit of Section 9.
]

= Numerical verification and status

*Branch tracking.* For $(n, d) = (7, 12)$ ($k_"pf" = 0.2539$,
$k_c = 0.3684$, $D_max = 0.4922$, $phi.alt = 0.5469$), tracking every
unanchored branch from $k_c$ downward (script `monotone_check.py`):

#table(
  columns: (auto, auto, auto, auto, auto, auto),
  align: (left, center, center, center, center, center),
  stroke: 0.4pt,
  table.header([branch], [side], [lifetime], [$A$ monotone], [birth value], [$D("birth")$]),
  [$x = 1\/2$], [half-grid], [$[0.2539, k_c]$], [increasing, slope $+2$], [$-0.4922$], [$-D(k_"pf") = -0.4922$],
  [mirror pair 1], [grid], [$[0.3393, k_c]$], [decreasing, $A'(k_c) approx 0$], [$+0.2550$], [$+0.2544$],
  [mirror pair 2], [half-grid], [$[0.3655, k_c]$], [increasing], [$-0.0828$], [$-0.0809$],
)

Every unanchored amplitude is monotone as predicted, convex within
numerical resolution, equal at birth to $plus.minus D(k^*)$, and the
grid-side pair satisfies $A'(k_c^-) -> 0$ (resonant limit). Across the
pairs $(7,12)$, $(5,13)$, $(7,16)$, $(3,10)$, $(9,13)$, the maximal
half-grid-side amplitude over all subcritical $k$ is negative
($-0.081$, $-0.170$, $-0.068$, $-0.336$, $-0.129$), and the maximal
grid-side unanchored amplitude stays below $D_max$ with margin
($0.255$, $0.526$, $0.489$, $0.590$, $0.146$).

*Cascade bottoms.* The lowest parameter at which any unanchored crest
exists matches $k_"pf"$ exactly for even $d$ ($(7,12)$: $0.2542$ vs
$0.2539$; $(7,16)$: $0.1608$ vs $0.1607$; $(3,10)$: $0.0827$ vs
$0.0826$) and lies above it for odd $d$, as Corollary 1.2 requires.

*Domain of $(star)$.* Computed exactly per pair:

#table(
  columns: (auto, auto, auto),
  align: (center, center, center),
  stroke: 0.4pt,
  table.header([$n$], [$(star)$ holds for all coprime $d <=$], [first failure]),
  [3], [62], [64],
  [5], [17], [18],
  [7], [16], [17],
  [9], [17], [19],
  [11], [19], [20],
  [13], [20], [21],
  [15], [22], [23],
  [17], [24], [25],
  [21], [26], [29],
  [25], [32], [33],
)

No pair satisfies $(star)$ above its first failure in the tested range
($d <= 40 n$). Asymptotically the domain confines $d - n$ to a bounded
range (about $d <= n + 8$), while small $n$ enjoy large skew room. Every
pair studied in the paper and in the companion notes satisfies $(star)$.

*Beyond $(star)$.* For failing pairs, adversarial margin scans
(script `hunt.py`) find no violation: the conjecture holds numerically
with thin margins concentrated exactly in the window of Corollary 1.3
(for $(3,100)$: minimal margin $0.0039$ near $k approx 0.0022$, window
width $<= 3 dot 10^(-5)$). The remaining open ingredient is a
nonexistence or displacement lemma for grid-side degeneracies in
$[k_"pf", k_D]$: at such a degeneracy
$cos(2 pi n x^*) = sqrt((1-sigma^2)\/(1-n^2\/d^2)) -> 1$ as
$k^* arrow.b k_"pf"$ forces $x^* -> i\/n$ with $i != 0$, while
stationarity $sin(2 pi c_i\/n + 2 pi d xi) = -rho sin(2 pi n xi)$,
$c_i = d i mod n != 0$, $xi = x^* - i\/n$, obstructs small $xi$; the
companion cosine equation further confines candidates to the residues
$c_i = (n plus.minus 1)\/2$. Quantifying this Diophantine gap
$k^* >= k_"pf" + gamma(n, d)$ with $D(k_"pf" + gamma) < phi.alt$ would
remove $(star)$ entirely; Section 9 turns this heuristic into an exact
scaling limit, and Section 10 collects the resulting research program.

*The even case.* For $n$ even, the mirror-pair companion note shows the
pitchfork at $x = 1\/2$ occurs exactly at $k_"pf"$ and the two arms are
grid-side crests born with value exactly $D_max$: the point $x = 1\/2$ is
then the coincidence $x = i\/n$ with $i = n\/2$, whose impossibility for
odd $n$ is precisely the source of the Diophantine gap above. The even
case thus saturates both the window edge and the value bound; oddness of
$n$ is what forbids saturation.

*Supersession.* Within the paper's numbering: Lemma 2.1 sharpens
Lemma 6.6 (window lower edge, factored equality, no exclusions);
Lemma 4.1 generalizes the computation of Lemma 6.4; Corollary 1.2
supersedes Proposition 6.2; Theorem 1.1 supersedes Theorem 6.8 on the
domain of $(star)$, where Corollary 6.3 upgrades to an empty unresolved
set; in general the unresolved set shrinks to the window of
Corollary 1.3. The subcritical strip constant $h_0$, the small-modulation
constant $k_0$, and the climb-rate estimates of earlier working notes are
no longer needed.


= The skew scaling limit

Fix $n$ and let $d -> infinity$ through integers coprime to $n$. Near the
window bottom, rescale phase and parameter by
$ x = i/n + psi/(2 pi d), quad
  tau = tau(k) = (k d^2)/((1-k) n^2), quad
  "so" quad k = (tau n^2)/(d^2 + tau n^2), $
and write $theta_i = 2 pi c_i\/n$ with $c_i = d i mod n$. To leading
order in $n\/d$, the stationarity equation, the crest condition, the
amplitude deficit, and the envelope identity become, uniformly for $tau$
in compact sets,
$ psi + tau sin(theta_i + psi) = 0, quad
  1 + tau cos(theta_i + psi) > 0, $
$ (1 - F) dot d^2/n^2 -> E = tau (1 - cos(theta_i + psi)) + psi^2/2,
  quad (dif E)/(dif tau) = 1 - cos(theta_i + psi). $
The parameter $d$ has disappeared: the far-skew regime of the model is a
fixed one-parameter problem per residue class, the equilibrium equation of
the Adler phase-locking flow $dot(psi) = -psi - tau sin(theta + psi)$.
Stationary degeneracies are its saddle-nodes, and the subcritical cascade
is asymptotically a phase-locking cascade.

#block(above: 1.1em, below: 1.1em)[
*Lemma 9.1* (Limit structure).
In the limit model:
+ Each anchored branch has $E_c (0) = 0$ and $E_c (tau) <= 2 tau$.
+ Every degeneracy satisfies $tau cos(theta + psi) = -1$,
  $psi = minus.plus sqrt(tau^2 - 1)$, and has deficit
  $ E = tau + 1 + (tau^2 - 1)/2 = 2 tau + ((tau - 1)^2)/2 >= 2 tau. $
+ Degeneracies occur in the arc of $theta$ exactly at the parameters
  $tau$ with $Theta(tau) equiv plus.minus theta (mod 2 pi)$, where
  $ Theta(tau) = op("arccos")(-1\/tau) + sqrt(tau^2 - 1) $
  increases strictly from $Theta(1) = pi$ to $infinity$
  ($Theta'(tau) = sqrt(tau^2-1)\/tau$); each crossing is a saddle-node
  creating one crest--trough pair as $tau$ increases. The first
  degeneracy of the whole system therefore occurs at the solution
  $tau^*_min (n)$ of $Theta(tau) = pi + pi\/n$, in the arcs
  $c = (n plus.minus 1)\/2$.
]

_Proof sketch._ (a) is the envelope law integrated from $E(0) = 0$ with
rate $1 - cos <= 2$. (b) substitutes the degeneracy relations into $E$.
(c) parametrizes degeneracies by $A = theta + psi$ with
$cos A = -1\/tau$: then $psi = -tau sin A$ and
$theta = A + tau sin A = plus.minus Theta(tau) (mod 2 pi)$; solutions of
$sin(theta + psi) = -psi\/tau$ are intersections of a sinusoid with a
line whose slope $-1\/tau$ flattens as $tau$ grows, so the solution count
in each arc is nondecreasing and each crossing creates a pair. Since $n$
is odd, no $theta_c$ equals $pi$, and the value in $(pi, 2 pi)$ nearest
$pi$ is $2 pi (n+1)\/(2 n) = pi + pi\/n$. (For even $n$ the arc
$c = n\/2$ has $theta = pi = Theta(1)$: the pitchfork at $tau = 1$, i.e.
$k^* = k_"pf"$, saturating the window edge, as in the mirror-pair note.)
#qed

Two consequences. First, by (a) and (b), _every newborn crest is born
strictly below the lowest anchored crest of the same instant_, with
deficit margin $(tau^* - 1)^2\/2$: in the scaled regime, the moving-floor
comparison holds for every $n$, even where the $k_c$-floor comparison
$(star)$ fails. Second, the model becomes quantitatively predictive.
Solving the limit problem per $n$:

#table(
  columns: (auto, auto, auto, auto, auto, auto),
  align: (center, center, center, center, center, center),
  stroke: 0.4pt,
  table.header([$n$], [$tau^*_min$], [$E_"birth"$], [$max_c E_c (tau^*)$], [margin $[n^2\/d^2]$], [$E_phi.alt = pi^2 (n-1)^2\/(2 n^2)$]),
  [3], [2.407], [5.804], [1.534], [4.270], [2.193],
  [5], [1.934], [4.305], [2.031], [2.274], [3.158],
  [7], [1.720], [3.698], [2.207], [1.491], [3.626],
  [9], [1.594], [3.366], [2.281], [1.085], [3.899],
  [11], [1.511], [3.154], [2.314], [0.840], [4.078],
  [13], [1.452], [3.006], [2.328], [0.678], [4.205],
)

The birth deficit exceeds the worst anchored deficit for every $n$
(column 5 positive), while it exceeds the $k_c$-floor deficit
$E_phi.alt$ only for $n <= 7$: for $n >= 9$ the newborn is born above
the eventual floor and the separation must be maintained dynamically.
Against the adversarial scans, the limit model predicts both the location
and the size of the minimal margins:

#table(
  columns: (auto, auto, auto, auto, auto),
  align: (center, center, center, center, center),
  stroke: 0.4pt,
  table.header([pair], [predicted worst $k$], [measured], [predicted margin], [measured]),
  [$(3, 100)$], [$0.00216$], [$0.00221$], [$0.0038$], [$0.0039$],
  [$(5, 98)$], [$0.00501$], [$0.00510$], [$0.0059$], [$0.0060$],
  [$(7, 100)$], [$0.00836$], [$0.00842$], [$0.0073$], [$0.0073$],
)

= Grounds for further inquiry

The following problems, in increasing distance from the proved results,
constitute the full analysis of the model. Each is stated so that a
solution slots directly into the framework above.

+ _Rigorous scaling limit._ Prove quantitative convergence of the
  subcritical stationary problem to the limit model of Section 9:
  positions, deficits, and degeneracy parameters within
  $O(n^2\/d^2)$-relative errors, uniformly for $tau$ in compact sets.
  Standard rescaling estimates; nothing conceptual is missing.

+ _The descent comparison._ In the limit model, show
  $E_"unanchored" (tau) > max_c E_c (tau)$ for all $tau >= tau^*$, not
  only at birth. Both sides grow by the envelope law
  $E' = 1 - cos("phase")$; the statement is a comparison of locking
  phases in the Adler equation. For $n <= 7$ it is unnecessary
  ($E_"birth" > E_phi.alt$), so its resolution for $n >= 9$, matched at
  $tau tilde d\/n$ onto the resonant regime of Proposition 6.1, removes
  $(star)$ and proves the conjecture for every coprime pair. Problems 1
  and 2 together are the complete remaining content of the top-$n$
  conjecture.

+ _Finite-$d$ birth threshold._ Sharpen Lemma 2.1 to
  $k^* >= k_"pf" (1 + gamma(n, d))$ for actual degeneracies, with
  $gamma$ recovering $tau^*_min (n)$ asymptotically: the Diophantine
  content is that $x^* = i\/n$ is unreachable for odd $n$, and its
  quantitative form is the finite-$d$ shadow of Lemma 9.1(c).

+ _Cascade combinatorics._ Prove that for large $d$ the subcritical
  events occur on the schedule $Theta(tau) equiv plus.minus theta_c
  (mod 2 pi)$, reproducing the observed event counts, orders, and
  bottoms; classify the second-generation events
  ($Theta equiv dots + 2 pi m$) and the crossover to the resonant
  collision at $k_c$. This would give the complete bifurcation portrait
  of the family.

+ _Sharp margin theory._ Conjecture: the global minimum of the ranking
  margin is asymptotically the smaller of the resonant gap
  $Delta = 2 sin(pi\/N) sin(pi n\/N)$ at $k_c$ and the birth margin
  $(E_"birth" - max_c E_c)(tau^*_min) dot n^2\/d^2$; both regimes are
  verified numerically above.

+ _Symmetry and phase._ For the phase-perturbed family
  $k cos(2 pi d x) + (1-k) cos(2 pi n x - phi.alt)$: classify the
  endpoint selection as a function of $phi.alt$ (the even-$n$ pitchfork
  unfolds and $"sign"(phi.alt)$ selects a representative; what is the
  full bifurcation set for odd $n$?). This connects the phase-alignment
  remark of the main paper to the mirror-pair companion note.

+ _Beyond two frequencies._ For paths in the coefficient simplex of
  $sum_j k_j cos(2 pi n_j x)$: does anchored continuation select
  iterated Euclidean structures, as the threshold identity
  $"Huplet"(n, d, k_c) = Q(n, n + d)$ and its mediant reading suggest?
  Separately: which parts of the theory are shape-independent
  (convexity and the envelope law persist for general even kernels; the
  factored degeneracy value does not), and what replaces $D$ for other
  waveforms?

Problems 1--3 close the model's own conjecture; problems 4--7 open it
outward: to bifurcation theory (the cascade as a phase-locking cascade),
to Diophantine analysis (the oddness obstruction), and to the arithmetic
of iterated mediants. The rational-alignment classification and the even
case are treated in the two companion notes and complete the picture.


#v(1em)

#bibliography(bytes("@unpublished{quplets,
  author = {Braff, Malcolm},
  title = {Crest continuation and canonical Euclidean-rhythm selection: a two-frequency cosine model},
  note = {Manuscript, HSM Basel, FHNW},
  year = {2026}
}"), title: "Bibliography", style: "ieee")

// Rational alignment rigidity of anchored crests
// Companion note to "Introducing Quplets: from crest trajectories to Euclidean rhythms"
// Intended location: further_steps/rational-alignment-rigidity.typ

#set page(margin: (x: 2.6cm, y: 2.6cm))
#set par(justify: true, leading: 0.62em)
#set text(size: 10.5pt)
#set heading(numbering: "1.1.")

#let sgn = math.op("sgn")
#let qed = [#h(1fr) $square$]

#let statement(kind, body) = block(above: 1.1em, below: 1.1em)[#body]

#align(center)[
  #text(size: 15pt)[*Rational alignment rigidity of anchored crests*] \
  #v(0.3em)
  #text(size: 11pt)[Companion note to _Introducing Quplets_] \
  #v(0.3em)
  Malcolm Braff, HSM Basel, FHNW
]

#v(1em)

*Abstract.*
For coprime integers $1 < n < d$ with $n$ odd, the anchored crest branches
$X_i (k)$ of the two-frequency family
$F_k (x) = k cos(2 pi d x) + (1-k) cos(2 pi n x)$
are simultaneously rational at the slope-balanced parameter $k_c = n\/(n+d)$,
where they occupy the resonant $(n+d)$-grid. This note asks whether $k_c$ is
the _only_ interior parameter with this property. The answer depends on $n$ in
a sharp trichotomy. For $n = 3$, simultaneous rationality holds on a dense set
of parameters. For $n = 5$, there is (at least) one further exact alignment for
every coprime $d$, in closed form: $X_i = i\/5 + sgn(epsilon_i) \/ (20 d)$, at
$k^* = 5 sin(pi \/ (2d)) \/ (5 sin(pi\/(2d)) + d sin(3 pi\/10))$. For odd
$n >= 7$ we prove a rigidity theorem in the trivial regime of the
Conway--Jones classification of trigonometric diophantine equations: any
simultaneous rational alignment whose pairwise coincidence equations are
trivially satisfied occurs at $k = k_c$. The only unresolved case is the
exceptional regime of the Conway--Jones list, which is a finite verification
and is empirically empty in all scans. The entire trichotomy reduces to the
single inequality $2 dot 3 > n$.

#v(0.5em)

= Introduction

We keep the notation of the main paper #cite(<quplets>, form: "normal").
Throughout, $1 < n < d$ are coprime integers, $n$ is odd, and
$ F_k (x) = k cos(2 pi d x) + (1-k) cos(2 pi n x), quad k in [0,1], quad x in bb(R)\/bb(Z). $
By Proposition 2.2 of the main paper, the $n$ crests of $F_0$ continue uniquely as
anchored branches $X_i : [0,1] -> bb(R)\/bb(Z)$ with $X_0 equiv 0$, each moving
strictly monotonically inside its nearest-grid corridor. The rounding residues
$epsilon_i = n m_i - i d$, $m_i = floor(d i\/n + 1\/2)$, form the complete
centered residue system modulo $n$, and $sigma_i = sgn(epsilon_i)$ is the
direction of motion of the branch $X_i$.

At the slope-balanced parameter $k_c = n\/(n+d)$, Corollary 3.3 of the main
paper places all anchored crests on the resonant $(n+d)$-grid:
$X_i (k_c) = floor(N i\/n + 1\/2)\/N$ with $N = n + d$. In particular all
crest positions are rational at $k_c$.

#statement("def")[
*Definition 1.1* (Full rational alignment).
A parameter $k in (0,1)$ is a _full rational alignment_ if $X_i (k) in bb(Q)$
for every $i in {0, dots, n-1}$; equivalently, if all anchored crests lie on a
common rational grid $(1\/m) bb(Z)$ for some $m$.
]

The parameter $k_c$ is a full rational alignment for every admissible pair
$(n,d)$. The question addressed here is its uniqueness. Since $F_k$ is even,
the stationary set is mirror-symmetric and
$ X_(n-i) (k) = 1 - X_i (k) quad "for all" k, $
so rationality of $X_i$ and of $X_(n-i)$ are equivalent, and the question
concerns only the _independent branches_ $i = 1, dots, (n-1)\/2$.

The results are as follows.

- For $n = 3$ there is a single independent branch and full rational
  alignments are dense in $(0,1)$ (Proposition 3.1). The trajectory moreover
  realizes infinitely many canonical nearest-grid representatives
  $sans(Q)(3, m)$ (Remark 3.3).

- For $n = 5$ there are exactly two independent branches, and for _every_
  coprime $d$ there is an exact full rational alignment at an interior
  parameter $k^* != k_c$, in closed form (Proposition 3.2). The uniqueness of
  this extra alignment is open.

- For odd $n >= 7$ we prove: any full rational alignment whose pairwise
  coincidence equations decompose _trivially_ in the sense of Conway and Jones
  #cite(<cj>, form: "normal") occurs at $k = k_c$ (Theorems 6.1 and 6.2). The
  exceptional regime remains open but is a finite verification
  (Section 8), and all numerical scans are consistent with full rigidity
  (Section 7).

The mechanism of the trichotomy is isolated in Section 6: the alignment
family responsible for the $n = 5$ counterexamples exists precisely when
$2 dot 3 > n$.

= Corridor coordinates

Fix an independent branch index $i in {1, dots, (n-1)\/2}$ and a parameter
$k in (0,1)$. In the corridor parametrization of Proposition 2.2 of the main
paper, the position $X_i (k)$ corresponds to angles
$ a_i = 2 pi n t_i in (0, pi), quad b_i = 2 pi d (L_i - t_i) in (0, pi), $
where $t_i$ is the offset from the anchor $i\/n$ and $2 pi L_i$ is the corridor
length. Stationarity reads
$ k / (1-k) = (n sin a_i) / (d sin b_i), $
so that the ratio
$ rho := (sin a_i) / (sin b_i) = d/n dot k/(1-k) $
is _common to all branches_ at a given $k$. Moreover $rho = 1$ if and only if
$k = k_c$.

#statement("lem")[
*Lemma 2.1* (Corridor identities).
For every independent branch $i$ and every $k in (0,1)$,
$ d/n a_i + b_i = (2 pi ell_i)/n, quad ell_i := |epsilon_i|, #h(2.2em) ("R"_i) $
and consequently
$ a_i + b_i < (2 pi ell_i)/n <= (pi (n-1))/n < pi, quad
  a_i < (2 pi ell_i)/d, quad b_i < (2 pi ell_i)/n. $
If $X_i (k) in bb(Q)$ then $a_i, b_i in pi bb(Q)$.
]

_Proof._
In the notation of Proposition 2.2 of the main paper,
$(d\/n) a_i + b_i = d dot 2 pi L_i$ and
$2 pi L_i = 2 pi |epsilon_i| \/ (n d)$, giving (R$""_i$). The inequalities
follow from $d\/n > 1$ and positivity of $a_i, b_i$. If $X_i (k) = p\/q$ then
$t_i = |X_i (k) - i\/n| in bb(Q)$, hence $a_i in pi bb(Q)$ and, by
(R$""_i$), $b_i in pi bb(Q)$.
#qed

#statement("lem")[
*Lemma 2.2* (Distinct corridor lengths).
The values $ell_1, dots, ell_((n-1)\/2)$ are pairwise distinct and exhaust
${1, dots, (n-1)\/2}$. In particular, branches with $ell = 1$ and $ell = 2$
exist for every odd $n >= 5$.
]

_Proof._
By Corollary 5.1 of the main paper, $epsilon_i equiv -i d ("mod" n)$ in
centered representation, and $i |-> epsilon_i$ is injective. Suppose
$ell_i = ell_j$ with $1 <= i < j <= (n-1)\/2$. Then $epsilon_i = plus.minus epsilon_j$,
i.e. $d (i minus.plus j) equiv 0 ("mod" n)$, hence $n | (i minus.plus j)$ by
coprimality. But $0 < j - i < n$ and $0 < i + j <= (n-3)\/2 + (n-1)\/2 = n-2 < n$,
a contradiction. The $(n-1)\/2$ distinct values $ell_i$ lie in
${1, dots, (n-1)\/2}$ and therefore exhaust it.
#qed

The exhaustion statement is what makes the pair analysis of Section 5
arithmetic rather than merely combinatorial: the pair of independent branches
with $\{ell_i, ell_j\} = {1, 2}$ always exists, and it is this pair that
carries the rigidity.

= The small cases: $n = 3$ and $n = 5$

#statement("prop")[
*Proposition 3.1* (Density for $n = 3$).
Let $d > 3$ be coprime to $3$. The set of full rational alignments is dense in
$(0,1)$.
]

_Proof._
There is a single independent branch $X_1$, and $X_2 = 1 - X_1$. For every
rational $x$ in the open corridor of $X_1$, the corridor bijection
$t |-> k$ of Proposition 2.2 of the main paper yields a unique
$k(x) in (0,1)$ with $X_1 (k(x)) = x$, and then all three crests
${0, x, 1-x}$ are rational. Since $X_1$ is a homeomorphism of $[0,1]$ onto the
closed corridor, the parameters $k(x)$, $x$ rational, are dense in $(0,1)$.
#qed

#statement("rem")[
*Remark 3.2* (Mediant ladder for $n = 3$).
The density phenomenon is structured. For $(n,d) = (3,4)$, taking
$x = p\/(3p+1)$ with $p >= 2$ gives the crest configuration
${0, p, 2p+1}\/(3p+1)$, which is exactly the canonical nearest-grid
representative $sans(Q)(3, 3p+1)$ of the main paper. Thus the Huplet
trajectory of $(3,4)$ passes through the entire mediant ladder
$sans(Q)(3, 4 + 3j)$, $j >= 0$, of which the threshold identity
$"Huplet"(3, 4, k_c) = Q(3,7)$ is only the first rung. The analogous statement
for general $(3,d)$ holds for those grids $m$ whose rounding residue at $i = 1$
has the same sign as $epsilon_1 (d)$. This behaviour is specific to $n = 3$:
for $(n,d) = (5,7)$ one checks $k(3\/17) approx 0.32582 != 0.27694 approx k(7\/17)$,
so the trajectory does _not_ pass through $Q(5, 17)$, and the ladder stops at
the first mediant.
]

#statement("prop")[
*Proposition 3.3* (The quintuplet alignment family, $n = 5$).
Let $d > 5$ be coprime to $5$. Define
$ x_i = i/5 + sigma_i/(20 d), quad i = 1, dots, 4, quad x_0 = 0 . $
Then there is a parameter
$ k^* = (5 sin(pi/(2d))) / (5 sin(pi/(2d)) + d sin((3 pi)/10)) in (0, k_c) $
such that $X_i (k^*) = x_i$ for every $i$. In particular $k^*$ is a full
rational alignment (all five crests lie on the $20d$-grid), and
$k^* != k_c$.
]

_Proof._
By Lemma 2.2, the two independent branches carry $\{ell_1, ell_2\} = {1,2}$.
Set $a_1 = a_2 = a := pi\/(2d)$; this corresponds to the corridor offset
$t = a\/(2 pi n) = 1\/(20 d)$ in the direction $sigma_i$, i.e. to the
positions $x_i$ above, and $a < 2 pi ell_i \/ d$ holds for both branches. By
(R$""_i$),
$ b_i = (2 pi ell_i)/5 - d/5 dot pi/(2d) = (pi (4 ell_i - 1))/10, $
so ${b_1, b_2} = {3 pi\/10, 7 pi\/10}$ and $b_1 + b_2 = pi$. Hence
$sin b_1 = sin b_2$, while $sin a_1 = sin a_2$ trivially, so
$ (sin a_1)/(sin b_1) = (sin a_2)/(sin b_2), $
and the two corridor points are stationary at the _same_ parameter
$k^* = 5 sin a \/ (5 sin a + d sin b_1)$. Since each corridor contains exactly
one stationary point per parameter (Proposition 2.2 of the main paper), these
points are the anchored branches at $k^*$: $X_i (k^*) = x_i$ for $i = 1, 2$,
and mirror symmetry gives $i = 3, 4$. Finally
$sin(7 pi\/10) = sin(3 pi\/10)$ yields the closed form, and
$k^* < k_c$ because $rho = sin a\/sin b_1 < 1$.
#qed

For $(5,7)$ this gives $k^* = 5 sin(pi\/14)\/(5 sin(pi\/14) + 7 sin(3 pi\/10))
approx 0.16420$, with crests at ${0, 27, 57, 83, 113}\/140$; the identity
$X_1 (k^*) = 27\/140$, $X_2 (k^*) = 57\/140$ has been verified to $50$ decimal
digits both through the sine identity and by direct root-finding on the
branches. Analogous verified instances: $(5,6)$ at ${23,47}\/120$, $(5,8)$ at
${33,63}\/160$, $(5,9)$ at ${37,73}\/180$, $(5,11)$ at ${43,87}\/220$,
$(5,12)$ at ${47,97}\/240$, $(5,13)$ at ${53,103}\/260$, $(5,14)$ at
${57,113}\/280$.

Note that the minimal-grid gap word of the $(5,7)$ configuration is
$(27, 30, 26, 30, 27)$, which takes three values: the extra alignment is _not_
maximally even on its grid. Rational alignment and Euclidean structure
separate away from $k_c$.

= The coincidence equation and the Conway--Jones dichotomy

Fix two independent branches $i != j$ and suppose both positions are rational
at a common parameter $k$. By Lemma 2.1 all four angles are rational multiples
of $pi$, and equality of the ratios $rho$ gives the _coincidence equation_
$ sin a_i sin b_j = sin a_j sin b_i . #h(2.2em) (star) $
By product-to-sum, $(star)$ is the vanishing four-term cosine sum
$ Sigma := cos u_1 - cos u_2 - cos u_3 + cos u_4 = 0, $
$ u_1 = a_i - b_j, quad u_2 = a_i + b_j, quad u_3 = a_j - b_i, quad u_4 = a_j + b_i, $
with all $u_m in pi bb(Q)$.

Vanishing rational-coefficient sums of cosines of rational angles are
completely classified by Conway and Jones #cite(<cj>, form: "normal"): every
such sum decomposes into minimal vanishing subsums, and every minimal subsum
is either

+ a singleton $c dot cos(pi\/2) = 0$;
+ a cancelling pair, $c (cos phi - cos phi') = 0$ with $phi' = plus.minus phi
  ("mod" 2 pi)$ or $c(cos phi + cos phi') = 0$ with
  $phi' = pi minus.plus phi ("mod" 2 pi)$; or
+ an _exceptional_ relation from their finite list, whose angles are odd
  multiples of $pi\/3$ together with rational angles of denominator dividing
  $15$ or $21$ (numerators as in #cite(<cj>, form: "normal"), Theorem 7).

#statement("def")[
*Definition 4.1.*
A solution of $(star)$ in rational angles is _trivial_ if $Sigma$ vanishes
through a decomposition into subsums of the first two kinds only, and
_exceptional_ otherwise.
]

= Classification of trivial solutions for $n = 7$

Throughout this section $n = 7$, $d > 7$ is coprime to $7$, and $(i,j)$ is a
pair of independent branches, so $ell_i != ell_j$, $ell_i, ell_j in {1,2,3}$,
and $s := ell_i + ell_j in {3,4,5}$. We record the master bounds, all
consequences of Lemma 2.1:

$ 0 < a_m < (2 pi ell_m)/d, quad 0 < b_m < (2 pi ell_m)/7, quad
  a_m + b_m < (2 pi ell_m)/7 <= (6 pi)/7, #h(2.2em) ("B1") $
$ u_2 + u_4 = (a_i + a_j) + (b_i + b_j) < (2 pi s)/7 <= (10 pi)/7, #h(2.2em) ("B2") $
$ |u_1|, |u_3| < (6 pi)/7, quad u_2, u_4 in (0, (10 pi)/7). #h(2.2em) ("B3") $

(B2) follows by adding (R$""_i$) and (R$""_j$) and using $d\/7 > 1$.

#statement("prop")[
*Proposition 5.1* (Trivial classification).
The trivial solutions of $(star)$ are exactly the following three families.

+ *T1*: $a_i = b_i$ and $a_j = b_j$. Equivalently $rho = 1$, i.e. $k = k_c$.

+ *T3*: $a_i = a_j$ and $b_i + b_j = pi$. By (R), the common offset is pinned
  to
  $ a_i = a_j = (pi (2s - 7))/(2 d), $
  which is admissible if and only if $s >= 4$; then
  $b_m = pi (4 ell_m - 2s + 7)\/14$.

+ *T4*: $a_i + a_j = pi$ and $b_i = b_j$. By (R), admissible if and only if
  $d < 2s$, i.e. $d in {8, 9}$ and $s = 5$; then
  $a_m = pi\/2 + pi (ell_m - ell_(m'))\/d$ and $b_i = b_j = pi (2s - d)\/14$.

Conversely, each family satisfies $(star)$: in T3,
$sin a_i = sin a_j$ and $sin b_j = sin(pi - b_i) = sin b_i$; in T4,
$sin a_i = sin(pi - a_j) = sin a_j$ and $b_i = b_j$.
]

_Proof._
A trivial decomposition partitions the four signed terms of $Sigma$ into
vanishing singletons and vanishing pairs.

_Step 1: singletons._
A singleton vanishes when its argument is congruent to $pi\/2$ modulo $pi$.
By (B3), the admissible values are $u_1, u_3 in {plus.minus pi\/2}$ and
$u_2, u_4 = pi\/2$: the value $3 pi\/2$ is excluded for $u_2$ (and
symmetrically $u_4$) because $u_2 = 3 pi\/2$ would force
$u_4 < 10 pi\/7 - 3 pi\/2 < 0$ by (B2).

_Step 2: pairs._
We list the possible vanishing pairs; shifts by $2 pi$ are controlled by (B2),
(B3).

- ${+u_1, -u_2}$: requires $cos u_1 = cos u_2$, i.e. $u_1 = plus.minus u_2
  ("mod" 2 pi)$. The four branches give $b_j = 0$, $a_i = 0$, $a_i = pi$,
  $b_j = pi$, all impossible by (B1), (B3). Symmetrically ${-u_3, +u_4}$ is
  impossible.

- ${+u_1, -u_3}$: $cos u_1 = cos u_3$. Since $|u_1 minus.plus u_3| < 12 pi\/7 < 2 pi$,
  either $u_1 = u_3$, i.e. $a_i + b_i = a_j + b_j$, or $u_1 = -u_3$, i.e.
  $a_i + a_j = b_i + b_j$.

- ${-u_2, +u_4}$: $cos u_2 = cos u_4$. By (B2) the shift $u_2 + u_4 = 2 pi$
  is impossible, so $u_2 = u_4$, i.e. $a_i - a_j = b_i - b_j$.

- ${+u_1, +u_4}$: $cos u_1 = -cos u_4$, so $u_1 + u_4 equiv pi$ or
  $u_1 - u_4 equiv pi ("mod" 2 pi)$. The ranges
  $u_1 + u_4 in (-6 pi\/7, 16 pi\/7)$ and $u_1 - u_4 in (-16 pi\/7, 6 pi\/7)$
  leave exactly
  $ ("E1") #h(0.6em) a_i + a_j + b_i - b_j = pi, #h(1.6em)
    ("E2") #h(0.6em) a_j - a_i + b_i + b_j = pi. $

- ${-u_2, -u_3}$: $cos u_2 = -cos u_3$; the same range analysis leaves
  $ ("E3") #h(0.6em) a_i + a_j + b_j - b_i = pi, #h(1.6em)
    ("E4") #h(0.6em) a_i - a_j + b_i + b_j = pi. $

_Step 3: partitions of type $2+2$._
There are three pairings.

$(a)$ ${u_1, u_2} | {u_3, u_4}$: impossible by Step 2.

$(b)$ ${u_1, u_3} | {u_2, u_4}$: the pair ${-u_2, +u_4}$ gives
$a_i - a_j = b_i - b_j$. Combining with $u_1 = u_3$
($a_i - a_j = -(b_i - b_j)$) forces $a_i = a_j$, $b_i = b_j$, hence
$ell_i = ell_j$ by (R), contradiction. Combining with $u_1 = -u_3$
($a_i + a_j = b_i + b_j$) forces $a_i = b_i$ and $a_j = b_j$: family *T1*.

$(c)$ ${u_1, u_4} | {u_2, u_3}$: one of (E1), (E2) together with one of (E3),
(E4). Adding (E1) and (E4) gives $a_i + b_i = pi$, contradicting (B1); adding
(E2) and (E3) gives $a_j + b_j = pi$, likewise. Adding (E1) and (E3) gives
$a_i + a_j = pi$ and subtracting gives $b_i = b_j$: family *T4*; the
constraint $pi = a_i + a_j < 2 pi s\/d$ forces $d < 2s <= 10$, and
$s > d\/2$ forces $s = 5$ for $d in {8,9}$. Adding (E2) and (E4) gives
$b_i + b_j = pi$ and subtracting gives $a_i = a_j$: family *T3*; adding the
two relations (R) then pins $a_i = a_j = pi (2s-7)\/(2d)$, positive if and
only if $s >= 4$, and the stated values of $b_m$ follow, with
$0 < b_m < 2 pi ell_m\/7$ satisfied whenever $s >= 4$.

_Step 4: partitions with singletons._
Four singletons: $u_2 = u_4 = pi\/2$ and $u_1 in {plus.minus pi\/2}$ give
$2 a_i = u_1 + u_2 in {0, pi}$, so $a_i in {0, pi\/2}$; $a_i = 0$ is
impossible and $a_i = pi\/2$ forces $b_j = 0$. Impossible. Three singletons
force a fourth. Two singletons and one pair, by the position of the two
vanishing arguments:

- ${u_1, u_2}$ or ${u_3, u_4}$: as in the four-singleton case, impossible.

- ${u_1, u_3}$, pair ${-u_2, +u_4}$: the pair gives
  $a_i - a_j = b_i - b_j =: delta$, and
  $u_1 - u_3 = 2 delta in {0, plus.minus pi}$. If $delta = 0$ then
  $ell_i = ell_j$, contradiction. If $|delta| = pi\/2$, subtracting the
  relations (R) gives $(d\/7 + 1)(pi\/2) = 2 pi (ell_i - ell_j)\/7$ (after
  exchanging $i, j$ if necessary), i.e. $d + 7 = 4(ell_i - ell_j) <= 8$,
  impossible.

- ${u_2, u_4}$, pair ${+u_1, -u_3}$: the singletons give
  $a_i + b_j = a_j + b_i = pi\/2$, hence $a_i - a_j = b_i - b_j$ and
  $(a_i + a_j) + (b_i + b_j) = pi$. The branch $u_1 = u_3$ again forces
  $ell_i = ell_j$. The branch $u_1 = -u_3$ gives $a_i + a_j = b_i + b_j$, so
  both sums equal $pi\/2$; adding the relations (R) yields $d + 7 = 4s$, i.e.
  $d in {9, 13}$ with $s = 4, 5$ respectively. In these cases the linear
  system consisting of (R$""_i$), (R$""_j$), $b_i = pi\/2 - a_j$,
  $b_j = pi\/2 - a_i$ has nonzero determinant and its unique solution is
  $a_m = b_m = 2 pi ell_m \/ (7 + d)$: indeed, with $d = 4s - 7$,
  $ d/7 dot (2 pi ell_i)/(7+d) + pi/2 - (2 pi ell_j)/(7+d)
    = (pi (ell_i + ell_j)(4 ell_i - 7))/(14 s) + pi/2
    = (2 pi ell_i)/7 . $
  This is the *T1* configuration (at $d = 9$ and $d = 13$ the balanced
  configuration happens to satisfy $a_i + b_j = pi\/2$ in addition, which is
  why it reappears through this decomposition). No new solutions arise.

- ${u_1, u_4}$, pair ${-u_2, -u_3}$: the singleton $u_4 = pi\/2$ gives
  $b_i = pi\/2 - a_j$, and $u_1 = plus.minus pi\/2$; the pair is (E3) or
  (E4). Four subcases.
  With $a_i = b_j + pi\/2$ and (E3): substitution gives $a_j + b_j = pi\/2$,
  hence $b_j = b_i$ and $a_i = pi - a_j$; the solution lies in the *T4* locus.
  (For $d in {8,9}$ the pinned T4 values violate $a_j + b_j = pi\/2$, so the
  subcase is in fact empty, but containment suffices.)
  With $a_i = b_j + pi\/2$ and (E4): substitution gives $a_j = b_j$, hence by
  (R$""_j$) $a_j = 2 pi ell_j\/(7+d)$, and (R$""_i$) becomes
  $ (7+d)(7 + d - 4 ell_i) = -4 ell_j (d - 7) < 0, $
  forcing $d < 4 ell_i - 7 <= 5$, impossible.
  With $b_j = a_i + pi\/2$ and (E3): substitution gives $a_i + a_j = pi\/2$
  and $b_i = a_i$, hence $a_i = 2 pi ell_i\/(7+d)$ by (R$""_i$), and
  (R$""_j$) becomes
  $ (7+d)(7 + d - 4 ell_j) = 4 ell_i (d - 7). $
  The left side is at least $(7+d)(d-5)$ and the right side at most
  $12(d-7)$; their difference is $d^2 - 10 d + 49 = (d-5)^2 + 24 > 0$,
  impossible.
  With $b_j = a_i + pi\/2$ and (E4): substitution gives $a_i = a_j$ and
  $b_i + b_j = pi$; the solution lies in the *T3* locus.

- ${u_2, u_3}$, pair ${+u_1, +u_4}$: symmetric to the previous case under the
  relabeling $i <-> j$, which exchanges $u_1 <-> u_3$, $u_2 <-> u_4$ and
  (E1) $<->$ (E3), (E2) $<->$ (E4). Same conclusions.

Finally, a partition of type $1 + 3$ requires a vanishing three-term subsum;
a minimal such subsum containing no zero cosine is exceptional by the
Conway--Jones classification, and one containing a zero cosine reduces to the
partitions already treated. This exhausts all trivial decompositions.
#qed

= The rigidity theorems

#statement("thm")[
*Theorem 6.1* (Trivial-regime rigidity, $n = 7$).
Let $d > 7$ be coprime to $7$. Suppose $k in (0,1)$ is a full rational
alignment such that, for each pair of independent branches, the coincidence
equation $(star)$ admits a trivial decomposition. Then $k = k_c$.
]

_Proof._
By Lemma 2.2 the pair of independent branches with $\{ell_i, ell_j\} = {1,2}$
exists; for this pair $s = 3$. By Proposition 5.1, family T3 requires
$s >= 4$ and family T4 requires $s = 5$: neither is available. Hence the pair
satisfies T1, so $rho = 1$, so $k = k_c$.
#qed

The proof isolates the trichotomy. For $n = 5$ the _only_ independent pair is
$\{1, 2\}$, and the T3 admissibility condition reads
$a = pi (2 dot 3 - n)\/(2d) > 0$, i.e. $6 > n$: satisfied, and Proposition 3.3
is exactly the resulting family. For $n >= 7$ the same inequality fails, and
with it the entire counterexample mechanism.

#statement("thm")[
*Theorem 6.2* (Trivial-regime rigidity, odd $n >= 7$).
Let $n >= 7$ be odd and $d > n$ coprime to $n$. Suppose $k in (0,1)$ is a
full rational alignment such that the coincidence equation of the pair of
independent branches with $\{ell_i, ell_j\} = {1,2}$ admits a trivial
decomposition. Then $k = k_c$.
]

_Proof._
Repeat the proof of Proposition 5.1 for this single pair with $7$ replaced by
$n$ throughout. The bounds sharpen: by Lemma 2.1,
$a_m + b_m < 4 pi\/n <= 4 pi\/7$ and
$u_2 + u_4 < 2 pi s\/n = 6 pi\/n < pi$, so in Step 1 the singleton values
$u_2, u_4 = pi\/2$ already exhaust the possibilities and the
${u_2, u_4}$-singleton case of Step 4 (which needs $u_2 + u_4 = pi$) is
excluded outright. In Step 3, T3 requires $pi (6 - n)\/(2d) > 0$, impossible
for $n >= 7$; T4 requires $pi = a_i + a_j < 6 pi\/d$, impossible for
$d > n >= 7$. In Step 4, the ${u_1, u_3}$ case gives $d + n = 4(ell_i - ell_j) <= 4$,
impossible; in the ${u_1, u_4}$ case the two Diophantine subcases become
$d < 4 ell_i - n <= 1$ and
$(n+d)(n + d - 4 ell_j) = 4 ell_i (d - n)$ with $ell_i, ell_j <= 2$, whose
sides differ by at least $(n+d)^2 - 8(n+d) - 8(d-n) >= (S-8)^2 + 48 > 0$ for
$S = n + d >= 15$; both impossible. All decompositions therefore reduce to
T1, and $k = k_c$.
#qed

= Numerical verification

The classification of Proposition 5.1 is falsifiable: it predicts, for each
pair of independent branches, the exact number and the exact positions of all
pairwise rational alignments in the trivial regime. The following was checked
by exhaustive enumeration of rational corridor positions with denominators
$q <= 300$ (precision $35$ digits, coincidence tolerance $10^(-22)$), and by
direct $40$-digit evaluation of every predicted point, including those whose
denominator $28 d$ exceeds the enumeration bound.

#table(
  columns: (auto, auto, auto, auto),
  align: (center, center, left, center),
  stroke: 0.4pt,
  table.header([$(n,d)$], [pair $\{ell_i, ell_j\}$], [predicted alignments], [observed]),
  [$(7,8)$], [${1,2}$], [$k_c$ only], [confirmed],
  [$(7,8)$], [${1,3}$], [$k_c$; T3 at $(31, 95)\/224$, $k approx 0.21494$], [confirmed],
  [$(7,8)$], [${2,3}$], [$k_c$; T3 at $(61, 93)\/224$, $k approx 0.35046$; T4 at $(29,43)\/112$, $k = 7 sin (3 pi\/8) \/ (7 sin (3 pi\/8) + 8 sin (pi\/7)) approx 0.65074$], [confirmed],
  [$(7,9)$], [${1,2}$], [$k_c$ only], [confirmed],
  [$(7,9)$], [${1,3}$], [$k_c$; T3 at $(73, 109)\/252$, $k approx 0.17805$], [confirmed],
  [$(7,9)$], [${2,3}$], [$k_c$; T3 at $(11,25)\/84$, $k approx 0.30150$; T4 at $(29,83)\/252$, $k = 7 sin (7 pi\/18) \/ (7 sin (7 pi\/18) + 9 sin (pi\/14)) approx 0.76660$], [confirmed],
  [$(7,10)$], [${1,2}$], [$k_c$ only], [confirmed],
  [$(7,10)$], [${1,3}$], [$k_c$; T3 at $(39,81)\/280$, $k approx 0.14939$], [confirmed],
  [$(7,10)$], [${2,3}$], [$k_c$; T3 at $(37,117)\/280$, $k approx 0.26075$; no T4 ($d >= 10$)], [confirmed],
  [$(7,12)$], [${1,2}$], [$k_c$ only], [confirmed],
  [$(7,12)$], [${1,3}$], [$k_c$; T3 at $(95,143)\/336$], [confirmed (direct)],
  [$(7,12)$], [${2,3}$], [$k_c$; T3 at $(17,31)\/112$, $k approx 0.19857$], [confirmed],
  [$(7,13)$], [${1,2}$], [$k_c$ only], [confirmed],
  [$(7,13)$], [${1,3}$], [$k_c$; T3 at $(53,157)\/364$], [confirmed (direct)],
  [$(7,13)$], [${2,3}$], [$k_c$; T3 at $(107,159)\/364$], [confirmed (direct)],
)

In every scanned case, the pairwise alignments found are exactly
$\{k_c\} union "T3" union "T4"$, no exceptional alignment appears, and the
_full_ alignment (all three independent branches simultaneously) is unique to
$k_c$. Spot checks for $(9,10)$, $(9,11)$, $(11,13)$ up to $q <= 150$ likewise
found $k_c$ as the only full alignment. For $n = 5$, scans up to $q <= 400$
found exactly one full alignment besides $k_c$ for every tested $d$, namely
the point of Proposition 3.3.

The enumeration bound matters: the T3 points live on the $28 d$-grid, so a
scan with $q <= 300$ misses them for $d >= 11$; they were confirmed by direct
evaluation instead. Any future scan should take $q >= 4 n d$.

= The exceptional regime

What remains open is the exceptional case of the Conway--Jones dichotomy: a
full rational alignment at $k != k_c$ in which the coincidence equation of the
$\{1,2\}$-pair vanishes through an exceptional relation. By
#cite(<cj>, form: "normal"), the normalized angles of such a relation are odd
multiples of $pi\/3$ together with angles of denominator dividing $15$ or
$21$; each admissible assignment of these angles to
$|u_1|, u_2, |u_3|, u_4$ imposes, through the relations (R$""_i$),
(R$""_j$), an inhomogeneous linear system in $(a_i, a_j)$ with the single
integer parameter $d$, to be checked against the range bounds (B1)--(B3).
The verification is therefore finite. It has not been carried out; the scans
of Section 7 found no exceptional alignment, in any pair, for any tested
$(n, d)$.

#statement("conj")[
*Conjecture 8.1.*
For every odd $n >= 7$ and every $d > n$ coprime to $n$, the slope-balanced
parameter $k_c$ is the unique full rational alignment in $(0,1)$. For
$n = 5$, the unique full rational alignments in $(0,1)$ are $k_c$ and the
point $k^*$ of Proposition 3.3.
]

By Theorem 6.2, the first statement reduces to the emptiness of the
exceptional regime for the $\{1,2\}$-pair. The second statement contains an
additional open claim even in the trivial regime, namely that the T3 point is
the only member of its family realized (uniqueness of the pinned offset was
proved, but exceptional solutions for $n = 5$ have not been excluded either).

Two closing remarks. First, the rigidity phenomenon sharpens the role of
$k_c$ in the main paper: not only is it the unique parameter at which the
stationary equation factors, it is (conjecturally, and provably in the trivial
regime) the unique interior parameter at which the anchored configuration is
arithmetically commensurable at all. Second, the failure of rigidity for
$n = 5$ separates two properties that coincide at $k_c$: the extra alignment
of Proposition 3.3 is rational but not maximally even on its minimal grid.
A companion uniqueness question, suggested by Remark 3.2, is therefore
whether $k = k_c$ and $k = 1$ are the only interior-or-endpoint parameters at
which $"Huplet"(n, d, k)$ equals a canonical representative $sans(Q)(n, m)$
for some $m$, for every odd $n >= 5$.

#v(1em)

#bibliography(bytes("@article{cj,
  author = {Conway, J. H. and Jones, A. J.},
  title = {Trigonometric diophantine equations ({O}n vanishing sums of roots of unity)},
  journal = {Acta Arithmetica},
  volume = {30},
  year = {1976},
  pages = {229--240}
}
@unpublished{quplets,
  author = {Braff, Malcolm},
  title = {Introducing Quplets: from crest trajectories to Euclidean rhythms},
  note = {Manuscript, HSM Basel, FHNW},
  year = {2026}
}"), title: "Bibliography", style: "ieee")

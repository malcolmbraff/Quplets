// The crest lattice of balanced three-frequency profiles
// Companion note to "Crest continuation and canonical Euclidean-rhythm selection"
// Intended location: further_steps/three-frequency-crest-lattice.typ

#set page(margin: (x: 2.6cm, y: 2.6cm))
#set par(justify: true, leading: 0.62em)
#set text(size: 10.5pt)
#set heading(numbering: "1.1.")

#let statement(kind, body) = block(above: 1.1em, below: 1.1em)[#body]
#let qed = [#h(1fr) $square$]

#align(center)[
  #text(size: 15pt)[*The crest lattice of balanced three-frequency profiles*] \
  #v(0.3em)
  #text(size: 11pt)[Companion note to _Introducing Quplets_] \
  #v(0.3em)
  Malcolm Braff, HSM Basel, FHNW
]

#v(1em)

*Abstract.*
For positive integers $n, d, e$ with $S = n + d + e$, the _balanced_
three-frequency profile
$Q(x) = (d e cos(2 pi n x) + e n cos(2 pi d x) + n d cos(2 pi e x)) \/ S$
carries exactly the weights for which the three amplitude--frequency products
coincide, so that $Q'$ is the *unweighted* sine sum
$sin(2 pi n x) + sin(2 pi d x) + sin(2 pi e x)$. Crest positions are therefore
independent of the weights. In the two-frequency model this sum factorises and
the crests occupy the $(n+d)$-grid; for three frequencies the analogue fails,
and the natural guess $i \/ S$ is *not* the crest grid. We give an exact
decision procedure --- a rational stationary point is a root of unity, and
$x = p \/ q$ is stationary if and only if $Phi_q$ divides an explicit integer
polynomial of degree $2 max(n,d,e)$, so only finitely many $q$ need be tested
--- and classify the outcome. Two additive families produce rational crests:
$e = n + d$, where every crest lies on the $(1 \/ e)$-grid $= (2 \/ S)$-grid
(proved), and $n + e = 2 d$, where the crest lattice divides
$"lcm"(2 d, 3 delta)$ and escapes every $i \/ (2 S)$ grid precisely when
$delta = d - n$ does not divide $2 d$. Outside these families the crests are
generically irrational: among the $220$ triples $1 <= n < d < e <= 12$, only
$68$ have all crests rational, and $39$ carry a rational crest off the
$i \/ (2S)$ grid. Coprimality plays no role; the governing conditions are
additive. The residual coincidences belong to the Conway--Jones classification
of trigonometric diophantine equations
#cite(<conwayTrigonometricDiophantineEquations1976>, form: "normal"), exactly
as in the two-frequency rigidity note: two triples in range, $(4,10,11)$ and
$(5,10,11)$, realise the nonagon relation
$sin(pi\/9) + sin(2 pi\/9) = sin(4 pi\/9)$.

#v(0.5em)

= The balanced profile

Let $n, d, e$ be positive integers, $S = n + d + e$, $N = max(n, d, e)$, and

$ Q(x)
  =
  k_1 cos(2 pi n x) + k_2 cos(2 pi d x) + k_3 cos(2 pi e x),
  quad
  k_1 = (d e)/S, quad k_2 = (e n)/S, quad k_3 = (n d)/S.
$

The weights are the natural symmetric choice: each coefficient is the product
of the two frequencies it does not carry, normalised by $S$. They satisfy
$k_1 + k_2 + k_3 = (d e + e n + n d) \/ S = Q(0)$, and $x = 0$ is always the
global maximum.

#statement("prop")[
*Proposition 1.1* (Balanced gradient).
$k_1 n = k_2 d = k_3 e = n d e \/ S$, and consequently

$ Q'(x)
  =
  - 2 pi (n d e)/S dot g(x),
  quad
  g(x) := sin(2 pi n x) + sin(2 pi d x) + sin(2 pi e x).
$
]

#statement("prf")[
*Proof.* $k_1 n = d e n \/ S$, $k_2 d = e n d \/ S$, $k_3 e = n d e \/ S$.
Differentiating $Q$ term by term gives
$Q'(x) = -2 pi (k_1 n sin(2 pi n x) + k_2 d sin(2 pi d x) + k_3 e sin(2 pi e x))$,
and the common factor $n d e \/ S$ may be pulled out. #qed
]

#statement("cor")[
*Corollary 1.2* (Weight independence).
The stationary points of $Q$ --- crests, troughs and degeneracies alike ---
depend only on $(n, d, e)$ and not on the weights. Any weight vector
proportional to $(d e, e n, n d)$ produces the same crest set. A point $x$ is
a crest if and only if $g(x) = 0$ and $g'(x) > 0$.
]

The last equivalence is $Q'' = -2 pi (n d e \/ S) g'$: a maximum of $Q$ is an
*upward* zero of $g$. This is the only place where the balanced weights are
used; everything below is arithmetic in $(n, d, e)$.

= Three factorisations

#statement("prop")[
*Proposition 2.1* (Sine-sum identities).
For all $x$:

(i) $ g(x) = sin(2 pi S x)
  + 4 sin(pi (n+d) x) sin(pi (d+e) x) sin(pi (e+n) x); $

(ii) if $e = n + d$, then $ g(x) = 4 sin(pi (n+d) x) cos(pi n x) cos(pi d x); $

(iii) if $n + e = 2 d$, with $delta = d - n = e - d$, then
$ g(x) = sin(2 pi d x) (1 + 2 cos(2 pi delta x)). $
]

#statement("prf")[
*Proof.* (i) is the identity
$sin A + sin B + sin C - sin(A+B+C)
 = 4 sin((A+B)\/2) sin((B+C)\/2) sin((C+A)\/2)$
with $A = 2 pi n x$, $B = 2 pi d x$, $C = 2 pi e x$, so that
$A + B + C = 2 pi S x$ and $(A+B)\/2 = pi (n+d) x$, and cyclically.

(ii) $sin(2 pi n x) + sin(2 pi d x) = 2 sin(pi (n+d) x) cos(pi (n-d) x)$ and
$sin(2 pi e x) = 2 sin(pi (n+d) x) cos(pi (n+d) x)$; sum and apply
$cos alpha + cos beta = 2 cos((alpha+beta)\/2) cos((alpha-beta)\/2)$.

(iii) $sin(2 pi n x) + sin(2 pi e x) = 2 sin(2 pi d x) cos(2 pi delta x)$,
since $n = d - delta$ and $e = d + delta$. #qed
]

#statement("rem")[
*Remark 2.2* (Why $i \/ S$ is not the grid).
Identity (i) is the exact obstruction. At $x = i \/ S$ the first term vanishes,
but the triple product does not, so $i \/ S$ carries no stationary point in
general. Contrast the two-frequency profile of the main paper, where
$F'_k prop sin(2 pi n x) + sin(2 pi d x) = 2 sin(pi (n+d) x) cos(pi (n-d) x)$
factorises *completely*: the stationary set is contained in
$(1\/(n+d)) bb(Z) union (1\/(2(n-d)))(2 bb(Z) + 1)$, which is why the
resonant $(n+d)$-grid is the right object there. With three frequencies the
sum no longer factorises, and identity (i) leaves an irreducible remainder.
The special case (ii) shows the precise sense in which the two-frequency
picture survives: the $(n+d)$-grid remains the crest grid exactly when the
_third frequency is itself_ $n + d$ (Proposition 5.1).
]

= Rational stationary points are roots of unity

Put $z = e^(2 pi i x)$. Since $sin(2 pi f x) = (z^f - z^(-f)) \/ (2 i)$,
multiplying $g$ by $2 i z^N$ gives the integer polynomial

$ F(z)
  =
  z^(N+n) + z^(N+d) + z^(N+e) - z^(N-n) - z^(N-d) - z^(N-e)
  in bb(Z)[z],
  quad deg F = 2 N,
$

with $2 i z^N g(x) = F(z)$ and $F != 0$.

#statement("prop")[
*Proposition 3.1* (Cyclotomic criterion).
Let $x = p \/ q$ in lowest terms. Then $x$ is a stationary point of $Q$ if and
only if the cyclotomic polynomial $Phi_q$ divides $F$ in $bb(Z)[z]$. In
particular the condition depends on $q$ alone: if it holds for one
$p$ coprime to $q$, it holds for all of them.
]

#statement("prf")[
*Proof.* $z = e^(2 pi i p \/ q)$ is a primitive $q$-th root of unity, whose
minimal polynomial over $bb(Q)$ is $Phi_q$. Now $g(p\/q) = 0$ iff $F(z) = 0$
iff $Phi_q divides F$ in $bb(Q)[z]$, and since $Phi_q$ is monic with integer
coefficients this is divisibility in $bb(Z)[z]$. The criterion involves only
$q$, and the primitive $q$-th roots form one Galois orbit. #qed
]

#statement("cor")[
*Corollary 3.2* (Finite decision procedure).
$Phi_q divides F$ forces $phi(q) = deg Phi_q <= deg F = 2 N$. Hence only the
finitely many $q$ with $phi(q) <= 2 N$ can occur, and the complete set of
rational stationary points is obtained by that many integer polynomial
divisions --- with no floating-point input. The rational stationary points
occur in full orbits ${p \/ q : gcd(p,q) = 1}$.
]

#statement("def")[
*Definition 3.3* (Crest lattice).
Let $L = L(n,d,e)$ be the least common multiple of those $q$ admitted by
Proposition 3.1 whose orbit contains at least one crest ($g' > 0$). Every
rational crest lies in $(1\/L) bb(Z)$, and $L$ is minimal with this property.
We set $L = 1$ when only $x = 0$ occurs.
]

= Which rational points occur

#statement("prop")[
*Proposition 4.1* (Sufficient families).
$x$ is a stationary point of $Q$ whenever either

(A) for some labelling ${i, j, f} = {n, d, e}$:
$ 2 f x in bb(Z)
  quad "and" quad
  ((i+j) x in bb(Z) quad "or" quad (i-j) x in bb(Z) + 1/2); $

(B) $(d - n) x equiv plus.minus 1\/3$ and
$(e - n) x equiv minus.plus 1\/3 quad (mod 1)$.
]

#statement("prf")[
*Proof.* (A) $2 f x in bb(Z)$ gives $sin(2 pi f x) = 0$, and
$sin(2 pi i x) + sin(2 pi j x) = 2 sin(pi (i+j) x) cos(pi (i-j) x)$
vanishes when either factor does; the two factors vanish precisely under the
two stated conditions.

(B) With $omega = e^(2 pi i \/ 3)$, the hypotheses say $z^d = omega z^n$ and
$z^e = omega^2 z^n$, whence $z^n + z^d + z^e = z^n (1 + omega + omega^2) = 0$.
The full sum vanishes, so in particular its imaginary part $g(x)$ does. #qed
]

Family (A) is the pairwise-cancellation mechanism: one component is at a node
and the other two are in antiphase. Family (B) is the equilateral mechanism:
the three phasors sit at mutual $120 degree$, which is exactly the factor
$1 + 2 cos(2 pi delta x)$ of Proposition 2.1 (iii).

#statement("rem")[
*Remark 4.2* (Completeness and the sporadic regime).
Proposition 3.1 was evaluated exactly for all $220$ triples
$1 <= n < d < e <= 12$. Families (A) and (B) account for *every* rational
stationary point in $218$ of them. The two exceptions are $(4,10,11)$ and
$(5,10,11)$ at $q = 18$: at $x = 1\/18$,

$ sin(4 pi\/9) - sin(pi\/9) - sin(2 pi\/9) = 0, $

the nonagon relation. This is the exceptional regime of the Conway--Jones
classification of vanishing sums of roots of unity
#cite(<conwayTrigonometricDiophantineEquations1976>, form: "normal"), the same
list that governs the residual case of the two-frequency rigidity note. A
complete classification of the rational stationary points --- families (A),
(B) and the finite Conway--Jones list --- is therefore within reach, and is
recorded here as the natural next step rather than as a proved statement.
]

= The two structured families

#statement("prop")[
*Proposition 5.1* (Sum family: the two-frequency grid survives).
If $e = n + d$, then $S = 2 e$ and *every* crest of $Q$ lies in
$(1\/e) bb(Z) = (2\/S) bb(Z)$. In particular the crest lattice divides $e$ and
is always a sublattice of the $i\/(2 S)$ grid.
]

#statement("prf")[
*Proof.* By Proposition 2.1 (ii) the stationary set is contained in
$ (1/e) bb(Z)
  union (1/(2 n))(2 bb(Z) + 1)
  union (1/(2 d))(2 bb(Z) + 1), $
the three factors of $4 sin(pi e x) cos(pi n x) cos(pi d x)$. Let $x_0$ satisfy
$cos(pi n x_0) = 0$. Differentiating the product, only the term differentiating
that vanishing factor survives:
$ g'(x_0) = -4 pi n sin(pi e x_0) sin(pi n x_0) cos(pi d x_0). $
Since $e = n + d$ and $cos(pi n x_0) = 0$,
$sin(pi e x_0) = sin(pi n x_0) cos(pi d x_0)$, so
$ g'(x_0) = -4 pi n sin^2(pi n x_0) cos^2(pi d x_0) <= 0, $
and $x_0$ is never an upward zero. The same computation with $n$ and $d$
exchanged rules out $cos(pi d x_0) = 0$. By Corollary 1.2 the crests are the
upward zeros, so they all come from $sin(pi e x) = 0$, i.e. $x in (1\/e) bb(Z)$.
#qed
]

For all $26$ triples of this family with $e <= 12$ the lattice is exactly
$L = e$, so the bound is attained.

#statement("prop")[
*Proposition 5.2* (Arithmetic-progression family).
If $n + e = 2 d$ with $delta = d - n = e - d$, then $S = 3 d$ and the
stationary set is
$ (1/(2 d)) bb(Z)
  union
  {m/(3 delta) : m in.not 3 bb(Z)}, $
so $L divides "lcm"(2 d, 3 delta)$. Writing $x = m\/(2d)$ resp. $m\/(3delta)$,
the crest conditions are

- node type: $(-1)^m (1 + 2 cos(pi delta m \/ d)) > 0$;
- equilateral type: $sin(2 pi d m \/ (3 delta)) < 0$ if $m equiv 1$,
  and $> 0$ if $m equiv 2 quad (mod 3)$.
]

#statement("prf")[
*Proof.* Proposition 2.1 (iii) gives $g = sin(2 pi d x) h(x)$ with
$h(x) = 1 + 2 cos(2 pi delta x)$; the zero sets of the two factors are as
stated. At a zero of the first factor,
$g' = 2 pi d cos(2 pi d x) h(x) = 2 pi d (-1)^m h(m\/(2d))$; at a zero of the
second, $g' = sin(2 pi d x) h'(x)$ with
$h'(x) = -4 pi delta sin(2 pi m \/ 3)$, which is negative for $m equiv 1$ and
positive for $m equiv 2$ modulo $3$. Requiring $g' > 0$ gives the two
conditions. #qed
]

#statement("rem")[
*Remark 5.3* (Where the $i\/(2S)$ grid breaks).
Since $S = 3 d$ we have $2 S = 6 d$, so the node-type lattice $(1\/(2d)) bb(Z)$
is always a sublattice of $(1\/(2S)) bb(Z)$: a drawn $i\/(2S)$ grid can only be
broken by equilateral-type crests, and $3 delta divides 6 d$ if and only if
$delta divides 2 d$. Over all $30$ triples of this family with $e <= 12$ the
crest lattice fails to divide $2 S$ *exactly* when $delta divides.not 2 d$;
equality $L = "lcm"(2d, 3delta)$ holds in $17$ of the $30$. Examples:
$(3,4,5)$ has $delta = 1 divides 8$ and $L = 8$ (the points $1\/3, 2\/3$ are
troughs), whereas $(3,7,11)$ has $delta = 4 divides.not 14$ and $L = 84$, with
crests at $1\/12$ and $5\/6$ that no $i\/42$ grid contains.
]

= Numerical census

The table below reports the exact evaluation of Proposition 3.1 over all
$220$ triples $1 <= n < d < e <= 12$. "All rational" counts triples whose
every crest is rational; "off $i\/(2S)$" counts triples possessing a rational
crest outside the $i\/(2S)$ grid.

#align(center)[
#table(
  columns: 5,
  align: (left, right, right, right, right),
  stroke: 0.4pt,
  [*family*], [*triples*], [*all rational*], [*$L > 2$*], [*off $i\/(2S)$*],
  [$e = n+d$], [26], [26], [26], [0],
  [$n+e = 2d$], [26], [26], [23], [8],
  [both], [4], [4], [4], [0],
  [neither], [164], [12], [80], [31],
  [*total*], [*220*], [*68*], [*133*], [*39*],
)
]

So $152$ of $220$ triples have at least one crest at an irrational point,
where no grid of any denominator can be correct, and $39$ have rational crests
that a drawn $i\/(2S)$ grid misses. The $12$ triples in the last row whose
crests are nevertheless all rational reduce to only seven primitive ones ---
$(1,2,4)$, $(1,2,6)$, $(1,4,6)$, $(1,4,10)$, $(1,5,8)$, $(1,6,10)$,
$(2,5,6)$ --- all with at most eight crests, where the family-(A) points
happen to exhaust the crest set; they do not indicate a further structural
family.

#statement("rem")[
*Remark 6.1* (Coprimality is not the criterion).
If $g_0 = gcd(n,d,e)$ then $g$ has period $1\/g_0$ and the whole picture
rescales, exactly as in the primitive-period reduction for frequency pairs;
$L$ rescales with it. Coprimality therefore neither creates nor destroys
rational crests. The governing conditions are *additive* --- $e = n+d$,
$n + e = 2d$, and the equilateral and Conway--Jones coincidences --- not
multiplicative.
]

= Open points

+ *Attainment in the sum family.* Proposition 5.1 proves containment in
  $(1\/e) bb(Z)$; that $L = e$ exactly, rather than a proper divisor, is
  verified for $e <= 12$ only.

+ *Completeness of the classification.* Establish that families (A), (B) and
  the Conway--Jones exceptional list exhaust the rational stationary points,
  which Remark 4.2 verifies computationally up to $12$.

+ *Which orbits carry crests.* Proposition 5.2 gives explicit sign conditions
  in the arithmetic-progression family. The analogous conditions in the
  general case, and a closed form for $L(n,d,e)$, are open.

+ *Amplitudes and rhythm.* This note settles crest *positions* only. The
  three-frequency analogues of the amplitude ordering and of the Euclidean
  endpoint theorem are untouched.

#v(0.5em)

The computations are reproducible with
#raw("python/scripts/Fk(x)_three_slider.py"), which implements
Proposition 3.1 directly (cyclotomic division in exact integer arithmetic),
draws the resulting lattice $i\/L$, and marks separately those crests that lie
off it.

#v(1em)

#bibliography((bytes("@unpublished{quplets,
  author = {Braff, Malcolm},
  title = {Introducing Quplets: from crest trajectories to Euclidean rhythms},
  note = {Manuscript, HSM Basel, FHNW},
  year = {2026}
}"), "../zotero.bib"), title: "Bibliography", style: "ieee")

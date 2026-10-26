// Companion research diary.
// This is deliberately separate from the main paper and from the proposition-style
// note three-frequency-quplet-locking.typ.

#set page(margin: (x: 2.55cm, y: 2.3cm))
#set par(justify: true, leading: 0.60em)
#set text(size: 10.5pt)
#set heading(numbering: "1.1.")
#set math.equation(numbering: "(1)")

#let question(body) = block(
  above: 1em,
  below: 1em,
  inset: 10pt,
  radius: 3pt,
  fill: luma(245),
  stroke: 0.45pt + luma(205),
)[
  #text(weight: "bold")[Question.] #body
]

#let checkpoint(body) = block(
  above: 1em,
  below: 1em,
  inset: (left: 10pt),
  stroke: (left: 1.4pt + rgb("496a81")),
)[
  #text(weight: "bold", fill: rgb("29495e"))[Checkpoint.] #body
]

#align(center)[
  #text(size: 15pt)[*From a third cosine to irrational binary crest words*] \
  #v(0.3em)
  #text(size: 11pt)[A research diary on three-frequency profiles, inverse crest design,
  and the return to duplets] \
  #v(0.3em)
  Malcolm Braff, HSM Basel, FHNW
]

#v(1em)

*Purpose of this note.*
This is not a theorem-first presentation. It records the order in which the
questions arose, including conjectures that turned out to be too strong. The
path began with a computational request---add a third cosine and plot the
coefficient simplex---and led to three related problems:

+ When does a three-frequency profile have its crests on a rational grid?
+ Can prescribed rational or irrational crest spacings be obtained by choosing
  the weights?
+ Which five-letter binary spacing words occur, and what changes when one
  returns from frequency triplets to duplets?

The main lesson is that stationarity is linear in the weights, while positivity
and crest classification are not. Much of the geometry comes from keeping
those two facts separate.

= Entry one: add a third cosine

#question[
What changes if the duplet
$k cos(2 pi d x)+(1-k)cos(2 pi n x)$ is replaced by three frequencies
$d_1,d_2,d_3$ and three coefficients $k_1,k_2,k_3$ satisfying
$k_1+k_2+k_3=1$? At a balanced point, should the crests lie on a rational
grid?
]

The natural family is

$
  F_bold(k)(x)
  =
  sum_(j=1)^3 k_j cos(2 pi d_j x),
  quad
  k_j>=0,
  quad
  sum_(j=1)^3 k_j=1.
$ <three-frequency-family>

The coefficient vector therefore lives in a triangle. Moving over this
simplex changes not only the crest positions but sometimes the number of
crests. The first useful plot consequently had three parts: the number of
sampled crests over the simplex, the profile at the balanced point, and a
diagnostic for proximity to a common rational grid.

The first correction concerned the word _balanced_. Equal coefficients,

$
  k_1=k_2=k_3=1/3,
$

are not what the stationarity equation naturally balances. Differentiation
introduces the frequencies:

$
  F_bold(k)'(x)
  =
  -2 pi sum_(j=1)^3 d_j k_j sin(2 pi d_j x).
$ <three-frequency-derivative>

It is therefore more useful to balance the *derivative weights*

$
  d_1 k_1=d_2 k_2=d_3 k_3.
$ <slope-balance>

After normalization, the slope-balanced point is

$
  k_j
  =
  (1/d_j)/(sum_(ell=1)^3 1/d_ell).
$ <slope-balanced-weight>

#checkpoint[
Slope balance does not by itself imply a rational grid. It only reduces the
stationary equation to an unweighted sum of three sine terms. Rationality
still requires an additional arithmetic factorization.
]

= Entry two: the unexpected $(3,4,5)$ grid

For $(d_1,d_2,d_3)=(3,4,5)$, @slope-balanced-weight gives

$
  (k_3,k_4,k_5)=1/47(20,15,12).
$ <balanced-345>

The derivative weights are equal, so the nonconstant part of the stationary
equation is

$
  sin(6 pi x)+sin(8 pi x)+sin(10 pi x).
$

The decisive arithmetic relation is not $3^2+4^2=5^2$. It is

$
  3+5=2 dot 4=8.
$ <ap-relation>

Indeed,

$
  sin(6 pi x)+sin(10 pi x)
  =
  2 sin(8 pi x)cos(2 pi x),
$

and hence

$
  sin(6 pi x)+sin(8 pi x)+sin(10 pi x)
  =
  sin(8 pi x)(1+2 cos(2 pi x)).
$ <balanced-factorization>

The factor $sin(8 pi x)$ creates the $8$-grid. The second factor adds the
stationary points $1/3$ and $2/3$, but curvature shows that they are troughs.
The complete crest set is therefore

$
  {0,2/8,3/8,5/8,6/8},
$

with circular spacing vector

$
  1/8(2,1,2,1,2)=Q(5,8).
$ <balanced-345-quplet>

This was the first answer to the rational-grid question: sometimes yes, but
because of special arithmetic rather than because the coefficient vector is
balanced.

The coincidence is more robust than a single point. On the derivative-weight
line

$
  (k_3,k_4,k_5)
  =
  1/(32+15 rho)(20,15 rho,12),
  quad rho>0,
$ <locking-line>

the stationary factor becomes

$
  sin(8 pi x)(rho+2 cos(2 pi x)).
$

For $0<rho<sqrt(2)$, the crest set remains exactly the set in
@balanced-345-quplet. Thus rational locking may occupy a whole interval of
weights, including irrational values of $rho$.

#checkpoint[
The $(3,4,5)$ phenomenon is an arithmetic-progression factorization. A generic
frequency triple, even at its slope-balanced point, need not have rational
stationary points or rational crests.
]

= Entry three: reverse the problem

#question[
Instead of choosing weights and observing the crests, can one prescribe two
positive crest positions and solve for all weights that make them stationary?
]

For a frequency triple $bold(d)=(d_1,d_2,d_3)$, introduce the stationarity
row

$
  bold(v)_bold(d)(x)
  =
  (
    d_1 sin(2 pi d_1 x),
    d_2 sin(2 pi d_2 x),
    d_3 sin(2 pi d_3 x)
  ).
$ <stationarity-row>

Prescribing stationary points $x_1$ and $x_2$ gives two homogeneous equations

$
  bold(v)_bold(d)(x_1) dot bold(k)=0,
  quad
  bold(v)_bold(d)(x_2) dot bold(k)=0.
$ <two-stationarity-equations>

When the two rows are independent, their common null direction is their cross
product. Hence the normalized candidate is

$
  bold(k)
  =
  (bold(v)_bold(d)(x_1) times bold(v)_bold(d)(x_2))
  /
  (bold(1) dot
    (bold(v)_bold(d)(x_1) times bold(v)_bold(d)(x_2))).
$ <cross-product-weight>

This is an exact formula even when the displayed decimal coefficients have no
simple radical form.

The cross product answered one question and immediately exposed two others.

+ A nonzero stationary solution almost always exists because two homogeneous
  equations in three unknowns have a nontrivial nullspace.
+ The candidate need not have three positive components, so it may lie outside
  the coefficient simplex.
+ Even with positive components, the prescribed stationary points may be
  troughs rather than crests.

The final condition is checked by the second derivative. It is also convenient
to put $t=cos(2 pi x)$ and write

$
  F_bold(k)'(x)
  =
  -2 pi sin(2 pi x) P_bold(k)(t),
  quad
  P_bold(k)(t)
  =
  sum_(j=1)^3 d_j k_j U_(d_j-1)(t),
$ <chebyshev-stationarity>

where $U_m$ is the Chebyshev polynomial of the second kind. At an interior
root of $P_bold(k)$,

$
  F_bold(k)''(x)
  =
  (2 pi)^2 sin^2(2 pi x) P_bold(k)'(t).
$

Thus the point is a crest precisely when $P_bold(k)'(t)<0$.

There is one further warning. If the two rows in @two-stationarity-equations
are parallel, the cross product is zero, but the nullspace is then
two-dimensional rather than absent. The ratio-two example encountered later
has exactly this degeneracy. Numerically, a singular-value decomposition is
safer than treating a zero cross product as failure.

= Entry four: the geometry of five symmetric crests

Every profile in @three-frequency-family is even, and $x=0$ is a crest for
positive weights. If it has exactly five nondegenerate crests, reflection
forces the crest set to have the form

$
  {0,x_1,x_2,1-x_2,1-x_1},
  quad
  0<x_1<x_2<1/2.
$ <five-crest-set>

The circular spacing vector is therefore

$
  (A,B,C,B,A)
  =
  (x_1,x_2-x_1,1-2x_2,x_2-x_1,x_1).
$ <palindromic-spacing>

This observation was useful twice. First, it reduced the inverse problem to
the two positions $x_1,x_2$. Second, it corrected an overly quick
classification of binary words.

Using exactly two distinct letters in @palindromic-spacing gives three, not
two, possibilities:

+ $A=B!=C$, giving $(A,A,C,A,A)$, or _AABAA_ after renaming $C$ as the
  second letter;
+ $A=C!=B$, giving _ABABA_;
+ $B=C!=A$, giving _ABBBA_.

The last word is not cyclically equivalent to either of the first two. The
three patterns correspond respectively to multiplicities $4+1$, alternating
$3+2$, and clustered $2+3$.

= Entry five: the first irrational binary constructions

The inverse method @cross-product-weight made it possible to ask for irrational
gap values directly. The following examples record the constructions in the
order in which they appeared.

== The _AABAA_ construction with rational weights

Take frequencies $(3,4,5)$ and

$
  alpha=1/(2 pi) arccos(1/6).
$

The rational coefficient vector

$
  (k_3,k_4,k_5)
  =
  1/31159(550,17325,13284)
$ <aabaa-rational-weight>

has derivative weights proportional to $(55,2310,2214)$. Its Chebyshev
stationarity polynomial factors as

$
  55U_2(t)+2310U_3(t)+2214U_4(t)
  =
  (6t-1)(18t+17)(328t^2-84t-127).
$ <aabaa-factorization>

The five crests are

$
  {0,alpha,2alpha,1-2alpha,1-alpha},
$

and the spacing vector is

$
  (alpha,alpha,1-4alpha,alpha,alpha).
$ <aabaa-irrational-word>

This is an irrational _AABAA_ word obtained from rational weights.

== The _ABABA_ construction with rational weights

The condition $A=C$ gives

$
  x_1=A,
  quad
  x_2=(1-A)/2,
  quad
  B=(1-3A)/2.
$ <ababa-geometry>

Choose

$
  A=1/pi arccos(4/5).
$

Then $cos(2 pi A)=7/25$ and
$cos(2 pi x_2)=-4/5$. The rational weights

$
  (k_3,k_4,k_5)
  =
  1/70303(11218,5135,53950)
$ <ababa-rational-weight>

produce the factorization

$
  P(t)
  =
  8(25t-7)(5t+4)(2158t^2-1040t-527),
$ <ababa-factorization>

after removing an irrelevant positive common factor from the derivative
weights. The prescribed two roots have negative $P'(t)$, while the quadratic
factor supplies the intervening troughs. The spacing word is

$
  (A,B,A,B,A).
$

Both $A$ and $B$ are irrational. For example, if $A$ were rational, then
$2 cos(pi A)=8/5$ would be a rational algebraic integer and hence an integer,
which it is not.

#checkpoint[
Irrational crest positions do not require irrational coefficients. Conversely,
irrational coefficients do not force irrational crests: the locking line
@locking-line contains irrational weights with a fixed rational crest grid.
]

= Entry six: prescribe the proportion of the two letters

#question[
Can the two irrational gap values have a chosen proportion, such as the golden
ratio or $sqrt(2)$?
]

For an _ABABA_ word with ratio

$
  q=A/B,
$

normalization gives

$
  A=q/(3q+2),
  quad
  B=1/(3q+2),
  quad
  x_2=(q+1)/(3q+2).
$ <ababa-ratio-parameterization>

These two positions can be inserted directly into @cross-product-weight.

== Golden proportion

The values $2-phi$ and $phi-1$ cannot be used literally as five unit-circle
gaps: even five copies of the smaller value already sum to more than one.
The relevant object is their normalized word

$
  1/phi^2
  (phi-1,2-phi,phi-1,2-phi,phi-1).
$

Thus

$
  A=phi^(-3)=sqrt(5)-2,
  quad
  B=phi^(-4)=(7-3sqrt(5))/2,
  quad
  A/B=phi.
$ <golden-gaps>

For frequencies $(3,4,5)$, @cross-product-weight gives

$
  (k_3,k_4,k_5)
  approx
  (0.451926290591172,
   0.198743301548228,
   0.349330407860600).
$ <golden-weights>

The exact coefficients are the normalized cross product with
$x_1=phi^(-3)$ and $x_2=phi^(-2)$. Their trigonometric form is the natural
exact expression; the angles are not rational multiples of $pi$.

== A $sqrt(2)$ proportion with $A>B$

Putting $q=sqrt(2)$ in @ababa-ratio-parameterization gives

$
  A=(3-sqrt(2))/7,
  quad
  B=(3sqrt(2)-2)/14.
$ <sqrt2-ababa-gaps>

For $(3,4,5)$ the weights are

$
  (k_3,k_4,k_5)
  approx
  (0.409758976977939,
   0.181271223678644,
   0.408969799343417).
$ <sqrt2-345-weights>

Direct numerical root-finding gave the crests

$
  0,
  0.226540919660986,
  0.386729540169507,
  0.613270459830493,
  0.773459080339014.
$

At the two independent prescribed positions, the computed curvatures were
approximately $-304.14$ and $-337.37$. The residuals in the two stationarity
equations were below $1.5 times 10^(-15)$.

= Entry seven: not every proportion belongs to one frequency triple

The cross product exists generically for every proposed ratio, but its
geometric admissibility depends on signs and curvature. For the $(3,4,5)$
_ABABA_ branch with $q=A/B$, numerical continuation found the desired
positive five-crest configuration approximately on

$
  1<q<q_*,
  quad
  q_* approx 4.62427436224.
$ <345-ratio-window>

At the upper endpoint, the first prescribed crest becomes degenerate. Beyond
it, the cross-product coefficients may remain positive, but that prescribed
point becomes a trough. For example, $q=sqrt(23)>q_*$ gives positive weights
and positive second derivative at $x=A$.

At $q=2$, the two stationarity rows are parallel and the cross product
vanishes. This does not mean that there is no solution. Here

$
  A=1/4,
  quad
  B=1/8,
  quad
  x_2=3/8,
$

and the stationarity system reduces to the single condition

$
  5k_5=3k_3.
$

There is consequently a family of positive solutions, some of which make
both prescribed points crests. This was the clearest reminder that the cross
product is a formula for the generic rank-two case, not the definition of
solvability.

= Entry eight: reverse the inequality

#question[
The $(3,4,5)$ _ABABA_ family naturally produced $A>B$. Can one obtain the
same binary pattern with $B>A$?
]

For the fixed triplet $(3,4,5)$, the numerical answer was negative on this
branch. Changing the frequencies resolved the obstruction. With frequencies
$(1,2,5)$, take

$
  A=3-2sqrt(2),
  quad
  B=3sqrt(2)-4,
  quad
  B/A=sqrt(2).
$ <reverse-ababa-gaps>

The positive weights are

$
  (k_1,k_2,k_5)
  approx
  (0.340896378802640,
   0.407552520845360,
   0.251551100352000).
$ <reverse-ababa-weights>

The two independent crest positions are
$A$ and $A+B=sqrt(2)-1$. Their curvatures are approximately $-126.49$ and
$-242.82$, and the spacing vector is exactly $(A,B,A,B,A)$.

The same investigation exposed the missing third binary pattern. An
_ABBBA_ example with frequencies $(3,4,5)$ is obtained from

$
  A=3sqrt(2)-4,
  quad
  B=3-2sqrt(2),
  quad
  A/B=sqrt(2),
$ <abbba-gaps>

with weights

$
  (k_3,k_4,k_5)
  approx
  (0.306576946404071,
   0.439790843832466,
   0.253632209763463).
$ <abbba-weights>

Finally, the _AABAA_ pattern with its isolated central letter larger than the
other four requires another frequency choice. For $B/A=sqrt(2)$, let

$
  A=(4-sqrt(2))/14,
  quad
  B=(2sqrt(2)-1)/7.
$ <reverse-aabaa-gaps>

Frequencies $(1,3,5)$ give

$
  (k_1,k_3,k_5)
  approx
  (0.651324262492056,
   0.159220300577999,
   0.189455436929945).
$ <reverse-aabaa-weights>

The numerical exploration can therefore be summarized as follows. The
triplet $(3,4,5)$ supplies nonempty $A>B$ families for all three binary
patterns. The triplet $(1,2,5)$ supplies $B>A$ families for the two $3+2$
patterns, _ABABA_ and _ABBBA_. The remaining $B>A$ pattern _AABAA_ is supplied
by $(1,3,5)$. These are existence ranges, not a claim that the three triplets
realize every possible proportion.

= Entry nine: return to duplets

#question[
Perhaps the richness above was unnecessary. With only two frequencies and one
weight $k$, are five-dimensional spacing vectors automatically binary?
]

Return to

$
  D_k^(n,d)(x)
  =
  k cos(2 pi d x)+(1-k)cos(2 pi n x).
$ <duplet-family>

The conjecture was tempting because the parameter space is now only an
interval. It is nevertheless false. One parameter can trace a curve whose
three symmetry-reduced gap coordinates are all different.

For any even profile with five crests, reflection still gives the general
form @palindromic-spacing. At the equal-coefficient point $k=1/2$, the two
low-frequency comparisons give the following counterexamples.

For the frequency set $(5,3)$, the five gaps are approximately

$
  (0.215960840902,
   0.167802580664,
   0.232473156867,
   0.167802580664,
   0.215960840902).
$ <duplet-53-gaps>

For the frequency set $(5,2)$, they are approximately

$
  (0.191334267061,
   0.220329762307,
   0.176671941264,
   0.220329762307,
   0.191334267061).
$ <duplet-52-gaps>

Both are genuinely ternary. In the five-crest regimes, numerical continuation
found the strict orderings $C>A>B$ for $(5,3)$ and $B>A>C$ for $(5,2)$, with
no interior equality among $A,B,C$. At the pure frequency-$5$ endpoint the
vector becomes uniform, hence unary rather than genuinely binary.

#checkpoint[
The number of free weights does not count the number of distinct gap values.
Reflection guarantees the palindromic form $(A,B,C,B,A)$; a binary word is an
additional equality condition.
]

= Entry ten: why $d>n$ returned

The notation now matters. In the paper the ordered pair is $(n,d)$, and the
five-dimensional Huplet follows the five crest branches anchored at
$i/n$, not necessarily the complete set of all crests of $D_k^(n,d)$.

When $n=5$ and $d>5$, the nearest-grid corridor construction keeps those five
anchored branches separate all the way to $k=1$. This is the regime of
$(n,d)=(5,7)$ and $(5,8)$. It explains why these examples behave differently
from $(5,3)$ and $(5,2)$, where the target frequency has fewer than five
crests.

Even for $d>n$, however, the anchored vector is generically ternary. At
$k=1/2$ one finds

$
  "Huplet"(5,7)
  approx
  (0.159866,
   0.259256,
   0.161756,
   0.259256,
   0.159866),
$

and

$
  "Huplet"(5,8)
  approx
  (0.237715,
   0.144133,
   0.236306,
   0.144133,
   0.237715).
$

The binary vectors occur at distinguished weights.

== The Quplet endpoint

At $k=1$, the anchored branches reach the nearest $d$-grid points. Thus

$
  Q(5,7)=1/7(1,2,1,2,1),
$

and

$
  Q(5,8)=1/8(2,1,2,1,2).
$ <duplet-quet-endpoints>

The second vector is exactly the rational spacing vector found for the
slope-balanced $(3,4,5)$ triplet in @balanced-345-quplet.

== The derivative-balanced duplet point

There is another distinguished weight, obtained by balancing the two
derivative amplitudes:

$
  k d=(1-k)n,
  quad
  k_0=n/(n+d).
$ <duplet-balanced-weight>

At this weight,

$
  (D_(k_0)^(n,d))'(x)
  =
  -4 pi n d/(n+d)
  sin(pi(n+d)x)cos(pi(d-n)x).
$ <duplet-balanced-factorization>

For the two examples, the five anchored branches again form binary words:

$
  "Huplet"_(k_0)(5,7)
  =
  1/12(2,3,2,3,2),
  quad
  k_0=5/12,
$

and

$
  "Huplet"_(k_0)(5,8)
  =
  1/13(3,2,3,2,3),
  quad
  k_0=5/13.
$ <balanced-duplet-words>

These should not be confused with the Quplet endpoints in
@duplet-quet-endpoints. In particular,
$Q(5,8)=1/8(2,1,2,1,2)$, whereas the derivative-balanced duplet word is
$1/13(3,2,3,2,3)$. Also, for $(5,8)$ the full profile can have additional
non-anchored crests; the five-dimensional Huplet records only the five
continued anchored branches.

= Entry eleven: from isolated proportions to a continuous weight curve

#question[
Can every real ratio in the admissible interval be realized, and can the
weights themselves be followed continuously through the simplex?
]

For the rest of this entry, $(k_3,k_4,k_5)$ denotes the weights of the
frequencies $(3,4,5)$, respectively. The ratio $q=A/B$ is a real parameter,
not a restriction to rational values or to a sampled grid. Put

$
 A=q/(3q+2), quad B=1/(3q+2), quad u=cos(pi A).
$

Away from the rank loss at $q=2$, the two prescribed positions $A$ and
$(1-A)/2$ determine a unique normalized candidate by @cross-product-weight.
The following regularized expression removes the common vanishing factor
and continues that candidate through $q=2$:

$
 C_3=10(4u^2-2u-1)(4u^2+2u-1)(8u^3-6u-1),
$
$
 C_4=15(u-1)(2u+1)(4u^2-2u-1)(4u^2+2u-1),
$
$
 C_5=-6(2u+1)(8u^3-4u^2-4u+1),
$
$
 k_j(q)=C_j/(C_3+C_4+C_5), quad j in {3,4,5}.
$ <regularized-ababa-weights>

Substitution verifies the two stationarity equations exactly. On the
numerically continued admissible branch, these expressions are smooth and
positive for $1<q<q_*$, with $q_* approx 4.62427436224$. At $q=1$ they give
$(0,0,1)$: five equally spaced crests, hence a unary boundary rather than a
genuinely binary word. At the upper endpoint the limiting weights are
approximately $(0.5338136073,0.2438134398,0.2223729529)$, but the first
prescribed crest has zero curvature. Thus $q_*$ is excluded when a crest
means a nondegenerate maximum. The interval is not closed at both ends.

An algebraic description of this boundary is available. If
$u_* approx 0.6095931631$, then

$
 128u_*^8-224u_*^6-32u_*^5+136u_*^4+32u_*^3
 -28u_*^2-8u_*+1=0,
$
$
 q_*=(2 arccos(u_*))/(pi-3 arccos(u_*)).
$

Here the intended root is specified by the displayed approximation; the
polynomial equation alone does not select it. Exact stationarity and an
algebraic boundary equation must still be distinguished from a complete
sign proof over an interval. The interval-wide admissibility statements in
this diary retain their numerical-continuation status.

== A curve in the simplex is not necessarily a straight line

Normalization permits the planar plot $(k_4(q),k_3(q))$, with
$k_5=1-k_3-k_4$. The plot is close to linear, but the regularized formulas
are not affine. Numerical differentiation finds $k_3$ and $k_4$ increasing
and $k_5$ decreasing along the selected branch. Consequently the observed
curve can be graphed in either coordinate direction. This monotonicity is
reported as numerical evidence, not as a theorem inferred from the plot.

Locally, wherever $k_3'(q)!=0$, the inverse function theorem permits
$kappa=k_3(q)$ and $Phi(kappa)=k_4(q(kappa))$. The profile then becomes

$
 F_kappa(x)=kappa cos(6 pi x)+Phi(kappa)cos(8 pi x)
 +(1-kappa-Phi(kappa))cos(10 pi x).
$ <one-weight-ababa-profile>

This is a genuine one-parameter description: the other two coefficients
are functions of the first. On the numerically monotone branch the range is
$0<=kappa<0.5338136073$. The parameterization by $q$ in
@regularized-ababa-weights remains the explicit formula; a simple elementary
closed form for its inverse is not required.

= Entry twelve: one ratio, an entire locking line

#question[
If several weight vectors yield the same ratio, are these solutions also
continuous, and how do they meet the varying-ratio curve?
]

At $q=2$, the complete strict five-crest family is precisely

$
 (k_3,k_4,k_5)=(20,15rho,12)/(32+15rho),
 quad 0<rho<sqrt(2).
$ <strict-q2-family>

Both endpoints are excluded because a required crest is degenerate. In the
plot with horizontal coordinate $k_4$ and vertical coordinate $k_3$, this
family is the straight open segment

$
 k_3=5/8(1-k_4), quad k_5=3/5 k_3.
$

It is smooth as a family parameterized by $rho$. But this does not mean
that each of its points belongs to a smooth family parameterized by a
varying $q$. The unique candidates at neighboring ratios select just one
point on the locking segment:

$
 rho_0=2-sqrt(2),
$
$
 (k_3(2),k_4(2),k_5(2))
 = (20,15(2-sqrt(2)),12)/(62-15sqrt(2))
 approx (0.4903547639,0.2154323777,0.2942128583).
$ <q2-selected-limit>

This is the intersection of the varying-ratio curve and the fixed-ratio
segment. In particular it is not the slope-balanced point
$(20,15,12)/47$, although that point also yields $q=2$.

#checkpoint[
Continuity of the ratio does not by itself imply continuity or uniqueness
of a chosen solution. Generic fixed ratios on this branch give one point;
$q=2$ gives a smooth segment. Only the point @q2-selected-limit extends to
the neighboring-ratio branch. An arbitrary null vector returned by a
singular-value decomposition at rank loss need not select that continuation,
or even satisfy the crest inequalities.
]

= Entry thirteen: a continuum for a word class, not a separate model for every duplet

#question[
Could a few-frequency family reproduce Euclidean endpoint words while
allowing their long-to-short ratio to vary continuously?
]

The useful organizing object is the oriented binary word. For example,

$
 W_5(q)=(q,1,q,1,q)/(3q+2)
$

contains the nearest-grid endpoint words

$
 Q(5,5m+3)=W_5((m+1)/m), quad m=1,2,3,dots.
$

Thus the same $(3,4,5)$ branch includes $Q(5,8)$ at $q=2$,
$Q(5,13)$ at $q=3/2$, and $Q(5,18)$ at $q=4/3$. It fills the real
ratios between these distinguished values. The sequence $(m+1)/m$ is
not dense in an interval: it only accumulates at $1$.

A different word requires a different inverse problem. For _AABAA_,

$
 V_5(q)=(q,q,1,q,q)/(4q+1), quad A=q/(4q+1),
$

and the independent target crests are $A$ and $2A$. Numerical checks with
frequencies $(2,4,5)$ give a positive five-crest family for $1<q<2$,
with boundary weights $(0,0,1)$ at $q=1$ and $(0,5/9,4/9)$ at $q=2$.
Here the latter endpoint still has five nondegenerate crests. This family
contains $Q(5,5m+4)$ at $q=(m+1)/m$, including $Q(5,9)$.
The triple $(3,4,5)$ does not supply this whole interval: its generic
_AABAA_ candidate has a negative coefficient for $1<q<2$.

These examples motivate an atlas of word classes and admissible frequency
sets, not a theorem that every Quplet has such a three-frequency lift.
They also preserve the distinction from entry ten: a duplet Quplet records
an anchored subset, whereas the inverse families here are required to have
exactly the prescribed number of total crests.

= Entry fourteen: seven crests and the limit of three frequencies

The first correction is combinatorial. Under the nearest-grid convention,

$
 Q(7,11)=(2,1,2,1,2,1,2)/11,
$
$
 Q(7,12)=(2,1,2,2,2,1,2)/12.
$

Thus _ABABABA_ belongs to the first example; the second is _ABAAABA_.
For the alternating seven-letter continuum, set

$
 A=q/(4q+3), quad B=1/(4q+3),
 quad (x_1,x_2,x_3)=(A,A+B,2A+B).
$

There are now three independent stationarity conditions. With fixed
frequencies $d_1,d_2,d_3$, a nonzero solution requires the determinant of
$S_(i j)=d_j sin(2 pi d_j x_i)$ to vanish.

For this particular alternating word, no distinct positive integer triple
can make that determinant identically zero on an open ratio interval.
To see the obstruction, put $t=pi/(2(4q+3))$. The three angles $2pi x_i$
are $pi/2-3t$, $pi/2+t$, and $pi-2t$. Order the frequencies as
$d_1<d_2<d_3$. In the exponential expansion of the determinant, the largest
$t$-frequency is $d_1+2d_2+3d_3$. It occurs uniquely, with nonzero
coefficient, by assigning the largest frequency to the factor with slope
magnitude $3$, the next to $2$, and the smallest to $1$. It cannot cancel.
The determinant is therefore a nonzero analytic function, whose zeros are
isolated. Three fixed frequencies can realize isolated ratios, but not an
open continuum for this word.

For example, frequencies $(4,7,11)$ with weights $(14,8,3)/25$ yield the
alternating ratio-two configuration; numerical enumeration confirms seven
crests at $0,2/11,3/11,5/11,6/11,8/11,9/11$.

With four frequencies, $(4,5,6,7)$, numerical continuation instead gives
an alternating seven-crest branch on

$
 1<q<q_(7,*), quad q_(7,*) approx 3.5799848899.
$

It starts at pure frequency $7$ when $q=1$. At $q=2$, selecting the
continuous limit through the rank loss gives weights approximately
$(0.4306628261,0.1763149802,0.1469291502,0.2460930435)$, in frequency
order. At the upper endpoint the first prescribed pair loses negative
curvature, so that endpoint is excluded. This family includes the words
$Q(7,7m+4)$ at $q=(m+1)/m$. The displayed interval is a numerical result;
it is not asserted for _ABAAABA_ or for every seven-letter word.

= Entry fifteen: the frequency count, and what changes for even numbers of crests

#question[
Does the pattern suggest $ceil(n/2)$ frequencies for $n$ crests? What
happens with four crests: _AABA_, _ABBA_, or _ABAB_?
]

Work with nonnegative normalized weights, distinct positive integer
frequencies, zero phases, and exactly $n$ nondegenerate total crests.
Reflection is $x mapsto 1-x$, and $0$ is always a strict crest.

For $n=2m+1$, reflection leaves $m$ independent positive crest positions.
For $n=2r$, parity forces $1/2$ also to be a crest, leaving $r-1$
independent positive positions. Stationarity at $0$ and $1/2$ is automatic.
With $p$ frequencies, normalized weights have $p-1$ degrees of freedom.
The generic full-row-rank count is consequently

$
 p=m+1=(n+1)/2 quad (n " odd"),
$
$
 p=r=n/2 quad (n " even").
$

Together these give the candidate count $p=ceil(n/2)$: for instance,
four frequencies for seven crests and five for nine crests.

#checkpoint[
This is a generic parameter count, not a universal existence theorem or an
unconditional minimum. Rank dependencies may reduce the required number.
Conversely, a null vector may have negative entries, prescribed points may
be troughs, or extra crests may occur. A nine-crest construction has not
been established merely by counting five frequencies.
]

== Four crests force the word _ABBA_

For four crests the positions must be

$
 0,A,1/2,1-A, quad 0<A<1/2.
$

Their gaps are $(A,B,B,A)$ with $B=1/2-A$. Hence a genuinely binary word
is _ABBA_, up to cyclic rotation. Neither _AABA_ nor nonuniform _ABAB_
is compatible with this crest-centered reflection symmetry. This is a
restriction of the present zero-phase, positive-weight, complete-crest
model, not an impossibility for arbitrary rhythmic words or arbitrary
phase-shifted profiles.

An explicit two-frequency family is

$
 A=q/(2(q+1)), quad B=1/(2(q+1)),
$
$
 F_q(x)=k(q)cos(6pi x)+(1-k(q))cos(8pi x),
$
$
 k(q)=(4sin(8pi A))/(4sin(8pi A)-3sin(6pi A)).
$ <four-crest-family>

It has four strict crests from the uniform boundary $q=1$ up to
$q approx 1.4297996984$, excluding the upper endpoint. At that endpoint
$k=16/25$ and

$
 F_q''(1/2)=-(2pi)^2(16-25k)=0.
$

Equivalently, the limiting $A$ is the root near $0.2942217211$ of
$3sin(8pi A)+4sin(6pi A)=0$. The fixed crest at $1/2$, not the moving
pair, is the one that becomes degenerate. Thus even cases have their own
boundary mechanism as well as a different symmetry count.

= What survived the inquiry

The investigation now gives a more precise map than the initial conjecture.

+ Three frequencies replace the coefficient interval by a simplex, but the
  stationary equations remain linear in the coefficients.
+ The natural balanced point equalizes $d_j k_j$, not the coefficients $k_j$.
+ A rational grid is an arithmetic factorization phenomenon. The triple
  $(3,4,5)$ works because $3$ and $5$ are symmetric about $4$.
+ Prescribed crest positions lead to a cross-product formula for the generic
  weight vector. Positivity and negative curvature remain separate tests.
+ Every symmetric five-gap vector has the form $(A,B,C,B,A)$. Binary vectors
  occur on the three loci $A=B$, $A=C$, and $B=C$.
+ Irrational binary words can be realized with rational or irrational weights.
  A fixed frequency triple realizes only restricted ranges of proportions.
+ Duplet families are not generically binary. Their five-gap vectors are
  usually palindromic ternary vectors.
+ The condition $d>n$ supports the global five-branch Huplet construction.
  Binary Quplets occur at distinguished weights, especially the nearest-grid
  endpoint, rather than throughout the deformation.

+ A varying-ratio curve and a fixed-ratio locking family are different loci;
  their intersection need not be a balanced point.
+ Euclidean endpoint words can sit inside continuous word-class families,
  but this has not been proved for every word.
+ The count $ceil(n/2)$ is a generic inverse-design count, subject to
  symmetry, rank, positivity, curvature, and total-crest checks.

= Questions left open

The diary suggests several classification problems rather than one universal
conjecture.

+ For a fixed frequency triple, determine exactly the parts of the coefficient
  simplex on which the profile has five crests.
+ Inside that region, determine the three binary loci $A=B$, $A=C$, and $B=C$,
  together with their admissible ratio intervals.
+ Classify all frequency triples admitting a positive locking region on a
  rational grid, generalizing @locking-line.
+ Determine which irrational proportions can be realized by some positive
  frequency triple, and how small the largest frequency can be chosen.
+ For duplets with $d>n$, distinguish systematically between the complete crest
  set and the anchored Huplet, and classify the isolated weights at which its
  generally ternary spacing vector becomes binary.

+ Prove the interval-wide positivity and curvature inequalities suggested
  by continuation, including monotonicity of the selected weight curves.
+ Construct and classify admissible word-class families beyond five crests,
  distinguishing generic parameter counts from actual existence.

The computational simplex plot remains the right exploratory instrument, but
the exact work begins where the plot suggests a factorization, a rank loss, or
an equality between two gap coordinates.
 

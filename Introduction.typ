#set math.equation(numbering: none)

#let Huplet = math.italic("Huplet")

= Introduction

Rhythmic structures may arise from the interaction of several periodic
components. In this paper, we study such an interaction through a simple
two-frequency model. 

Let $n, d in NN$ satisfy $1 < n < d$, and let
$k in [0,1]$. The integers $n$ and $d$ represent two subdivision systems
acting on the same underlying cycle, while $k$ controls the balance between
them.

We consider the interference function

$
F_k (x)
=
k cos(2 pi d x)
+
(1 - k) cos(2 pi n x),
$

where $x in RR \/ ZZ$ denotes phase on the unit cycle. At $k=0$, the function
reduces to the regular $n"-subdivision"$ $F_0 (x)=cos(2 pi n x)$, whereas at
$k=1$ it reduces to the regular $d"-subdivision"$
$F_1 (x)=cos(2 pi d x)$. The parameter $k$ therefore describes a continuous
deformation from one subdivision system to the other.

We are interested in the local maxima of $F_k$, which we call *crests*. Their
positions provide a parameter-dependent set of accent locations and hence
determine a rhythmic spacing pattern. At $k=0$, the crests lie on the regular
$n$-grid ${i/n : i=0, dots, n-1}$.

Each of these initial crests determines a local analytic branch as $k$ begins
to increase. We call the branches issued from these maxima the *anchored crest
branches*. This distinction is important: the anchored branches are not
necessarily identical to the complete set of local maxima of $F_k$ for every
parameter value. Additional critical points may appear as $k$ varies, and an
anchored branch may in principle encounter a degenerate stationary point.

Following the anchored crests as $k$ varies produces a family of trajectories
on the cycle. Their evolution may be studied implicitly through the
stationarity equation or, equivalently, by expressing the modulation parameter
as a function of phase. This phase parametrization provides a natural framework
for studying the local continuation, possible degeneracies, and endpoint
behaviour of the crest branches.

The derivative of the interference function is

$
partial_x F_k (x)
=
-2 pi
(
  k d sin(2 pi d x)
  +
  (1 - k) n sin(2 pi n x)
).
$

A distinguished parameter occurs when the two contributions to the
stationarity equation have equal coefficients. This happens at
$k_c=n/(n+d)$, since
$k_c d=(1-k_c)n=n d/(n+d)$. 

At $k=k_c$, the stationarity equation reduces to

$
sin(2 pi d x)+sin(2 pi n x)=0.
$

This equation factors into two elementary trigonometric families, one of which
lies on the rational $(n+d)$-grid. The threshold therefore produces a
nontrivial rational stationary configuration between the initial $n$-grid and
the final $d$-grid. Determining which of these stationary points belong to the
anchored crest branches, and whether this is the only nontrivial rational
alignment in the interior of the parameter interval, are central questions of
the paper.

Whenever the selected anchored crests are distinct, their successive circular
differences define a normalised spacing vector. We call this vector the
*Huplet*, for “harmonic tuplet”. At $k=0$, the Huplet is the regular
$n$-tuplet $T_n=(1/n, dots, 1/n)$.

When the anchored branches extend to $k=1$, their endpoint positions lie on the
$d$-grid. We call the corresponding spacing vector the *Quplet*, for
“quantized tuplet”. The Huplet therefore describes the continuous deformation
of the spacing pattern, while the Quplet describes its quantized endpoint.

These endpoint patterns are closely related to Euclidean rhythms. By Euclidean division, there exist unique integers $s >= 1$ and $r$ such that

$
d=s n+r,
quad
0 <= r < n.
$

Here, $s=floor(d/n)$ is the quotient and $r=d mod n$ is the remainder. The
intervals of the corresponding spacing pattern then take the two values $s/d$
and $(s+1)/d$. When $0 < r < n$, exactly $r$ intervals have the larger value
and $n-r$ have the smaller value. The problem is not only to identify this
two-valued Euclidean structure, but also to determine which cyclic rotation is
selected by the anchored crest dynamics.

Once an anchoring convention has been fixed, Quplets associated with a common
residue $r=d mod n$ share a common combinatorial arrangement of long and short
intervals, up to symmetries that will be described later. Their spacing vectors
lie on affine lines through the regular tuplet in the simplex of normalised
rhythmic intervals. This yields a geometric description of fixed-residue
families and suggests a continuous extension in which the contrast between
long and short intervals becomes a real parameter.

A complementary representation views a Quplet as a block-sum image of the
uniform distribution on the $d$-grid. The selected onset sites partition the
cycle into $n$ contiguous blocks, and summing the uniform grid weights over
these blocks recovers the Quplet spacing vector. This makes the relation
between Euclidean gap patterns and affine simplex geometry explicit.

The paper has three principal aims. First, it develops the local analytic
theory of anchored crest trajectories for the two-frequency interference
model. Second, it studies the distinguished rational configuration at
$k=k_c$ and the selection of endpoint sites on the $d$-grid. Third, it
describes the combinatorial and affine organisation of the resulting spacing
vectors.

Several global properties suggested by numerical experiments remain open.
These include the absence of folds under appropriate arithmetic hypotheses,
the monotonicity of anchored crest branches, the uniqueness of the interior
rational alignment, and the precise relation between dynamical continuation
and the selected Euclidean rotation.
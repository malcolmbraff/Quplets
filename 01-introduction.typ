#import "definitions.typ": *
#import "@preview/tiptoe:0.4.0":*
= Introduction

A cyclic rhythm can be represented by points on a circle, or equivalently by the cyclic spacings between consecutive points. This paper asks how a distinguished discrete rhythm can be selected dynamically when two regular subdivisions interfere. We interpret $F_k$ as a cyclic accent profile: its local maxima are candidate onset phases, $k$ continuously shifts the relative influence of the two subdivision layers, and continuation follows $n$ of the maxima across the deformation. For example, the pair $(n,d) = (5,7)$ produces a continuous five-onset timing path whose endpoint is a distinguished five-onset representative on the seven-pulse grid.

Let $1<n<d$ be coprime positive integers with $n$ odd. Let $k in [0,1]$ be a real modulation parameter, and let $x in RR \/ ZZ$ denote phase on the unit cycle.#footnote[
Coprimality is only a primitive-period normalization. For arbitrary
frequencies, let $g=gcd(n,d)$, $p=n/g$, and $q=d/g$. With $u=g x$, the signal
reduces to
$F_k (x)=k cos(2 pi q u)+(1-k) cos(2 pi p u)$, so it has period $1/g$ and
consists of $g$ translated copies of the coprime $(p,q)$ profile. All
critical-point trajectories and nearest-grid endpoints lift through
$x=(u+r)/g$, $r=0,dots,g-1$. We assume $gcd(n,d)=1$ only to work on one
primitive period and avoid repeated notation.
The assumption that $n$ is odd isolates the generic parity case used in the
threshold analysis. When $n$ is even, the central half-grid point produces a
symmetric pitchfork at the lower degeneracy threshold; the final section proves
the corresponding reflected two-choice result.
]
Consider

#nonum[
  $
  F_k (x)
  =
  k cos(2 pi d x)
  +
  (1-k) cos(2 pi n x),
  quad
  k in [0,1],
  quad
  x in RR \/ ZZ.
  $
]


At $k=0$, the crests form the regular $n$-grid; at $k=1$, they form the regular
$d$-grid. For each $i in {0,dots,n-1}$, let $X_i (k)$ denote the crest branch
issued from $i/n$.

The first problem is global: an initially defined branch could, in principle,
degenerate, collide with another branch, or cease to be a local maximum.
@anchored-continuation rules out all three possibilities for the anchored
branches. Each $X_i$ exists uniquely on $[0,1]$, remains a nondegenerate local
maximum, preserves cyclic order, and moves monotonically inside a short
nearest-grid corridor. Its endpoint is

#nonum[
  $
  X_i (1)
  =
  1 / d floor((d i) / n + 1 / 2).
  $
]

Additional unanchored stationary points may bifurcate elsewhere; the result
concerns only the $n$ components issued from the initial crests.

Because cyclic order is preserved, choose lifts satisfying

#nonum[
  $
  0=X_0 (k)<X_1 (k)<dots<X_(n-1) (k)<1
  $
]

and set $X_n (k)=1$. Their successive spacings are

#nonum[
  $
  D_i (k)=X_(i+1) (k)-X_i (k),
  quad
  i=0,dots,n-1.
  $
]

The spacing vector

#nonum[
  $
  Huplet(n,d,k)
  =
  (D_0 (k),dots,D_(n-1) (k))
  $
]

will be called the *Huplet* in this paper, a contraction of *harmonic
tuplet*. It records the continuously varying spacing pattern produced by the
two-frequency deformation. Its endpoint

#nonum[
  $
  Q(n,d)=Huplet(n,d,1)
  $
]

will be called the *Quplet*, a contraction of *quantized tuplet*: the
corresponding spacing pattern on the endpoint grid.

Euclidean rhythms are discrete cyclic onset patterns. We use the terminology
in the sense of Toussaint #cite(<toussaintEuclideanAlgorithmGenerates2005>),
which connects musical onset patterns with Bjorklund's pulse-distribution
algorithm #cite(<bjorklundTheoryRepratePattern2003>), and of the later
geometric account #cite(<toussaintGeometryMusicalRhythm2020>). The present
paper does not propose another Euclidean-generation algorithm. It derives a
selected Euclidean configuration from continuous crest dynamics.

The endpoint configuration, taken as an unlabeled point set, is itself
classical. Since $n$ is odd, the nearest-grid endpoint sites of
@anchored-continuation rewrite as

#nonum[
  $
  X_i (1)
  =
  1 / d floor((d i + (n - 1) / 2) / n),
  $
]

which is a Clough--Douthett $J$-function representation, with shift
$(n - 1) \/ 2$, of a maximally even set of $n$ onsets on the
$d$-grid #cite(<cloughMaximallyEvenSets1991>).#footnote[
For integers $m$ and $q >= 1$, $floor(m / q) = floor((m - 1) / q)$ unless
$q$ divides $m$. With $m = 2 d i + n$ and $q = 2 n$, the numerator is odd,
hence
$floor((d i) / n + 1 / 2)
= floor((2 d i + n) / (2 n))
= floor((2 d i + n - 1) / (2 n))
= floor((d i + (n - 1) / 2) / n)$.
]
Maximally even sets coincide with Euclidean rhythms up to cyclic rotation
#cite(<demaineDistanceGeometryMusic2009>). The neighboring static theory also
includes structural decompositions and interlocking operations
#cite(<gomez-martinStructuralPropertiesEuclidean2009>) and
#cite(<gomez-martinInterlockingEuclideanRhythms2009>), and variational
characterizations of maximally even configurations
#cite(<douthettMaximallyEvenSets2007>). Accordingly, this paper claims no new
characterization of maximal evenness. Its combinatorial layer
(@nearest-grid-all-scale-balance) is elementary and kept self-contained, and the
all-scale distance criterion of Demaine et al.
#cite(<demaineDistanceGeometryMusic2009>) enters only to identify the
endpoint class. The claimed novelty is the selection mechanism: global
anchored continuation through the full deformation (@anchored-continuation);
the exact threshold identity of @threshold-extension-identity, which identifies the
slope-balanced spacing vector with $Q(n, n + d)$; and the labeled,
phase-anchored selection of a distinguished rotation of $E(n, d)$
(@section5).
/*
Euclidean rhythms are discrete cyclic onset patterns. We use the terminology
in the sense of Toussaint #cite(<toussaintEuclideanAlgorithmGenerates2005>),
which connects musical onset patterns with Bjorklund's pulse-distribution
algorithm #cite(<bjorklundTheoryRepratePattern2003>), and of the later
geometric account #cite(<toussaintGeometryMusicalRhythm2020>). The present
paper does not propose another Euclidean-generation algorithm. It derives a
selected Euclidean configuration from continuous crest dynamics.

The neighboring static theory includes maximal evenness
#cite(<cloughMaximallyEvenSets1991>), all-scale distance characterizations
#cite(<demaineDistanceGeometryMusic2009>), structural decompositions and
interlocking operations #cite(<gomez-martinStructuralPropertiesEuclidean2009>)
and #cite(<gomez-martinInterlockingEuclideanRhythms2009>), and variational
characterizations of maximally even configurations
#cite(<douthettMaximallyEvenSets2007>). These works characterize or manipulate
discrete cyclic classes. By contrast, our nearest-grid result is a labeled,
phase-anchored selection principle; it is not another definition of maximal
evenness.
*/
Amiot's Fourier-space approach to rhythm #cite(<amiotMusicFourierSpace2016>)
is also nearby. Here, however, continuity concerns the critical-point
trajectories of the two-frequency accent profile, rather than a Fourier-space
metric or a discrete transformation system.

The endpoint formula selects the unique nearest $d$-grid site to each labeled
initial point. The resulting gaps satisfy a stronger property than merely
having two adjacent sizes: for every $ell in {1,dots,n-1}$, every clockwise
distance spanning $ell$ successive selected onsets belongs to

#nonum[
  $
  {floor((ell d) / n),ceil((ell d) / n)}.
  $
]

By the all-scale distance criterion of Demaine et al. #cite(<demaineDistanceGeometryMusic2009>), this identifies the
endpoint necklace, up to cyclic rotation, with the Euclidean rhythm class
$E(n,d)$. The labels and the fixed branch $X_0 (k)=0$ retain additional
information and select one distinguished rotation. We denote this labeled
nearest-grid representative by $CanonicalQuplet(n,d)$ and prove

#nonum[
  $
  Q(n,d)
  =
  CanonicalQuplet(n,d),
  quad
  CanonicalQuplet(n,d) in E(n,d).
  $
]

The representative also satisfies a labeled nearest-grid minimality property:
among all labeled $d$-grid selections, it minimizes every nondecreasing
separable circular-displacement cost, uniquely for strictly increasing
losses.

A second exact structure appears at the slope-balanced parameter

#nonum[
  $
  k_c=n/(n+d).
  $
]

There the stationary equation factors into a resonant $(n+d)$-grid family and
a complementary family. We determine the complete threshold stationary set,
separate the two families by amplitude, and prove that the anchored crests are
precisely the $n$ highest threshold crests. Their spacing vector satisfies

#nonum[
  $
  Huplet(n,d,k_c)
  =
  Q(n,n+d).
  $
]

@section2 proves global anchored continuation and nearest-grid endpoint
selection.\
@section3 analyzes the balanced threshold configuration, proves
that its highest crests are Euclidean, and identifies them with the anchored
branches. \
@section4 introduces Huplets and Quplets, proves the Euclidean
endpoint theorem, and establishes the threshold-extension identity. \
@section5 characterizes the canonical labeled representative by centered displacement
symmetry and labeled nearest-grid minimality. \
@section6 extends the endpoint selection to even $n$, where a central pitchfork
produces a reflected canonical pair. \
The conclusion in @conclusion summarizes this complete proved chain.



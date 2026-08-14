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

Additional unanchored stationary pairs may bifurcate elsewhere. Nevertheless,
for every $0<k<1$, the anchored branches remain precisely the $n$ highest
local maxima of $F_k$.

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

The following statement gathers the exact results proved in this paper.
Here $E(n,d)$ denotes the cyclic class of the Euclidean rhythm with $n$
onsets on the $d$-pulse grid, recalled in @section4.

#theorem(name: [Main theorem, odd $n$], numbering: none)[
  #set enum(numbering: "(i)")
  Let $1<n<d$ be coprime integers with $n$ odd.

  + *Global continuation.* Each crest of $F_0$ at $i/n$ continues uniquely on
    $[0,1]$ as a nondegenerate local maximum $X_i (k)$ of $F_k$. The $n$
    branches remain distinct, preserve cyclic order, move monotonically inside
    pairwise disjoint corridors, and end at the unique nearest $d$-grid sites
    $X_i (1) = 1 / d floor((d i) / n + 1 / 2)$
    (@anchored-continuation, @nearest-grid-endpoints).

  + *Full prominence ranking.* For every $0<k<1$, the anchored branches are
    precisely the $n$ highest local maxima of $F_k$, even when additional
    stationary pairs bifurcate elsewhere (@full-prominence-ranking).

  + *Euclidean endpoint.* For every $i$ and every $ell in {1,dots,n-1}$, the
    clockwise distance spanning $ell$ successive endpoint onsets lies in
    ${floor((ell d) / n), ceil((ell d) / n)}$. Hence the endpoint spacing
    vector satisfies $Q(n,d) = CanonicalQuplet(n,d) in E(n,d)$, where
    $CanonicalQuplet(n,d)$ is the labeled nearest-grid representative
    constructed in @section5 (@euclidean-endpoint-theorem,
    @Quplet-realization).

  + *Threshold identity.* At $k_c = n/(n+d)$, the anchored crests are exactly
    the $n$ highest crests of $F_(k_c)$, and
    $Huplet(n,d,k_c) = Q(n,n+d)$
    (@anchored-threshold-selection, @threshold-extension-identity).
]

The Main theorem is deliberately restricted to odd $n$. The even case is
treated separately in @section-even-n: @parity-unified-endpoint-selection is a
companion endpoint theorem, not an additional part of the Main theorem. It
shows that the unique central rounding tie is accompanied by a pitchfork and
that the two resulting canonical endpoint selections are exchanged by
reflection.

The endpoint conclusions of the Main theorem and its even-$n$ companion both
concern Euclidean configurations. We therefore place that common discrete
structure in context before turning to the proof architecture.

Euclidean rhythms are discrete cyclic onset patterns. We use the term in the
sense of Toussaint #cite(<toussaintEuclideanAlgorithmGenerates2005>), linking
musical onset patterns to Bjorklund's pulse-distribution algorithm
#cite(<bjorklundTheoryRepratePattern2003>), and of the later geometric account
#cite(<toussaintGeometryMusicalRhythm2020>). The present paper does not propose
another Euclidean-generation algorithm: it derives a selected Euclidean
configuration from continuous crest dynamics.

The endpoint set itself is classical. Since $n$ is odd, the nearest-grid
formula from @anchored-continuation can be rewritten as

#nonum[
  $
  X_i (1)
  =
  1 / d floor((d i + (n - 1) / 2) / n),
  $
]

which is a Clough--Douthett $J$-function representation, with shift
$(n - 1) / 2$, of a maximally even set of $n$ onsets on the
$d$-grid #cite(<cloughMaximallyEvenSets1991>).#footnote[
For integers $m$ and $q >= 1$, $floor(m / q) = floor((m - 1) / q)$ unless
$q$ divides $m$. \ With $m = 2 d i + n$ and $q = 2 n$, the numerator is
odd, hence
$floor((d i) / n + 1 / 2)
= floor((2 d i + n) / (2 n))
= floor((2 d i + n - 1) / (2 n))
= floor((d i + (n - 1) / 2) / n)$.
]
Maximally even sets coincide with Euclidean rhythms up to cyclic rotation
#cite(<demaineDistanceGeometryMusic2009>). Related static theory includes
structural decompositions and interlocking operations
#cite(<gomez-martinStructuralPropertiesEuclidean2009>)
#cite(<gomez-martinInterlockingEuclideanRhythms2009>) and variational
characterizations #cite(<douthettMaximallyEvenSets2007>). Amiot's
Fourier-space approach is also nearby #cite(<amiotMusicFourierSpace2016>), but
there continuity concerns a Fourier-space metric rather than the
critical-point trajectories of a two-frequency profile.

Accordingly, the novelty claimed here is dynamical and labeled: global
anchored continuation through the full deformation (part (i) of the Main
theorem); the proof that those branches remain exactly the $n$ highest crests
despite additional stationary births (part (ii)); the phase-anchored selection
of a distinguished rotation of $E(n,d)$ (part (iii) and @section5); and the
exact threshold identity of part (iv). The elementary nearest-grid balance is
kept self-contained; the all-scale distance criterion of Demaine et al.
#cite(<demaineDistanceGeometryMusic2009>) is used only to identify the endpoint
necklace.

The proof has three further points worth emphasizing. First, part (ii) is a
full-interval amplitude statement, not merely a crest-count result. Below
slope balance, fixed-parameter continuation across the cell-phase interval
makes crest height strictly decrease with absolute phase, while centered
residues place every unselected cell beyond every selected one. Threshold
factorization treats $k=k_c$, and backward continuation from the $d$-grid
treats $k>k_c$ (@section-full-ranking).

Second, part (iii) uses the all-scale two-value distance condition to identify
the Euclidean necklace up to rotation. The branch labels and the fixed branch
$X_0 (k) = 0$ retain the missing phase information and select
$CanonicalQuplet(n,d)$. This representative also uniquely minimizes every
strictly increasing separable circular-displacement cost among labeled
$d$-grid selections.

Third, part (iv) comes from an exact factorization at $k_c$: the stationary
equation splits into resonant $(n+d)$-grid and complementary families,
separated by amplitude, after which the anchored threshold crests are
identified with the $n$ highest ones (@section3).

The paper follows this proof chain directly. @section2 establishes global
anchored continuation and nearest-grid endpoints. @section3 analyzes the
balanced threshold and identifies its highest crests. @section4 introduces
Huplets and Quplets, proves the Euclidean endpoint theorem, and derives the
threshold-extension identity. @section5 characterizes the canonical labeled
representative. @section-full-ranking proves full-interval prominence, and
@section-even-n treats the central pitchfork and reflected canonical pair for
even $n$. The conclusion in @conclusion collects the results.

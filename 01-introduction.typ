#import "definitions.typ": *

= Introduction

Rhythmic subdivision can be represented by points on a circle, or equivalently
by the cyclic spacings between consecutive points. This paper asks how a
distinguished discrete rhythm can be selected dynamically when two regular
subdivision systems interfere.

We interpret $F_k$ as a cyclic accent or salience profile: its local maxima are
candidate onset phases, while $k$ continuously changes the relative influence
of two regular subdivision layers. This is a mathematical selection model, not
a psychoacoustic claim. It is relevant whenever a composer or analyst wishes
to deform one regular pulse organization toward another while retaining the
identity and cyclic order of the original $n$ labeled onsets. For example, the
pair $(n,d)=(5,7)$ produces a continuous five-onset timing path whose endpoint
is a distinguished five-onset representative on the seven-pulse grid.

Let $1<n<d$ be coprime integers with $n$ odd.#footnote[
Coprimality is only a primitive-period normalization. For arbitrary
frequencies, let $g=gcd(n,d)$, $p=n/g$, and $q=d/g$. With $u=g x$, the signal
reduces to
$F_k (x)=k cos(2 pi q u)+(1-k) cos(2 pi p u)$, so it has period $1/g$ and
consists of $g$ translated copies of the coprime $(p,q)$ profile. All
critical-point trajectories and nearest-grid endpoints lift through
$x=(u+r)/g$, $r=0,dots,g-1$. We assume $gcd(n,d)=1$ only to work on one
primitive period and avoid repeated notation.
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
  x in RR / ZZ.
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

is the *Huplet*. It is a continuous path in the open spacing simplex. Its
endpoint

#nonum[
  $
  Q(n,d)=Huplet(n,d,1)
  $
]

is the *Quplet*.

The Euclidean-rhythm terminology used below follows Toussaint
#cite(<toussaintEuclideanAlgorithmGenerates2005>), who connected musical
onset patterns with Bjorklund's pulse-distribution algorithm
#cite(<bjorklundTheoryRepratePattern2003>). The related notion of maximal
evenness was developed by Clough and Douthett
#cite(<cloughMaximallyEvenSets1991>). Structural decompositions and
interlocking operations for Euclidean rhythms were subsequently studied by
Gómez-Martín, Taslakian, and Toussaint
#footnote[“Structural properties of Euclidean rhythms,” _Journal of Mathematics
and Music_ 3 (2009), 1–14,
#link("https://doi.org/10.1080/17459730902819566")[doi:10.1080/17459730902819566];
“Interlocking and Euclidean rhythms,” _Journal of Mathematics and Music_ 3
(2009), 15–30,
#link("https://doi.org/10.1080/17459730902916545")[doi:10.1080/17459730902916545].].
// Zotero: replace this manual DOI footnote with synchronized citation keys once added.

Those works characterize and manipulate discrete Euclidean rhythm classes.
The contribution here is different: we solve a continuous critical-point
continuation problem for a two-frequency trigonometric family and prove that
its anchored dynamics select both the Euclidean necklace and one labeled,
phase-anchored rotation of it.

The endpoint formula selects the unique nearest $d$-grid site to each labeled
initial point. The resulting gaps satisfy a stronger property than merely
having two adjacent sizes: for every $ell in {1,dots,n-1}$, every clockwise
distance spanning $ell$ successive selected onsets belongs to

#nonum[
  $
  {floor((ell d) / n),ceil((ell d) / n)}.
  $
]

By the all-scale distance criterion of Demaine et al., this identifies the
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

Amplitude ranking is different from continuation or endpoint selection. Set
$k_0=n^2/(n^2+2d^2)$. We prove that there is an explicit $h_0>0$ for which the
anchored crests are precisely the $n$ highest local maxima for every
$k in [0,k_0] union (k_c-h_0,1)$. At $k=1$ all $d$ crest amplitudes tie.
Writing $A_i (k)=F_k (X_i (k))$, the anchored amplitudes are convex functions
of $k$, reach their global minima at $k_c$, and satisfy
#nonum[
  $
  A_i (k)
  >=
  cos((pi(n-1))/(n+d)).
  $
]
For $k<k_c$, every anchored branch remains inside its own quarter-width
$n$-grid window, although additional unanchored crests may coexist. A
degenerate stationary point can occur only at or below slope balance, and its
amplitude satisfies an exact square-root bound in $k_c-k$. This bounds every
unanchored crest below the common anchored floor throughout
$(k_c-h_0,k_c)$. The unresolved set is therefore contained in
$(k_0,k_c-h_0]$ when this interval is nonempty. On that residual set, keeping
all unanchored crests below the floor remains sufficient, but not necessary,
for the top-$n$ property.

Section 2 proves global anchored continuation and nearest-grid endpoint
selection. Section 3 analyzes the balanced threshold configuration, proves
that its highest crests are Euclidean, and identifies them with the anchored
branches. Section 4 introduces Huplets and Quplets, proves the Euclidean
endpoint theorem, and establishes the threshold-extension identity. Section 5
characterizes the canonical labeled representative by centered displacement
symmetry and labeled nearest-grid minimality. Section 6 develops the logically
separate amplitude-ranking theory and isolates the residual interval. The
conclusion summarizes the complete proved chain.

/*

Previous introduction preserved for source history.

#import "definitions.typ": *

= Introduction

Rhythmic subdivision may be represented by an ordered collection of points on a
cycle, or equivalently by the circular spacings between those points. In this
paper, we study how such spacing patterns arise from the interaction of two
regular subdivision systems.

Let $1 < n < d$ and consider the two-frequency family

#nonum[
  $
  F_k (x)
  =
  k cos(2 pi d x)
  +
  (1-k) cos(2 pi n x),
  $
]

where $k in [0,1]$ and $x in RR \/ ZZ$. At $k=0$, the crests of $F_k$
form the regular $n$-grid, whereas at $k=1$ they form the regular $d$-grid.
The parameter $k$ therefore describes a continuous deformation between two
rhythmic subdivision systems.

Each crest of the initial $n$-grid determines a local analytic stationary
branch. We denote the branch issued from $i/n$ by

#nonum[
  $
  X_i (k),
  quad
  X_i (0)=i/n,
  $
]

and call it an anchored crest branch. Its amplitude is

#nonum[
  $
  A_i (k)
  =
  F_k (X_i (k))
  $
]

Thus the deformation naturally gives rise to two complementary classes of
trajectory functions: the position functions $X_i (k)$ and the amplitude
functions $A_i (k)$. The first describe the horizontal motion of the crests,
whereas the second describe their changing prominence in the interference
signal.

Whenever the anchored crests are defined and distinct, their circularly
ordered positions determine successive spacing functions

#nonum[
  $
  D_j (k)
  =
  Y_(j+1) (k)-Y_j (k),
  $
]

with cyclic indexing. The normalized vector

#nonum[
  $
  Huplet(n,d,k)
  =
  (D_0 (k), dots, D_(n-1) (k))
  $
]

is called the Huplet associated with $(n,d,k)$. It is a curve in the open
spacing simplex

#nonum[
  $
  Sigma_n^circle.stroked.small
  =
  {
    q in RR^n
    mid(|)
    q_j > 0,
    sum_(j=0)^(n-1) q_j = 1
  }.
  $
]

At $k=0$, this curve begins at the regular tuplet

#nonum[
  $
  t_n
  =
  (1/n, dots, 1/n).
  $
]

If the anchored branches extend globally to $k=1$, remain crests, and reach
distinct points of the final $d$-grid, their endpoint spacings define the
dynamical Quplet

#nonum[
  $
  Q(n,d).
  $
]

The principal dynamical problem is to determine which $n$ sites of the final
$d$-grid are selected by this continuation.

A distinguished intermediate configuration occurs when the two terms in the
stationarity equation have equal coefficients. This happens at

#nonum[
  $
  k_c
  =
  n/(n+d).
  $
]

At $k=k_c$, the stationary equation factors into two explicit trigonometric
families. One lies on the $(n+d)$-grid. For coprime $n$ and $d$, with $n$
odd, we prove that the $n$ highest threshold crests belong to this grid and
have Euclidean circular spacings. Their selection follows from a strict
amplitude separation between the two stationary families.

The endpoint problem contains more information than the Euclidean cyclic class
alone. An even distribution of $n$ points on a $d$-grid determines a gap word
only up to cyclic rotation, whereas the anchored branches retain their initial
labels and distinguish the branch issued from $x=0$.

To separate this rotation-selection problem from the unresolved global crest
dynamics, we construct an independent canonical representative. Each initial
grid point $i/n$ is assigned to its nearest site on the $d$-grid, and the
circular spacings of the resulting labeled configuration define

#nonum[
  $
  CanonicalQuplet(n,d).
  $
]

We prove that $CanonicalQuplet(n,d)$ belongs to the Euclidean cyclic class
$E(n,d)$. It is characterized by nearest-grid displacement, a centered residue
spectrum, and a zero-temperature selection principle. The central realization
conjecture is

#nonum[
  $
  Q(n,d)
  =
  CanonicalQuplet(n,d).
  $
]

Thus the arithmetic and geometric structure of the canonical representative
is established independently, while its realization by the crest dynamics
remains open.

For fixed $n$, the canonical Quplets are organized by the residue of $d$
modulo $n$. Fixed-residue families lie on affine lines through $t_n$,
complementary residues determine opposite twin directions, and replacing the
discrete contrast by a real parameter yields continuous Quplet families in the
spacing simplex.

These affine lines provide a static skeleton for the complete Huplet dynamics.
The Huplet path generally bends away from its associated order line before
returning to distinguished canonical configurations. This suggests a broader
geometric study of the functions $D_j (k)$ and of the Huplet curves they define
inside the spacing simplex.

The same spacing vectors also admit a coarse-graining interpretation. A
canonical Quplet is obtained by partitioning the uniform $d$-grid into $n$
contiguous blocks and summing the uniform weights over those blocks. When a
dynamical endpoint exists, its selected grid sites induce an analogous
block-sum construction. The realization problem may therefore be expressed as
the equality of a dynamically induced partition and the canonical nearest-grid
partition.

The paper is organized as follows. Section 2 develops the position and
amplitude trajectories of the anchored crests. Section 3 studies the balanced
threshold configuration. Section 4 passes from crest motion to Huplet spacing
trajectories and Quplet endpoints. Section 5 constructs the canonical
constrained Euclidean representative. Sections 6 and 7 develop the affine
residue geometry and twin relations. Section 8 gives the coarse-graining and
block-sum interpretation. The conclusion summarizes the proved results and
formulates the main dynamical and geometric problems that remain open.

*/

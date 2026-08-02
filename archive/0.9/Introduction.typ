#import "definitions.typ": *
= Introduction

Rhythmic subdivision may be represented by evenly spaced points on a cycle.
In this paper, we study the interaction of two regular subdivision systems
through the weighted two-frequency function

#nonum[
  $
  F_k(x)
  =
  k cos(2 pi d x)
  +
  (1-k) cos(2 pi n x),
  $
]

where $1<n<d$, $k in [0,1]$, and $x in RR \/ ZZ$.

At $k=0$, the crests of $F_k$ form the regular $n$-grid, while at $k=1$
they form the regular $d$-grid. The parameter $k$ therefore defines a
continuous deformation between two rhythmic subdivision systems.

Each crest of the initial $n$-grid determines a local analytic branch. We call
these branches the *anchored crest branches*. Whenever they are defined and
distinct, their successive circular spacings form a normalized vector, called
the Huplet

#nonum[
  $
  Huplet(n,d,k).
  $
]

If the anchored branches extend to $k=1$, remain crests, and reach distinct
points of the $d$-grid, their endpoint spacings define the dynamical Quplet

#nonum[
  $
  Q(n,d).
  $
]

The central problem is to determine which $n$ sites of the final $d$-grid are
selected by the anchored continuation.

A distinguished parameter occurs when the two contributions to the
stationarity equation have equal coefficients:

#nonum[
  $
  k_c
  =
  n/(n+d).
  $
]

At this balanced parameter, the stationary equation factors into two explicit
families, one of which lies on the $(n+d)$-grid. For coprime $n$ and $d$,
with $n$ odd, we prove that the $n$ highest threshold crests lie on this grid
and have Euclidean circular spacings.

The endpoint-selection problem contains more information than the Euclidean
cyclic class alone. Indeed, an even distribution of $n$ points on a $d$-grid
determines a gap word only up to cyclic rotation, whereas the anchored crest
branches retain their initial labels and distinguish the branch issued from
$x=0$.

To isolate this rotation-selection problem from the unresolved global
dynamics, we introduce a canonical nearest-grid representative. Each initial
point $i/n$ is mapped to its nearest $d$-grid site, and the circular spacings
of the resulting labeled configuration define

#nonum[
  $
  CanonicalQuplet(n,d).
  $
]

We prove that this vector belongs to the Euclidean cyclic class $E(n,d)$.
It is also characterized by minimal labeled displacement, a centered residue
spectrum, and a zero-temperature selection principle.

The central dynamical conjecture is

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

For fixed $n$, the canonical representatives are further organized by the
residue of $d$ modulo $n$. Fixed-residue families lie on affine lines through
the regular tuplet, complementary residues determine opposite twin
directions, and the same spacing vectors admit a block-sum interpretation as
coarse-grained uniform distributions on the fine grid.

The paper is organized as follows. Section 2 develops the local analytic
theory of anchored crest trajectories. Section 3 studies the balanced
threshold configuration. Section 4 introduces Huplets, Quplets, and Euclidean
spacing classes. Section 5 constructs the canonical nearest-grid
representative and studies its displacement and entropy properties.
Sections 6 and 7 develop the affine residue structure and twin relations.
Section 8 gives the block-sum interpretation. The conclusion summarizes the
proved results and the remaining dynamical questions.
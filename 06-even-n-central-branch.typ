#import "definitions.typ": *

= Even $n$: a mirror pair and two canonical outcomes

The oddness assumption isolates the case in which the anchored continuation and
nearest-grid selection are single valued. When $n$ is even, coprimality forces
$d$ to be odd, and the central anchor $x=1/2$ is fixed by the reflection
$x -> 1-x$.

== The central pitchfork

At the central anchor,
#nonum[
  $
  H_k (1/2)
  =
  -(2 pi)^2 ((1-k)n^2-k d^2).
  $
]
It vanishes at
#nonum[
  $
  k_*=n^2/(n^2+d^2).
  $
]
The central branch is a crest for $k<k_*$ and a trough for $k>k_*$. Moreover,
at $k=k_*$,
#nonum[
  $
  F_(k_*) ^(4) (1/2)
  =
  (2 pi)^4 n^2 d^2 (n^2-d^2)/(n^2+d^2)<0.
  $
]
Thus the loss of the central crest is a symmetric pitchfork: for $k>k_*$ it
is replaced locally by two crest arms, exchanged by reflection and having
exactly the same amplitude.

== Two canonical selections

The other $n-1$ anchored sites have no rounding ambiguity. Indeed, a
half-grid tie for $i/n$ would imply $n | 2i$, hence, for even $n$, only
$i=n/2$ can tie. At this central index the two nearest $d$-grid sites are
#nonum[
  $
  (d-1)/(2d)
  quad "and" quad
  (d+1)/(2d),
  $
]
which are reflections of one another.

Accordingly, once the two pitchfork arms are continued to the endpoint, the
even-$n$ construction has two canonical outcomes: retain the unique
nearest-grid choices for the noncentral labels, and choose either central
endpoint above. The two resulting labeled selections, Quplets, and Euclidean
rhythm representatives are exchanged by reflection. The rational endpoint
grid is therefore not lost; only uniqueness is replaced by a mirror pair.

== A symmetry-breaking signal

A signed small perturbation gives a practical way to choose one member of
that pair:
#nonum[
  $
  F_(k,epsilon) ^s (x)
  =
  F_k (x)+s epsilon sin(2 pi x),
  quad
  s in {-1,1},
  quad
  0<epsilon.
  $
]
Since
#nonum[
  $
  partial_x F_(k,epsilon) ^s (1/2)=-2 pi s epsilon,
  $
]
the fixed central degeneracy is removed. Reflection changes $s$ to $-s$, so
the two signs select the two mirror-related resolutions. This perturbation is
only a signal-level tie-breaker: the exact grid and Euclidean conclusions
belong to the unperturbed family $F_k$, recovered as $epsilon -> 0$.

A full even-$n$ theorem would require the remaining global continuation
argument for the two arms. Subject to that continuation, every step of the
paper persists: continuation becomes two-valued only at the central branch,
nearest-grid locking gives two midpoint resolutions, and the endpoint rhythm
is a mirror pair of canonical Euclidean representatives.

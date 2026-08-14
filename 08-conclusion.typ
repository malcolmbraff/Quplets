#import "definitions.typ": *

= Conclusion<conclusion>

For coprime integers $1<n<d$ with $n$ odd, this paper studies the
two-frequency family

#nonum[
  $
  F_k (x)
  =
  k cos(2 pi d x)
  +
  (1-k) cos(2 pi n x),
  quad
  k in [0,1].
  $
]

The $n$ crests issued from the regular $n$-grid continue uniquely throughout
the full modulation interval. By @anchored-continuation, they remain distinct
nondegenerate local maxima, preserve cyclic order, and move monotonically
inside pairwise disjoint nearest-grid corridors. Their exact endpoints are

#nonum[
  $
  X_i (1)
  =
  1 / d floor((d i) / n + 1 / 2),
  quad
  i=0,dots,n-1.
  $
]

Although additional stationary pairs may bifurcate elsewhere,
@full-prominence-ranking proves that for every $0<k<1$ the anchored
branches are precisely the $n$ highest local maxima. Below slope balance this
follows from fixed-parameter phase ordering and centered-residue separation;
at and above slope balance it follows from the threshold factorization and the
upper-range ordering. Thus the continuous selection remains a prominence
selection throughout the full open modulation interval.

Their circular spacing vector therefore defines the Quplet $Q(n,d)$ without
any continuation hypothesis. As an unlabeled point set, the endpoint
configuration is the classical Clough--Douthett maximally even set; the
contribution of the paper is the continuous selection chain, gathered as the
Main theorem in the introduction.

The endpoint theorem @euclidean-endpoint-theorem proves more than the
two-adjacent-gap property. At every scale $ell in {1,dots,n-1}$, each
clockwise $ell$-onset distance belongs to

#nonum[
  $
  {floor((ell d) / n),ceil((ell d) / n)}.
  $
]

By the Demaine distance criterion, the endpoint gap necklace is the Euclidean
class $E(n,d)$. The dynamics also retain the labels and the anchor inherited
from the initial grid, so they select the distinguished nearest-grid
representative

#nonum[
  $
  Q(n,d)
  =
  CanonicalQuplet(n,d),
  quad
  CanonicalQuplet(n,d) in E(n,d).
  $
]

@section5 gives this representative two complementary static
characterizations. Its signed endpoint errors form the complete centered
residue system (@centered-displacement-symmetry), and
@labeled-nearest-grid-minimality shows that it minimizes
every nondecreasing separable circular-displacement cost among labeled
$d$-grid selections, uniquely when the loss is strictly increasing.

At the slope-balanced parameter

#nonum[
  $
  k_c=n/(n+d),
  $
]

the stationary equation factors into resonant and complementary families.
The resonant calculation identifies the $n$ highest threshold crests, and
@anchored-threshold-selection proves that these are exactly the anchored
crests. Consequently, @threshold-extension-identity gives the exact relation

#nonum[
  $
  Huplet(n,d,k_c)
  =
  Q(n,n+d).
  $
]

Thus the full-interval prominence theorem, the threshold configuration, the
endpoint construction, and the Euclidean spacing theorem form one complete
proved dynamical--arithmetic chain.

For even $n$, the sole central rounding tie is accompanied by a symmetric
pitchfork of the central anchored crest
(@even-central-arm-continuation). The noncentral labels continue exactly as
in the odd case (@noncentral-continuation), and the two resulting arms reach
the reflected nearest $d$-grid sites, yielding the two reflected canonical
Euclidean representatives of @parity-unified-endpoint-selection. A signed
infinitesimal sine perturbation can distinguish the two members of this
canonical mirror pair.

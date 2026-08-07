#import "definitions.typ": nonum, Huplet

= Abstract
#line(length: 100%)
#block[
  #set par(justify: true)

For coprime integers $1<n<d$ with $n$ odd, consider the cyclic two-frequency
profile
  $F_k (x) = k cos(2 pi d x) + (1-k) cos(2 pi n x)$, $k in [0,1].$
  We track the $n$ local maxima issued from the regular $n$-grid. Each continues
uniquely through the full parameter interval as a distinct nondegenerate crest,
preserves cyclic order, and moves monotonically inside a short corridor to the
unique nearest $d$-grid site 
$X_i (1) = 1 / d floor((d i) / n + 1 / 2).$
The rounded endpoint configuration is balanced at every cyclic scale: every
clockwise distance spanning $ell$ selected onsets belongs to
${floor((ell d) / n),ceil((ell d) / n)}.$
Consequently its cyclic gap class is the Euclidean rhythm necklace $E(n,d)$,
while the labels and the fixed phase anchor select a distinguished
representative, the Quplet $Q(n,d)$.
At the slope-balanced parameter $k_c=n/(n+d)$, the stationary equation factors
into two explicit families. The anchored crests are exactly the $n$ highest
threshold crests and satisfy $Huplet(n,d,k_c)=Q(n,n+d)$. We also prove
amplitude ranking near both ends of the deformation and on an explicit
interval below $k_c$; only a possibly empty subcritical interval remains
unresolved. Thus a continuous trigonometric deformation supplies a rigorous
selection mechanism for a canonical Euclidean rhythm representative.
]
#line(length: 100%)
#text(weight: "bold")[Keywords:] Euclidean rhythms; trigonometric polynomials;
critical-point continuation; nearest-grid rounding; maximal evenness.

#text(weight: "bold")[2020 Mathematics Subject Classification:] 00A65; 42A05.

/*

Previous abstract preserved for source history.

= Abstract

We model two rhythmic subdivision systems by the weighted sum


  $
  F_k (x)
  =
  k cos(2 pi d x)
  +
  (1-k) cos(2 pi n x),
  $


where $1<n<d$ and $k in [0,1]$. The local maxima issued from the regular
$n$-grid define anchored crest trajectories. Their circular spacings form a
continuous family called Huplets, while their conjectural endpoint spacings on
the $d$-grid define Quplets.

At the balanced parameter $k_c = n/(n+d)$ , we determine the complete stationary
set and prove that, for coprime $n$ and $d$ with $n$ odd, the $n$ highest
crests lie on the $(n+d)$-grid and have Euclidean circular spacings.

Independently of global crest continuation, we construct a canonical anchored
representative of the Euclidean class by rounding each initial $n$-grid point
to its nearest $d$-grid site. This representative is characterized by minimal
labeled displacement, a centered residue spectrum, and a zero-temperature
selection principle. For fixed $n$, the canonical representatives form affine
residue families through the regular tuplet, complementary residues determine
opposite twin directions, and a continuous contrast parameter extends the
discrete family within the spacing simplex. The same vectors also arise as
block-sum images of the uniform distribution on the $d$-grid.

The central open problem is whether anchored crest continuation selects this
canonical representative at $k=1$.

*/

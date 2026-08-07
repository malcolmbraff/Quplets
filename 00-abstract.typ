#import "definitions.typ": nonum, Huplet

= Abstract

#block[
  #set par(justify: true)

For coprime integers $1<n<d$ with $n$ odd, we study the two-frequency family

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

We prove that the $n$ local maxima issued from the regular $n$-grid continue
uniquely throughout the modulation interval as distinct nondegenerate crests,
preserve cyclic order, and end at the nearest $d$-grid sites

#nonum[
  $
  X_i (1)
  =
  1 / d floor((d i) / n + 1 / 2).
  $
]

Their circular spacings define a Quplet. At every scale, its clockwise onset
distances are the two nearest integers to the corresponding uniform distance;
hence its cyclic gap class is the Euclidean rhythm necklace $E(n,d)$. The
anchored dynamics select a distinguished labeled rotation, which is also the
unique minimizer of every strictly increasing separable circular-displacement
cost.

At the slope-balanced parameter $k_c=n/(n+d)$, the stationary equation
factors into two explicit families. We prove that the anchored crests are
exactly the $n$ highest threshold crests and obtain the identity
$Huplet(n,d,k_c)=Q(n,n+d)$. Thus two-frequency crest continuation gives a
dynamical construction of a canonical Euclidean representative. The remaining
open problem is whether the anchored crests retain the top $n$ amplitude ranks
for every $k in [0,1)$.

]

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

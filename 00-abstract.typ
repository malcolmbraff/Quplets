#import "definitions.typ": nonum, Huplet


= Abstract
#line(length: 100%)
#block[
  #set par(justify: true)


For coprime integers $1<n<d$ with $n$ odd, consider the cyclic two-frequency
profile
  $F_k (x) = k cos(2 pi d x) + (1-k) cos(2 pi n x)$, where $k in [0,1]$ is real and $x in RR / ZZ$ is phase on the unit cycle.
  We track the $n$ local maxima issued from the regular $n$-grid. Each continues
uniquely through the full parameter interval as a distinct nondegenerate crest,
preserves cyclic order, and moves monotonically inside a short corridor to the
unique nearest $d$-grid site 
$X_i (1) = 1 / d floor((d i) / n + 1 / 2).$
Although additional stationary pairs may bifurcate elsewhere, these anchored
branches are precisely the $n$ highest local maxima of $F_k$ for every
$0<k<1$.
As an unlabeled point set, the endpoint configuration is the classical
maximally even set of Clough and Douthett.
The rounded configuration is balanced at every cyclic scale: every
clockwise distance spanning $ell$ selected onsets belongs to
${floor((ell d) / n),ceil((ell d) / n)}.$
Consequently its cyclic gap class is the Euclidean rhythm necklace $E(n,d)$,
while the labels and the fixed phase anchor select a distinguished
representative, the Quplet $Q(n,d)$.
At the slope-balanced parameter $k_c=n/(n+d)$, the stationary equation factors
into two explicit families, making the global ranking explicit, and the
anchored crests satisfy $Huplet(n,d,k_c)=Q(n,n+d)$. Thus a continuous
trigonometric deformation supplies a rigorous selection mechanism for a
canonical Euclidean rhythm representative. For even $n$, the central pitchfork yields a reflected pair of equally canonical Euclidean endpoint selections.
]
#line(length: 100%)
#text(weight: "bold")[Keywords:] Euclidean rhythms; trigonometric polynomials;
critical-point continuation; amplitude ranking; nearest-grid rounding; maximal evenness.


#text(weight: "bold")[2020 Mathematics Subject Classification:] 00A65; 42A05.


/*
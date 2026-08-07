#import "../definitions.typ": *

= Amplitude-selection conjecture

#emph[Open dynamical problem extracted from the main article. Global anchored
continuation and nearest-grid endpoint selection are proved; the instantaneous
ranking statement below remains conjectural.]

Let $1<n<d$ be coprime, with $n$ odd, and let $X_i (k)$ denote the anchored
crest branches of

$
F_k (x)
=
k cos(2 pi d x)
+
(1-k) cos(2 pi n x).
$

== Conjecture on amplitude selection

Numerical experiments indicate that the anchored branches can also be
identified from the instantaneous crest amplitudes.

*Conjecture (amplitude selection).*  

Let $1<n<d$ be coprime, with $n$ odd. For every $k in [0,1)$, the anchored
crests are precisely the $n$ highest local maxima of $F_k$.

At $k=1$, all $d$ crests have amplitude $1$, so amplitude ranking no longer
selects a unique subset. The selected $n$ endpoint sites are instead inherited
from the continuous anchored branches.

This conjecture links branch continuation to the amplitude ordering of all
local maxima. The next section identifies the highest stationary points at the
balanced parameter and shows that the resonant $(n+d)$-grid points are joint
critical points of the surface $(k,x) mapsto F_k (x)$.
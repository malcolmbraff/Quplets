#import "../definitions.typ": *

= Remaining amplitude-selection problem

#emph[Open dynamical problem extracted from the main article. Global anchored continuation and nearest-grid endpoint selection are proved. The amplitude-selection theorem is proved in two outer parameter ranges; only the transition strip below remains open.]

Let $1<n<d$ be coprime, with $n$ odd, and let $X_i(k)$ denote the anchored crest branches of

$
F_k(x)=k cos(2 pi d x)+(1-k) cos(2 pi n x).
$

Set

$
k_c = n/(n+d),
quad
k_0 = n^2/(n^2+2 d^2).
$

== Proved amplitude-selection ranges

The anchored crests are precisely the $n$ highest local maxima of $F_k$ for

$
k in [0,k_0] union [k_c,1).
$

Near $k=0$, there are exactly $n$ crests and all are anchored. At the balanced threshold and throughout the upper range, the anchored crests are selected by the threshold and residue-ordering arguments.

At $k=1$, all $d$ crests have amplitude $1$, so an amplitude ranking does not select a distinguished $n$-subset at the endpoint itself.

== Remaining conjecture

*Conjecture (transition-strip amplitude selection).* For every

$
k in (k_0,k_c),
$

the anchored crests are precisely the $n$ highest local maxima of $F_k$.

The issue is not continuation: the anchored branches are already known to exist globally and remain nondegenerate. The missing step is to show that residual crests born in the transition region never overtake the lowest anchored crest in amplitude.

== A promising comparison principle

With the backward parameter $q=(1-k)/k$, write

$
G_q(x)=cos(2 pi d x)+q cos(2 pi n x).
$

Along any stationary crest branch $Y(q)$,

$
(d/dq) G_q(Y(q))=cos(2 pi n Y(q)).
$

Thus a crest closer to an $n$-grid peak gains amplitude faster as the $n$-component is increased. A proof that every anchored crest remains more $n$-aligned than every residual crest would make the anchored--residual amplitude gap increase and would settle the conjecture.

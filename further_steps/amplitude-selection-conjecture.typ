#import "../definitions.typ": *

= Amplitude selection: resolved conjecture

#emph[Status: resolved. The full prominence theorem is now proved and included
in the main article. This file records the former transition-strip problem and
its resolution.]

Let $1<n<d$ be coprime, with $n$ odd, and let $X_i(k)$ be the anchored crest
branches of
#nonum[
  $
  F_k(x)=k cos(2 pi d x)+(1-k)cos(2 pi n x).
  $
]

#theorem(name: "Full prominence ranking")[
  For every $0<k<1$, the anchored crests $X_i(k)$ are precisely the $n$ highest
  local maxima of $F_k$.
]

== Resolution of the former transition strip

Put $k_c=n/(n+d)$. The threshold and upper-range arguments already establish
the result for $k>=k_c$. For $0<k<k_c$, use the full cell-phase interval
$[-pi,pi]$ at fixed $k$. The central crest-sheet height is even and strictly
decreases with absolute phase. The selected cells have centered residues of
magnitude at most $(n-1)/2$, while every unselected cell has residue magnitude
at least $(n+1)/2$. Hence every central-sheet unanchored crest lies below
every anchored crest. The remaining half-grid-side sheet has negative height,
whereas every anchored crest has a positive uniform floor.

This closes the former conjecture on
#nonum[
  $
  n^2/(n^2+2d^2)<k<n/(n+d).
  $
]

At $k=1$, all $d$ crests have amplitude $1$, so the endpoint remains excluded
from strict amplitude selection.

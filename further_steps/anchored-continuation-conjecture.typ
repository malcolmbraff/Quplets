#import "definitions.typ": *

// Companion note preserved from Section 2 of the main paper.
// It records the earlier conjectural formulation, now superseded by the
// proved global anchored-continuation theorem.

= Historical anchored-continuation conjecture

*Status.* The main paper now proves global continuation, nondegeneracy,
order preservation, and nearest-grid endpoints for the anchored branches.
This note preserves the earlier conjectural formulation and its amplitude
consequence as background for the development of the result.

== Conjecture on global continuation and monotonicity

Numerical experiments suggest that the anchored crest branches behave
regularly on the full modulation interval when $n$ is odd and $gcd(n,d)=1$.
They appear to remain crests and move monotonically from the $n$-grid towards
the $d$-grid.

*Conjecture (global evolution of anchored crests).* Let $1 < n < d$ be
coprime integers, with $n$ odd. For every $i in {0,dots,n-1}$, the anchored
crest branch issued from $i/n$ satisfies:

1. *Global continuation.* The branch extends to the full interval $[0,1]$.

2. *No loss of crest status.* For every $k in [0,1]$,

   #nonum[
     $
     H_k (X_i (k))<0.
     $
   ]

3. *Monotonicity.* After choosing a continuous lift of the circular phase to
   $RR$, the function $X_i (k)$ is monotone on $[0,1]$.

If the conjecture holds, each branch reaches a crest of $F_1$ and therefore

#nonum[
  $
  X_i (1)=j_i/d
  $
]

for some $j_i in {0,dots,d-1}$. Moreover, local uniqueness prevents two
nondegenerate anchored branches with distinct initial points from colliding.
The endpoint sites are therefore distinct.

The circular spacings between these endpoint sites then define the dynamical
Quplet associated with $(n,d)$.

The convexity proposition then implies that every globally continued
nonconstant crest amplitude satisfies

#nonum[
  $
  A_i (k)<=1
  $
]

throughout the deformation.

#let nonum(eq) = math.equation(block: true, numbering: none, eq)


= Crest trajectories $X_i (k)$
#v(6pt)

== Definition: implicit crest branch
Throughout this section we keep integers $d>n>0$ (coprime unless stated), 
and we consider the same interference function $F_k$ introduced in Section 2.
Let $i in {0,…,n-1}$.  
The *crest trajectory* $X_i : I_i → ℝ \/ ℤ$ is the unique maximal continuous 
branch satisfying:

- anchor: $X_i (0)=i/n$,
- stationarity: $G(k, X_i (k)) = 0$,
- crest condition: $H(k, X_i (k)) < 0$,

where

#nonum[
  $G(k,x) = - 2π ( k d sin(2π d x) + n sin(2π n x) )$,  
]

#nonum[
  $H(k,x) = - (2π)^2 ( k d^2 cos(2π d x) + n^2 cos(2π n x) )$.
]

The implicit-function theorem guarantees existence and analyticity near $k=0$, 
because $H(0,i/n) = - (2π)^2 n^2 < 0$.


== Evolution law in graph form
Let $θ_i (k)=2π X_i (k)$.  
Differentiating $G(k,X_i (k))=0$ gives the evolution equation


  $ X_i '(k) = - d #h(4pt) sin(d θ_i (k)) / ( 2π  ( k d^2 cos(d θ_i (k)) + n^2 cos(n θ_i (k)) ) ). $ <X-ode>


This ODE advances the branch for all $(k,x)$ where the denominator is nonzero.

== Phase parametrization
Along the stationary set $G(k,x)=0$, it is convenient to regard $k$ as a 
function of the phase $θ = 2π x$. Solving $G(k,x)=0$ for $k$ gives the 
explicit expression


  $ k(θ) = - (n/d) sin(n θ) / sin(d θ). $<k-theta>


This representation will be used to understand the behaviour of the 
trajectories as $k$ grows.

== Poles of $k(θ)$ and the limit $k → ∞$
The formula @k-theta has simple poles at $θ = ℓ π / d$ with $ℓ in ℤ$, corresponding 
to $sin(d θ)=0$.  
Each interval between consecutive poles corresponds to a continuous portion 
of the branch.

As $k→∞$, the branch converges to a site of the $d$-grid.  
The selected site is determined uniquely by the anchor $X_i (0)=i/n$ and continuity.



== Amplitude along a crest trajectory

For each crest trajectory $X_i (k)$ we define its amplitude by
#nonum[
  $A_i (k) = F_k ( X_i ( k))$.
]

Along the trajectory we have $G(k,X_i (k)) = - 2π ∂_x F_k (X_i (k)) = 0$, 
so by the chain rule the evolution of the amplitude is given by
$A_i'(k) = ∂_k F_k (X_i (k)) + ∂_x F_k (X_i (k)) * X_i '(k)$.
Since the second term vanishes, this reduces to the simple formula

$A_i '(k) = cos(2π d X_i (k))$.

Thus $A_i$ is analytic on every interval where $X_i$ is analytic and remains a 
crest (i.e., where $H(k,X_i (k))<0$). In particular,
$A_i (0) = 1$ and $A_i '(0) = cos(2π d i/n)$, reflecting the initial alignment 
of the $i$-th crest with respect to the $d$-grid.

#v(12pt)

== Conjecture on monotonicity of anchored trajectories

All numerical experiments with $n$ odd suggest that each anchored crest 
trajectory $X_i(k)$ behaves in a remarkably regular way: it evolves from its 
anchor $X_i(0)=i/n$ to its limiting $d$-grid point as $k → ∞$, without 
ever leaving the region $H<0$ and without reversing direction.

This motivates the following conjecture.

*Conjecture (Monotone evolution of anchored crests).*  
Let $d>n>0$ be coprime with $n$ odd. For every $i in {0,…,n-1}$, the anchored 
trajectory $X_i (k)$ satisfies:

1. *No loss of crest status:* $H(k,X_i (k))<0$ for all $k ≥ 0$.  
   Equivalently, the trajectory never meets a stationary point with vanishing 
   second derivative.

2. *Monotonicity:* $X_i (k)$ is monotone on $[0,∞)$.

If true, this would imply that the anchored crests travel continuously and 
monotonically from the $n$-grid to the $d$-grid, each selecting a unique 
endpoint $j/d$ by continuity.



== Transition
The local evolution laws for phase and amplitude describe how each crest 
moves from its initial $n$-grid position as $k$ increases. What remains is to 
understand how these $n$ anchored trajectories assemble globally: how they 
select their endpoints on the $d$-grid, how this induces a permutation of 
$\{0,…,n-1\}$, and how this global structure governs the resulting quplet.

These questions motivate the next section.











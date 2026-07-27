#let nonum(eq) = math.equation(block: true, numbering: none, eq)

#let Huplet = math.italic("Huplet")

= Crest trajectory $X_i (k)$: definition & single evolution law
#v(6pt)

== Definition (implicit branch)

#v(6pt)
Fix integers $d>n>0$ (coprime unless stated) and choose $i in {0,…,n-1}$.
The *crest trajectory* $X_i : I_i → ℝ \/ ℤ$ is the unique continuous function
on a maximal interval $I_i ⊆ [0,∞)$ such that

- initial condition: $X_i (0) = i / n$,
- stationarity: $G(k, X_i (k)) = 0$,
- and *crest test*: $H(k, X_i (k)) < 0$,

where
#nonum[$ G(k,x) = - 2π ( k d sin(2π d x) + n sin(2π n x) ) $]
and
#nonum[$ H(k,x) = - (2π)^2 ( k d^2 cos(2π d x) + n^2 cos(2π n x) ) .$]

By the implicit-function theorem, the branch exists and is analytic near $k=0$
since $H(0, i/n) = - (2π)^2 n^2 < 0$.
#v(6pt)
== Evolution equation (graph form)

#v(6pt)
Let $θ_i (k) = 2π X_i (k)$. Differentiating $G(k, X_i (k)) = 0$ gives
$ X_i '(k) = - d sin(d θ_i (k)) / ( 2π ( k d^2 cos(d θ_i (k)) + n^2 cos(n θ_i (k)) ) ) $ <X-ode>

This single ODE advances the crest in $k$ wherever the denominator is nonzero.
#v(6pt)
== Continuation & folds (when the graph turns vertical)

#v(6pt)
A *fold* occurs exactly when the denominator of @X-ode vanishes while $G=0$, i.e.
$ k d^2 cos( d θ_i ) + n^2 cos( n θ_i ) = 0 $ <fold-cond>
At such $(k, X_i (k))$ the graph $x$ vs $k$ becomes vertical; to pass the fold,
reparametrize by the phase:
$ k(θ) = - (n/d) sin( n θ ) / sin( d θ ) $ <k-theta>
and continue in $θ$ through the fold on the side where $H<0$ (true maxima),
then resume integration of @X-ode.
#v(6pt)
== Poles of $k(θ)$ and endpoint $k → ∞$

#v(6pt)
The map @k-theta has simple poles at $θ = ℓ π / d$ with $ℓ in ℤ$
(where $sin(d θ)=0$). Between consecutive poles, follow the branch by continuity.
As $k → ∞$, the branch converges to a $d$–grid site; which site is selected is fixed
by the anchor $X_i (0)=i/n$ and continuity.
#v(6pt)
== Special case: central pitchfork (only if opposite parity)

#v(6pt)
If $d$ and $n$ have opposite parity, the stationary point at $x=1/2$ changes nature
at $k_* = n^2 / d^2$. If $i$ indexes that central crest (when it exists at $k=0$),
the single branch splits into two symmetric branches beyond $k_*$.
Otherwise, $X_i$ is unaffected by this pitchfork.
#v(6pt)
=== Example 3 — Parity-induced central bifurcation
#v(6pt)

Take $(n,d)=(6,11)$ (even–odd). The stationary point at $x=1/2$ changes nature at 
$k_* = n^2/d^2 = 36/121 $.

- For $k<k_*$: $x=1/2$ is a crest (included in the anchored circular order).
- At $k=k_*$: the point is flat (fold, $H=0$).
- For $k>k_*$: it becomes a trough, and two symmetric crests are born at $1/2 ± Δ(k)$ with
  #nonum[$ Δ(k) ∼ (1/(2π)) sqrt( 6 ( k d^2 - n^2 ) / ( n^2 ( d^2 - n^2 ) ) ) $] as $k ↓ k_* $.

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

== Evolution equation (graph form)

#v(6pt)
Let $θ_i (k) = 2π X_i (k)$. Differentiating $G(k, X_i (k)) = 0$ gives
$ X_i '(k) = - d sin(d θ_i (k)) / ( 2π ( k d^2 cos(d θ_i (k)) + n^2 cos(n θ_i (k)) ) ) $ <X-ode>

This single ODE advances the crest in $k$ wherever the denominator is nonzero.

== Continuation & folds (when the graph turns vertical)

#v(6pt)
A *fold* occurs exactly when the denominator of @X-ode vanishes while $G=0$, i.e.
$ k d^2 cos( d θ_i ) + n^2 cos( n θ_i ) = 0 $ <fold-cond>
At such $(k, X_i (k))$ the graph $x$ vs $k$ becomes vertical; to pass the fold,
reparametrize by the phase:
$ k(θ) = - (n/d) sin( n θ ) / sin( d θ ) $ <k-theta>
and continue in $θ$ through the fold on the side where $H<0$ (true maxima),
then resume integration of @X-ode.

== Poles of $k(θ)$ and endpoint $k → ∞$

#v(6pt)
The map @k-theta has simple poles at $θ = ℓ π / d$ with $ℓ in ℤ$
(where $sin(d θ)=0$). Between consecutive poles, follow the branch by continuity.
As $k → ∞$, the branch converges to a $d$–grid site; which site is selected is fixed
by the anchor $X_i (0)=i/n$ and continuity.

== Special case: central pitchfork (only if opposite parity)

#v(6pt)
If $d$ and $n$ have opposite parity, the stationary point at $x=1/2$ changes nature
at $k_* = n^2 / d^2$. If $i$ indexes that central crest (when it exists at $k=0$),
the single branch splits into two symmetric branches beyond $k_*$.
Otherwise, $X_i$ is unaffected by this pitchfork.

/*
#let nonum(eq) = math.equation(block: true, numbering: none, eq)

= Complex parametrization, ODE, and reconstruction
#v(6pt)

== Phasor form

With $θ=2π x$ and $z=e^(i θ)$ (so $|z|=1$), we have $cos(m θ)=display((z^m+z^(-m))/2)$ and $sin(m θ)=display((z^m-z^(-m))/(2 i))$.

== Crest condition and explicit $k(θ)$ 

The stationarity $G=0$ becomes $k d sin(d θ)+n sin(n θ)=0$, hence $ k(θ)=- (n/d) sin(n θ)/sin(d θ) $ <k-theta>
whenever $sin(d θ)≠0$.

== Maximum test (selecting crests)

Along a stationary point, the sign test $k d^2 cos(d θ)+n^2 cos(n θ)>0$ distinguishes a crest (true maximum).

== Position and amplitude along a crest

Writing $θ=2π X(k)$, we have #h(6pt) $X=display(θ/(2π))$ #h(3pt) (mod 1) #h(6pt) and #h(6pt) $A=F_k (X)=cos(n θ)+k cos(d θ)$.

== Correlation $A$–$X$ (reconstruction)

Along a crest, $A'(k)=cos(d θ)$. 

From $A$ and $A'$ we obtain:
#table(
  columns: 2,
  align: (left, left),
  column-gutter: 1em,
  stroke: none,
  [$cos(d θ)=A'(k)$], [defines the phase $d θ$ up to sign],
  [$sin(d θ)=± sqrt(1-(A')^2)$],  [sign fixed by branch continuity],
  [$sin(n θ)=-display(d/n)\, #h(3pt) k\, #h(3pt) sin(d θ)$], [from $G=0$],
  [$cos(n θ)=A-k A'$],  [from $A = cos(n θ) + k cos(d θ)$],
)



Recover $θ$ from $(cos(n θ),sin(n θ))$ with a continuous choice of quadrant, then $X=display(θ/(2π))$ #h(3pt) (mod 1).

== ODE along a crest 

With $θ=2π X(k)$,
$ X'(k) = - d  #h(3pt) sin(d θ) / ( 2π ( k d^2 cos(d θ) + n^2 cos(n θ) ) ) $ <Xprime>
In terms of $A$ and $A'$,
#nonum[$ X'(k) = - d #h(3pt
) sqrt( 1 - (A'(k))^2 ) / ( 2π ( #h(2pt) k d^2 A'(k) + n^2 #h(3pt) ( A(k) - k A'(k) ) #h(2pt) ) ) " (sign by continuity) " $] .

== Curvature of the amplitude 

Along a crest,
$ A''(k) = d^2 #h(3pt) ( 1 - (A'(k))^2 ) / ( k d^2 A'(k) + n^2 ( A(k) - k A'(k) ) ) $ <Aprimeprime>
or equivalent
#nonum[$ A''(k) = (sin^2( d θ )) / ( k  cos( d θ ) + (n/d)^2 cos( n θ ) ) $]
== Branching and poles


The map @k-theta
/*$ k(θ)=- (n/d) sin(n θ)/sin(d θ) $
*/has simple poles exactly where $sin(d θ)=0$, i.e. at $θ=display(ℓ π / d)$ with $ℓ in ℤ$.

On the principal range $[0,2π)$, this corresponds to $ℓ=0,…,2d-1$. 


Crest branches are followed by continuity on the open intervals $(ℓ display(π/d),#h(3pt) (ℓ+1) display(π/d))$ and may change or split only when $H(k,x)=0$ (folds).

*/
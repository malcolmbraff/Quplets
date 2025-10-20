#let nonum(eq) = math.equation(block: true, numbering: none, eq)

#let Huplet = math.italic("Huplet")

= Introduction
#v(6pt)

We study rhythmic “interference patterns” built from two integer frequencies.
Fix integers $d>n>0$ (coprime unless stated). Let $x in ℝ “/” ℤ$ be the phase on the unit cycle (time modulo one bar), and let $k ≥ 0$ be a modulation (cross-fade) factor between the $n$– and $d$–components. Our model is
$ F_k (x) = k cos(2π d x) + cos(2π n x) $<Fk> 
Viewed musically: $cos(2π n x)$ marks the $n$–tuplet (its peaks lie at $x=i/n$), and $cos(2π d x)$ marks the $d$–tuplet. Varying $k$ morphs the accent pattern from the $n$– to the $d$–subdivision.

#v(6pt)
== Crest points and their continuation

#v(6pt)
To locate accents we use the $x$–derivatives
$ G(k,x) = ∂_x F_k(x) = - 2π ( k d sin(2π d x) + n sin(2π n x) ), $<G> 
$ H(k,x) = ∂_(x x) F_k(x) = - (2π)^2 ( k d^2 cos(2π d x) + n^2 cos(2π n x) ). $<H> 

A crest (true maximum) is a phase $x$ with $G(k,x)=0$ and $H(k,x)<0$.
At $k=0$, $F_0(x)=cos(2π n x)$ has exactly $n$ crests at $x=i/n$ $(i=0,…,n-1)$.\
For any $k$, we select the $n$ highest crests:

#figure(
  image("Figures/F(x).svg", width: 100%),
  caption:[$F(x)$ for $n=5$, $d=7$, and $k=3/4$],
  ) <fig:F>

For each $i$ in ${0,…,n-1}$ we continue that crest in the parameter $k$: the crest trajectory $X_(i,n,d)(k)$ is the unique continuous branch satisfying
$X_i (0)=i/n$, $G(k,X_i (k))=0$, and $H(k,X_i (k))<0$,
on each parameter interval where no fold occurs (folds are points with $G=H=0$). On such intervals, $X_i$ is real-analytic.



#v(6pt)
== Phasor view and the stationarity formula

#v(6pt)
Writing $θ=2π x$, the stationarity condition $G=0$ yields an explicit parametrization of the $k$–value that makes phase $θ$ stationary:
#nonum[$ k(θ) = - (n/d) sin(n θ) / sin(d θ) $]
(valid whenever $sin(d θ) ≠ 0$). Together with the crest test
#nonum[$ k d^2 cos(d θ) + n^2 cos(n θ) > 0 ,$]
this allows us to track each $X_i$ by continuity between the poles of $k(θ)$ (which occur at $θ = ℓ π / d$).

#figure(
  image("Figures/Crests.svg", width: 80%),
  caption:[$X_i (k)$ for $n=5$, $d=7$],
  ) <fig:Crests>

#v(6pt)
== Three resonant regimes (global grid alignment)

#v(6pt)
A key phenomenon is metric locking: all crests lie on a single rational grid only at
$k in { 0, n/d, ∞ }$ — namely on the $1/n$–grid at $k=0$, on the $1/(n+d)$–grid at $k=n/d$ (threshold), and on the $1/d$–grid as $k → ∞$ (endpoint). At the threshold and endpoint, the selected crests form the Euclidean rhythms $E(n,n+d)$ and $E(n,d)$.

#figure(
  image("Figures/Fk(x).svg", width: 100%),
  caption:[$F_(n\/d) (x)$ for $n=5$, $d=8$],
  ) <fig:Fk>

#v(6pt)
== From trajectories to spacing vectors: Huplet and Quplet

#v(6pt)
Reading the $n$ crest phases in circular order from a fixed anchor (the branch continued from $x=0$ at $k=0$) defines the Huplet $Huplet(n,d,k)$, i.e. the anchored spacing vector. 

Its limit as $k→∞$ is the Quplet
$ Q(n,d) := lim_(k→∞) Huplet(n,d,k), $
a rotation-constrained Euclidean rhythm. We prove the threshold–extension identity
#nonum[$ Huplet(n,d,n/d) = Q(n,n+d) $]
and the Euclidean reduction
#nonum[$ Q(n,d) = Huplet(n,d-n,n/(d-n)). $]

#figure(
  image("Figures/Huplet.svg", width: 100%),
  caption:[Elements of vector $Delta X_i (k) "for" n=53 "and" d=67$],
  ) <fig:Vector>

#v(6pt)
== Rotation selection and geometry in the simplex

#v(6pt)
Among all rotations of $E(n,d)$ on the $d$–grid, the crest dynamics pick the unique anchored rotation that minimizes circular distance to the regular $n$–multiplet (equivalently, maximizes a soft “alignment entropy”). Organizing Quplets by residue $r = d “mod” n$ reveals a colinearity in the $(n-1)$–simplex $Σ_n = { q in ℝ^n_+ : sum q_i = 1 }$: for fixed $n$ and $r$, all $Q(n,s n + r)$ lie on the line $t_n + λ m_(n,r)$ with $t_n=(1/n,…,1/n)$ and $λ = r(n-r)/(n d)$. A complementary projection viewpoint shows $Q(n,d)$ as the image of the $(d-1)$–simplex barycenter under a block–sum matrix determined by the anchored $d$–grid onsets.

#v(6pt)
== Roadmap
#v(6pt)
- _Global grid resonances: classification $k in {0, n/d, ∞}$._
- _Crest trajectory: single ODE in $k$ with fold handling via $k(θ)$._
- _Huplet–Quplet: threshold–extension and Euclidean reduction._
- _Rotation selection: nearest–site rule, optimal transport, entropy view._
- _Order & colinearity: line structure in $Σ_n$ and continuous $λ$–quplets._
- _Projection viewpoint: block–sum matrix sending the $(d-1)$–simplex barycenter to $Q(n,d)$._
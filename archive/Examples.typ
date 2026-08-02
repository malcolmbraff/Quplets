#let nonum(eq) = math.equation(block: true, numbering: none, eq)

#let Huplet = math.italic("Huplet")

= Examples & figures
#v(8pt)

We illustrate the three regimes $k=0$, $k=n/d$ (threshold), and $k→∞$ (Euclidean endpoint), plus parity and gcd effects. In each example, phases are *anchored* at the branch $X_(0,n,d)$ and listed in circular order.



#v(10pt)
== Example 2 — $(n,d)=(5,12)$ (threshold vs endpoint)
#v(4pt)

At $k=0$: $ Huplet(5,12,0) = (1/5,1/5,1/5,1/5,1/5) $.

At $k=n/d=5/12$: crests sit on the $17$–grid; selecting $H<0$ yields a rotation of $E(5,17)$; anchored:  
$ Huplet(5,12,5/12) = (1/17) · (3, 4, 3, 4, 3) $.

As $k→∞$: convergence to the $12$–grid selects $E(5,12)$ with anchor:  
$ Q(5,12) = (1/12) · (2, 3, 2, 3, 2) $.

#table(
  columns: 2,
  align: (left, left),
  column-gutter: 1.2em,
  stroke: none,
  [Regime], [Anchored positions & Huplet],
  [$k=0$], [positions $0, 1/5, 2/5, 3/5, 4/5$; $Huplet=(1/5,1/5,1/5,1/5,1/5)$],
  [$k=5/12$], [positions $0, 3/17, 7/17, 10/17, 14/17$; $Huplet=(1/17)·(3,4,3,4,3)$],
  [$k→∞$], [positions $0, 2/12, 5/12, 7/12, 10/12$; $Q=(1/12)·(2,3,2,3,2)$],
)

#v(10pt)
== Example 3 — Parity-induced central bifurcation
#v(4pt)

Take $(n,d)=(6,11)$ (even–odd). The stationary point at $x=1/2$ changes nature at 
$ k_* = n^2/d^2 = 36/121 $.

- For $k<k_*$: $x=1/2$ is a crest (included in the anchored circular order).
- At $k=k_*$: the point is flat (fold, $H=0$).
- For $k>k_*$: it becomes a trough, and two symmetric crests are born at $1/2 ± Δ(k)$ with
  $ Δ(k) ∼ (1/(2π)) sqrt( 6 ( k d^2 - n^2 ) / ( n^2 ( d^2 - n^2 ) ) ) $ as $k ↓ k_* $.

*Effect on the Huplet.* Across $k_*$, the anchored order $Y_j (k)$ swaps the central crest for the two newborn ones; the last gap (closing the circle) changes by approximately $± 2 Δ(k)$ near threshold.


== What to plot
#v(4pt)

- *Crest trajectories* $k ↦ X_(i,n,d)(k)$ for $i=0,…,n-1$ (anchored), showing the crossing at $k=n/d$ and convergence to the $d$–grid.  
- *Amplitude traces* $k ↦ A_(i,n,d)(k)$ and their slopes $A'(k)=cos(2π d X(k))$; folds appear where denominators in the ODE vanish.  
- *Huplet vs $k$* — plot the $n$ gap components as functions of $k$; at $k=n/d$, gaps align to the $(n+d)$–grid; as $k→∞$, they converge to the two–length Euclidean pattern determined by $d " mod " n$.
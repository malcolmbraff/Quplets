#let nonum(eq) = math.equation(block: true, numbering: none, eq)

#let Huplet = math.italic("Huplet")

= Global grid resonances
#v(6pt)

We now look for parameter values $k$ such that all crests of $F_k$ land on rational points of the cycle. We focus here on the three “global” regimes where the $n$ crests align on a single regular grid; a more precise uniqueness statement is deferred to an appendix.

== Three resonant regimes (overview)
#v(6pt)

A first observation is that $F_k$ has three natural regimes where the $n$ crests follow a simple rational grid:

#table(
  columns: 3,
  align: (left, left, left),
  column-gutter: 1em,
  stroke: none,
  [$k=0$],   [grid $x=m/n$],         [(the $n$–grid, $n$–tuplet)],
  [$k=n/d$], [grid $x=m/(n+d)$],     [(threshold, $E(n,n+d)$)],
  [$k→∞$],   [grid $x=m/d$],         [(the $d$–grid, $d$–tuplet)],
)

At $k=0$ we simply have $F_0(x)=cos(2π n x)$, whose $n$ crests sit at $x=i/n$.\ 
As $k→∞$ the $d$–term dominates and the $n$ selected crests sit on the $d$–grid.\
The only genuinely nontrivial regime is the *threshold* $k=n/d$, where interference between the $n$– and $d$–components produces the $(n+d)$–grid. We now give a simple factorization proof of this critical case.

== Threshold resonance ($k=n/d$)
#v(6pt)

We call $k$ *grid-resonant* if all crests of $F_k$ lie on some rational grid $x=m/M$ (mod 1) for an integer $M≥1$. In this section we show directly that $k=n/d$ produces a resonance on the $(n+d)$–grid.

Let $x=m/M$ and write $θ=2π m / M$. Stationarity $G_k (x)=0$ at $x=m/M$ reads (see @G)
#nonum[
  $k d sin(d θ) + n sin(n θ) = 0.$
]

At the critical value $k=n/d$ this becomes
#nonum[
  $sin(d θ) + sin(n θ) = 0.$
]

Using the standard identity
#nonum[
  $sin A + sin B = 2 sin((A+B)/2) cos((A-B)/2),$
]
we obtain
#nonum[
  $sin(d θ) + sin(n θ)
  = 2 sin((d+n) θ / 2) cos((d-n) θ / 2).$
]

Thus $G_(n/d)$ vanishes precisely at those phases $θ$ for which
#nonum[
  $sin((d+n) θ / 2) = 0
  #h(6pt) "or" #h(6pt)
  cos((d-n) θ / 2) = 0.$
]

The first family of solutions corresponds to
#nonum[
 $ θ = 2π m / (n+d) #h(6pt) ("mod" 2π),$
]
i.e. to the $(n+d)$–grid
#nonum[
 $ x = m / (n+d) #h(6pt) ("mod" 1).$
]

The second family corresponds to the “difference” frequency $|d-n|$ and will be discarded by the crest test $H_k (x)<0$. A direct check of $H_(n/d)$ at the stationary points shows that the $n$ highest crests of $F_(n/d)$ are realised on the $(n+d)$–grid. In other words, the crest pattern at $k=n/d$ is exactly the Euclidean rhythm $E(n,n+d)$.

#v(6pt)
=== Summary of the three regimes
#v(6pt)

We have identified three regimes where all crests sit on a rational grid:

- at $k=0$, the $n$ crests sit on the $n$–grid $x=m/n$ (the straight $n$–tuplet);
- at $k=n/d$, the $n$ crests sit on the $(n+d)$–grid $x=m/(n+d)$, forming $E(n,n+d)$;
- as $k→∞$, the $d$–term dominates and the $n$ selected crests sit on the $d$–grid.

In an appendix we show that, whenever all crest positions $X_i (k)$ are rational (mod 1), the parameter $k$ must be one of these three values (up to the excluded negative value $k=-n/d$).
= Introduction
#v(6pt)

We study the one-parameter family 
$ F_k (x)=k cos(2π d x)+cos(2π n x) $ <Fk>
with integers $d>n>0$ (coprime unless stated), real $k≥0$, and $x in ℝ \/ ℤ$ (phases mod $1$).
\
It is $1$-periodic in $x$; we write $θ=2π x$ when convenient.

#text(red)[définir "musicalement" et pas seulement les domaines]



In order to find the crest points of $f(x)$ we use the $x$-derivatives $ G(k,x)=∂_x F_k (x)$ and $H(k,x)=∂_(x x) F_k (x)$, explicitly
$ G(k,x)=-2π(k d sin(2π d x)+n sin(2π n x)) $ <G>
and 
$ H(k,x)=-(2π)^2(k d^2 cos(2π d x)+n^2 cos(2π n x)). $ <H>
A *crest* is a point $x$ with $G(k,x)=0$ and $H(k,x)<0$.

At $k=0$ the profile $cos(2π n x)$ has exactly $n$ crests at $x=i/n$ $(i=0,…,n-1)$.
\
For each $i$ we define the *crest trajectory* $X_(i,n,d)(k)$ as the continuation in $k$ of that maximum on parameter intervals with no fold (no $(k,x)$ with $G=0$ and $H=0$); on such intervals $X_(i,n,d)$ is real-analytic.
\We also track the *crest amplitude* $A_(i,n,d)(k)=F_k (X_(i,n,d)(k))$,\
with $A'(k)=cos(2π d X_(i,n,d)(k))$ along the branch.

A key tool is the complex parametrization $z=e^(i θ)$ with $θ=2π x$. From the stationarity condition we obtain the explicit formula $k(θ)=-(n/d) sin(n θ)/sin(d θ)$, valid when $sin(d θ)≠0$. Together with the maximum test $k d^2 cos(d θ)+n^2 cos(n θ)>0$, this lets us follow crest trajectories by continuity on\
$θ$-intervals between the poles of $k(θ)$ (at $θ=ℓ π/d$, $ℓ in ℤ$; on $[0,2π)$: $ℓ=0,…,2d-1$).

*Resonant regimes.* There are exactly three parameter values where all crests lie on a single rational grid: $k=0$ (grid $1/n$), $k=n/d$ (grid $1/(n+d)$), and $k→∞$ (grid $1/d$).
At $k=n/d$ and as $k→∞$, selecting true maxima yields the Euclidean rhythms $E(n,n+d)$ and $E(n,d)$ (maximally even placement; Toussaint, 2005).

Outside these resonances the crest set is not globally aligned on one grid; nonetheless, trajectories are analytic away from *folds* (where $H=0$). We derive a practical ODE for $X'_(i,n,d)(k)$ and a reconstruction of $X$ from $A$.
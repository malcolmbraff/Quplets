#let Huplet = math.italic("Huplet")


== Abstract
#line(length: 100%)
#text(red)[préciser ce qu'on fait et pourquoi]

We study $F_k (x)=k cos(2π d x)+cos(2π n x)$ for integers $d>n>0$ (coprime unless stated), with $x in ℝ \/ ℤ$ and $k≥0$ real. A *crest trajectory* $X_(i,n,d)(k)$ is the continuation, in $k$, of the $i$-th local maximum of $F_0(x)=cos(2π n x)$. On any parameter interval without folds (no $(k,x)$ with $G=0$ and $H=0$), these trajectories are well-defined and real-analytic. \
Using the complex parametrization with $θ=2π x$, we obtain the explicit relation $k(θ)=-(n/d) sin(n θ)/sin(d θ)$ (together with the maximum test $k d^2 cos(d θ)+n^2 cos(n θ)>0$), an ODE for $X'(k)$, and a reconstruction of $X(k)$ from the crest amplitude $A(k)=F_k (X(k))$.

We prove that global crest alignment on a single rational grid occurs only at $k in {0, n/d, ∞}$:\ at $k=0$ on the $n$-grid, at $k=n/d$ on the $(n+d)$-grid (yielding the Euclidean rhythm $E(n,n+d)$), and as $k→∞$ on the $d$-grid (yielding $E(n,d)$).

We define the *Huplet* $Huplet(n,d,k)$ as the anchored spacing vector of the sorted crest phases (anchor at the branch continued from $x=0$ at $k=0$). \
Its endpoint $Q(n,d):=lim_(k→∞) Huplet(n,d,k)$ is the *Quplet* (a rotation–constrained Euclidean rhythm). \
At the threshold, $Huplet(n,d,n/d)=Q(n,n+d)$ (threshold–extension identity); \
equivalently, $Q(n,d)=Huplet(n,d-n,n/(d-n))$ (Euclidean reduction).

Among all rotations of $E(n,d)$ on the $d$-grid, the rotation selected by our model is the *maximum–alignment–entropy* (zero–temperature) choice, equivalently the nearest in circular distance to the regular $n$-multiplet $U={ i/n : i=0,…,n-1 }$.

Finally, a parity analysis at $x=1/2$ identifies the critical value $k_*=n^2/d^2$: when $d$ and $n$ have opposite parity, a pitchfork bifurcation occurs at the center—one crest splits into two symmetric branches for $k>k_*$ (or conversely fuses at $k_*$ in the opposite case).
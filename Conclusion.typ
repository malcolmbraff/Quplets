#let nonum(eq) = math.equation(block: true, numbering: none, eq)

#let Huplet = math.italic("Huplet")


= Conclusion and outlook
#v(6pt)

== Summary

We proposed an analytic, anchored description of crest motion in the family @Fk
$ F_k (x)=k cos(2π d x)+cos(2π n x) $ 
for integers $d>n>0$. 

The complex parametrization @k-theta $ k(θ)=-(n/d) sin(n θ)/sin(d θ) $ (with the maximum test) gives a clean way to *track crests*, yields an ODE for $X'(k)$, and the amplitude–position link $ A'(k)=cos(2π d X(k)) $ enables *reconstruction*. 

We proved that *global grid alignment* occurs only at $k in {0,n/d,∞}$; 

with the anchor at $X_(0,n,d)$ this selects a *canonical rotation*. 

We introduced the *Huplet* $Huplet(n,d,k)$ (oriented spacing vector) and its endpoint *Quplet* @Q $ Q(n,d)=lim_(k→∞) Huplet(n,d,k), $ established the *threshold–extension identity* and the *Euclidean reduction*, and described a *parity-induced bifurcation* at $x=1/2$ alongside a *gcd reduction*. 

An optimal-transport/entropy argument explains why the endpoint rotation is the nearest $d$–grid placement to the regular $n$–multiplet.

== Limitations 

Away from resonant parameters, crest branches remain analytic except at folds ($H=0$); near folds, continuation may switch branches and numerical tracking needs care.

#v(6pt)
== Directions for future work

- *Topology of rhythm space.* View $\{ Huplet(n,d,k) : k≥0 \}$ as a path in the $n$–simplex (anchored spacing vectors summing to $1$). Study its homotopy type, stratification by contact with folds, and how *alternation order* (via $r=d " mod " n$ and $Δ=|\,n-2r\,|$) organizes strata. Is the image arc geodesic for a natural metric?

- *Multi-harmonic generalization.* Extend to $F_a (x)=∑_j a_j cos(2π n_j x)$ with fixed coprime $n_j$ and parameters $a in ℝ_+^J$. Define anchored Huplets on this parameter space, classify *resonant hyperplanes*, and generalize the selection principle.

- *“Morphing” within an order class.* Fix $n$ and remainder $r=d " mod " n$. Conjecture that anchored Huplets of the same order lie on a low-dimensional affine face and can be written as $Q(n,d)+λ · v$ with a canonical *morph vector* $v$ and $λ in [0,1]$ (to be specified), interpolating between adjacent Euclidean endpoints.

- *Irrational parameters with rational crests.* Classify irrational $k$ for which one (typically two by symmetry) crest sits on a rational grid site; determine whether such $k$ form a dense subset of admissible intervals.

We expect these lines to consolidate a *topology of musical rhythms* grounded in explicit analytic dynamics, and to bridge continuous crest flows with discrete Euclidean patterns through anchored Huplets and their Quplet endpoints.
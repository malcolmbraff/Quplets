#let nonum(eq) = math.equation(block: true, numbering: none, eq)

#let Huplet = math.italic("Huplet")


= Conclusion and outlook
#v(6pt)

== Summary
#v(6pt)
We gave an anchored, analytic account of crest motion in the two–harmonic family @Fk. The phase parametrization @k-theta, together with the crest test @H and the evolution law @X-ode, provides a practical way to track each trajectory $k ↦ X_i(k)$ and to continue it across folds by reparametrizing in $θ$.

We proved a sharp global resonance result: all crests lie on a single rational grid only for $k in { 0, n/d, ∞ }$. At the threshold $k = n/d$ the selected crests form $E(n,n+d)$ and at the endpoint $k → ∞$ they form $E(n,d)$; with anchoring this fixes a canonical rotation. The endpoint rotation is characterized by the nearest–site rule @nearest, equivalently as the unique minimizer of a convex transport energy @energy and as the zero–temperature limit of the alignment entropy @entropy and @entropy-limit.

Two structural viewpoints complete the picture:
- Order and colinearity. Grouping by the residue $r = d “mod” n$, all Quplets of the same order lie on the same line in the simplex $Σ_n$: the discrete endpoints satisfy an affine law, and the continuous family $Q_λ$ interpolates between twin Quplets (residues $r$ and $n-r$) and passes through the regular tuplet at $λ = 0$.
- Projection viewpoint. Each anchored Quplet is a block–sum image of the barycenter $u_d$ of the $(d-1)$–simplex via a uniquely determined block–incidence matrix $Π$: $Π(n,d;R),u_d = Q(n,d)$ @P1. This linear picture explains the colinearity offset @P2 and is consistent with the threshold identity at $(n,d+n)$ @P3.

== Limitations
#v(6pt)
- Analytic solvability. Outside the resonant values of $k$, there is no closed–form solution for $X_i(k)$; one relies on @X-ode with careful continuation at folds given by @fold-cond.
- Anchoring and ties. The rotation and the onset set $R$ (hence $Π$) depend on the anchor and on tie–breaking at grid midpoints; our conventions make this canonical but model–dependent.
- Affine extension. The family $Q_λ(n,r)$ is a geometric extension in $Σ_n$; only the discrete amplitudes $λ(d)=r(n-r)/(n d)$ are guaranteed to be realized by the crest dynamics for finite $k$.

= Directions for future work
#v(6pt)
- Crest functions.\
  Define the class of functions $X_i (k)$ and $A_i (k)=F_k (X_i (k))$.\
  Questions: where are they differentiable, how many derivatives exist, what happens at folds, and are there other "hidden" critical $k$s than $k=n/d$ and as $k→∞$?
  
- Extending Huplet trajectories.\ Study the full path $k ↦ Huplet(n,d,k)$. Can we extend it past folds, connect different orders, and densify the space around the order line $Q_λ (n,r)$?\ Does every point on that line appear as a limit of such trajectories?
- Irrational projection.\ Can the “irrational” quplets $Q_λ(n,r)$ be understood as projections of a barycenter with a non-integer, “effective” dimension?
  \ Is there a continuum of dimensions that produces a continuum of quplets, and what stays stable when $λ$ is irrational?

- Multi-harmonic Huplets.\ For $F_a (x)=sum_j a_j cos(2π n_j x)$, do we see analogues of resonance, selection, and endpoints?\ Do new Euclidean-like patterns appear, and how do crest trajectories behave in this broader setting?
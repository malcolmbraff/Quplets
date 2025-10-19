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

== Directions for future work
#v(6pt)
- Geometry of the crest path. Study the image ${ Huplet(n,d,k) : k ≥ 0 } ⊆ Σ_n$: piecewise–analytic arc, curvature changes at @fold-cond, and its relationship to the straight order–line $t_n + λ, m_(n,r)$ (metrics on $Σ_n$, possible geodesicity).
- Multi–harmonic generalization. Extend to $F_a(x)=∑_j a_j cos(2π n_j x)$: classify resonant hyperplanes, derive selection rules, and generalize the block–sum map $Π$ to multi–block partitions.
- Twin symmetry and bands. Map “harmonic bands’’ $d = s n + r$ as affine bundles in $Σ_n$, analyze crossings and continuations between twins, and quantify alternation via $Δ = |,n - 2 r,|$.
- Irrational phenomena. Classify irrational $k$ producing rational crest sites; study Diophantine structure, density, and stability under noise.
- Perception and computation. Relate the entropy/transport selection to listening tests; develop fast, robust algorithms for tracking @X-ode and constructing $Π(n,d;R)$ at scale.

Overall, the paper links continuous crest flows to discrete Euclidean patterns through anchored Huplets and their Quplet endpoints, while revealing an underlying affine and projective geometry that organizes quplets by order, symmetry, and resonance.
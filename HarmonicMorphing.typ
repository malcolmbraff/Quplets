#let nonum(eq) = math.equation(block: true, numbering: none, eq)

#let Huplet = math.italic("Huplet")

= Harmonic morphing and affine structure of same-order quplets
#v(6pt)

== Principle
#v(6pt)

Fix $n$. Empirically, all quplets $Q(n,d)$ sharing the same order
exhibit an analogous combinatorial structure,
and their spacing vectors differ only by a linear deformation around the regular tuplet $T_n$.

This leads to an affine model:
$ Q(n,d) = T_n + λ · M $

where:
	•	$T_n = (1/n, …, 1/n)$ is the regular $n$-tuplet,
	•	$M$ is a morphing vector depending on the order $m = d “mod” n$,
	•	$λ in ℝ$ is an amplitude factor, positive or negative, controlling the deformation strength.
#v(6pt)
== Order-invariance property
#v(6pt)

Two quplets $Q(n,d_1)$ and $Q(n,d_2)$ have the same order
iff their spacing vectors can be written
$ Q(n,d_1) = T_n + λ_1 · M, quad Q(n,d_2) = T_n + λ_2 · M $
for a common $M$ and two scalars $λ_1 ≠ λ_2$,
with opposite signs when $d_1$ and $d_2$ are twins.
#v(6pt)
== Example
#v(6pt)

For $n = 5$ and the twin quplets $Q(5,7)$ and $Q(5,8)$:
the combinatorial structure is $(α, β, α, β, α)$ in both cases,
with $α > β$ in one, and $β > α$ in the other.

Let
$ T_5 = (1/5) · (1,1,1,1,1), quad M = (2, -3, 2, -3, 2). $
Then
$ Q(5,7) = T_5 + λ_1 · M, quad Q(5,8) = T_5 + λ_2 · M, $
with $λ_1 > 0$ and $λ_2 < 0$, of different magnitudes due to normalization by $1/d$.
#v(6pt)
=== Explicit construction of $M$
#v(6pt)

For a given order $m$, define the morphing vector $M_m$ by
$ M_m = (1/2) · ( Q(n, n + m) - Q(n, 2 n - m) ), $
where:
	•	$Q(n,d)$ denotes the asymptotic quplet obtained as $k → ∞$,
	•	$(n + m)$ and $(2 n - m)$ are two twin quplets of order $m$,
	•	$T_n = (1/n, …, 1/n)$ is the regular tuplet.

The vector $M_m$ is
	•	zero-sum,
	•	colinear with all order-$m$ quplets of the same combinatorial type,
	•	invariant throughout the harmonic band corresponding to that order.

We can then define the rhythmic geodesic in direction $M_m$ by
$ Q_λ^(m)(n) = T_n + λ ⋅ M_m $

Twin quplets lie at opposite ends of this line,
and any intermediate value of $λ$ describes a synthetic quplet
located between them, in the same combinatorial direction.
#v(6pt)
== Geometric interpretation
#v(6pt)

All quplets of a given order trace a straight line in the affine space $ℝ^n$,
passing through the center $T_n$, oriented by $M$.
Each value of $λ$ corresponds to a rhythmic morphing intensity.

Order-$0$ quplets are fixed: $M = 0$, hence $Q(n,d) = T_n$.
#v(6pt)
== Consequence
#v(6pt)

This shows that, for fixed $n$, the quplet space is structured by affine bundles,
where each order defines its own deformation direction from the regular pattern.

One can then navigate analytically in the rhythm space
by combining the order (given by $M$) and the amplitude (given by $λ$).
#v(6pt)
== Continuous extension: morphing geodesics
#v(6pt)

Fix $n in ℕ$ and let $M$ be the morphing vector associated with a given order.
Define the continuous family of quplets by
$ Q_λ = T_n + λ · M quad ( "where"  λ in ℝ ). $
- $T_n$ is the regular tuplet: $T_n = (1/n, …, 1/n)$,
- $M$ encodes the combinatorial morphology of the order.

As $λ$ varies continuously between two symmetric bounds $[ -λ_0, λ_0 ]$,
we sweep all quplets of the same order along an analytic geodesic in the simplex of normalized quplets.

This family
- preserves the component sum ($sum Q_λ = 1$),
- interpolates between two twin quplets in the lowest harmonic band,
- defines a continuous affine structure based on the combinatorial template.

It gives a unified interpretation of same-order quplets
as points on the same rhythmic manifold, parametrized by $λ$.
#let nonum(eq) = math.equation(block: true, numbering: none, eq)

#let Huplet = math.italic("Huplet")

= Twin Quplets and structural symmetry
#v(6pt)

== Definition
#v(6pt)

Fix $n in ℕ$, and let $d_1, d_2 in ℕ$ such that
	•	$d_1 “mod” n = m$, $d_2 “mod” n = n - m$,
	•	$floor(d_1 / n) = floor(d_2 / n)$.

We call (twin quplets) the pair ( $Q(n,d_1)$, $Q(n,d_2)$ )
that share the same modular order $m$ and belong to the same harmonic band.

These quplets exhibit an internal mirror structure,
and their rhythmic trajectories are linked by a combinatorial symmetry.
#v(6pt)
== Observed properties
#v(6pt)

Twin quplets share the following features:
	•	Their spacing uses the same two values $α$ and $β$ before normalization.
	•	The pattern follows a common template, but in reversed order.
	•	If $α > β$ in $Q(n,d_1)$, then $β > α$ in $Q(n,d_2)$.

Thus we observe a structured rhythmic inversion between the two quplets.
#v(6pt)
== Examples
#v(6pt)

For $n = 5$:
	•	$d_1 = 7$, $d_2 = 8$ → $d_1 “mod” 5 = 2$, $d_2 “mod” 5 = 3$, and $floor(d_1/5) = floor(d_2/5) = 1$.
	•	The quplets $Q(5,7)$ and $Q(5,8)$ are therefore twins of order $1$.
	•	They display the same combinatorial structure, inverted:  
$Q(5,7) = (α, β, α, β, α)$  
$Q(5,8) = (β, α, β, α, β)$
#v(6pt)
== Geometric interpretation
#v(6pt)

Twin quplets can be seen as mirror images in the quplet space,
where a combinatorial inversion comes with an inversion of relative lengths.
They are positioned symmetrically around the threshold value $k_c = n / d$,
each defining an opposite deformation along the same affine direction.

Use the threshold relevant to your model; earlier sections use $k = n/d$.
#v(6pt)
== Implications for rhythmic topology
#v(6pt)

Twin quplets trace symmetric geodesics across the space of rhythms.
They define symmetry axes in the global topological chart,
and play a structuring role in the internal organization of the quplet space for fixed $n$.

In the next sections, we study these geodesics in more detail,
their crossings, and their interpretation as harmonic bifurcations.


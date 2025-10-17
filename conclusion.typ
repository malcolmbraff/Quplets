== Conclusion and outlook
#v(8pt)

This work gives a complex-analytic account of crest trajectories for
$ F_k ( x ) = k cos( 2π d x ) + cos( 2π n x ) $,
with exact formulas for $X_{i,n,d} ( k )$, a reconstruction via the crest amplitude $A ( k )$,
and a complete classification of the “global grid” resonances ($k in { 0, n / d, ∞ }$).

At the threshold $k = n / d$ and at $k → ∞$, the crests select
Euclidean rhythms $E( n, n + d )$ and $E( n, d )$ respectively; the associated spacing vectors
(“quplets”) coincide with Christoffel words and admit a simple alternation order
$ "ord"( n, d ) = 1 + floor( | n - 2 ( d " mod " n ) | / 2 ) $.

Beyond these results, our formulas suggest a geometric–topological picture of *spaces of rhythms*.

=== A projection viewpoint (from a $d$-simplex to the $n$-simplex)
#v(4pt)

Let $gcd( n, d ) = 1$ and write $d = s n + r$ with $0 < r < n$.

Consider the regular $d$-tuplet as the barycenter $( 1 / d, …, 1 / d  $ of the $( d - 1 )$–simplex in $ℝ^d$.

Group consecutive base steps into $n$ blocks of sizes $s$ (short) or $s + 1$ (long), in the Christoffel order.

This defines an incidence map
$M_( n, d, σ ) in { 0, 1 } ^ { n × d } $,
depending on the rotation $ σ $ (choice among conjugates). The quplet at $ k → ∞ $ is the *linear projection*
$ Q( n, d, ∞ ) = ( 1 / d ) · M_( n, d, σ ) · ( 1, …, 1 )^⊤ $,
an element of the probability simplex
$ Δ_( n - 1 ) = { q in ℝ^n : q_i ≥ 0, sum_i q_i = 1 } $.

This makes precise the idea that a quplet is a *shadow* (projection) of the regular $d$-grid barycenter, with the
projection pattern encoded by the Christoffel structure.

=== Affine rays at fixed residue (and “order”)
#v(4pt)

Fix $ n $ and the residue $ r = d " mod " n in { 1, …, n - 1 } $.
Let $ v_r in { 0, 1 }^n $ be the indicator of the $ r $ long blocks in the Christoffel arrangement (and $ n - r $ zeros for short blocks).
Set $ λ = 1 / d $. A direct computation using $ d = s n + r $ yields the *affine representation*
$ Q( n, d, ∞ ) = ( 1 / n ) · ( 1, …, 1 ) + λ · ( v_r - ( r / n ) · ( 1, …, 1 ) ). $

Hence, for *fixed $ r $*, all quplets $ Q( n, d, ∞ ) $ with  $d ≡ r " (mod n)" $ lie on the same *affine ray* in $ Δ_( n - 1 ) $,
emanating from the centre $ ( 1 / n, …, 1 / n ) $ in the direction
$ w_r := v_r - ( r / n ) · ( 1, …, 1 ) $.
As $ d $ grows (so $ λ ↓ 0 $), the ray contracts to the barycentre; decreasing $ d $ moves along the ray.
The *order*
$ "ord"( n, d ) = 1 + floor( | n - 2 r | / 2 ) $
depends only on $ r $ (or $ n - r $), so all quplets of a *given order* populate one or two symmetric rays (swap $ r ↔ n - r $).

This formalises the heuristic that, in a fixed dimension $ n $, “quplets of the same order are colinear”
(affinely aligned) and differ by a *morphing amplitude* $ λ $.

=== Continuous and “irrational” morphing
#v(4pt)

The discrete family $ λ in { 1 / ( s n + r ) : s in ℕ } $ can be naturally *continued* to a continuum
$ λ in ( 0, 1 / r \] $ by the affine formula above:
$ Q_( n, r ) ( λ ) := ( 1 / n ) · ( 1, …, 1 ) + λ · w_r. $
For *irrational* values of $ λ $, the vector $ Q_( n, r ) ( λ ) $ is still a legitimate point in the $ n $–simplex —
it can be interpreted as the image, under the same incidence pattern, of an “equidistributed grid” of *non-integer density* $ 1 / λ $.
This provides a rigorous replacement for the metaphor of a “simplexe de dimension irrationnelle”:
the barycentre and projection laws stay the same; only the *density parameter* $ λ $ varies continuously.

=== Toward a topology of musical rhythms
#v(4pt)

Let $ cal(Q)_n := { Q( n, d, ∞ ) : d > n, gcd( n, d ) = 1 } $ (modulo rotation).
By the affine description, $ overline{ cal(Q)_n } $ is a *star-shaped* subset of $ Δ_( n - 1 ) $,
union of $ floor( ( n - 1 ) / 2 ) $ rays (order classes) emanating from the barycentre.
This suggests a *low-dimensional model* (essentially 1D per order class) for the space of Euclidean rhythms at fixed $ n $.

Several directions follow naturally:

- _Metrics and geodesics._ Compare $ L^p $ metrics on $ Δ_( n - 1 ) $ with *transport* distances on the circle
(using the discrete measures $ μ_Q = (1 / n) sum_i δ_( x_i ) $ at onset phases).
Study geodesics within a ray (varying $ λ $) and across rays (changing order).

- _Continuum in $k$._ The family $ k ↦ Q( n, d, k ) $ (via the sorted crest set) furnishes *curves*
in $ Δ_( n - 1 ) $ connecting the centre to the Euclidean endpoints; analyse their curvature and
possible *folds* where the sorting changes.

- _Combinatorics ↔ geometry._ The *Christoffel/Sturmian* combinatorics (slope $ r / n $)
indexes rays and order classes; the *Chebyshev* polynomial equation
$ k d · U_( d - 1 )( u ) + n · U_( n - 1 )( u ) = 0 $
governs the continuous geometry. Quantify how discrete changes in slope manifest as *bifurcations* of the crest ODE.

- _Topological data analysis._ Apply *persistent homology* to point clouds
$ { Q( n, d, k ) : k in [ 0, K ] } $ or to unions over $ d $ at fixed order,
to detect 1D features (rays), branching near thresholds, and global connectivity.

- _Beyond two terms._ Replace $ F_k $ by multi-term trigonometric polynomials
$ sum_j a_j cos( 2π m_j x ) $, and study the induced *multi-letter* generalisations of Christoffel words
and the resulting cell structure in $ Δ_( n - 1 ) $.

#v(6pt)
*Final remark.* The affine formula
$ Q( n, d, ∞ ) = ( 1 / n ) · ( 1, …, 1 ) + ( 1 / d ) · ( v_r - ( r / n ) · ( 1, …, 1 ) ) $
encapsulates the “projection from a  d –simplex” and the *colinearity by order*.
It offers a concise scaffold for a *topology of rhythm* grounded in analytic dynamics, combinatorics on words, and convex geometry.
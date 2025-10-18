== Proofs
#v(8pt)

We collect proofs (or proof sketches when standard) of the main statements.

=== Proof of the “global grid resonances” classification
#v(4pt)

Assume all crests of $F_k$ lie on a single rational grid $x = m / M$ for some $M ≥ 1$, with $k ≥ 0$. Writing $θ = 2π m / M$, the stationarity condition
$ k d sin(d θ) + n sin(n θ) = 0 $
reads, for those $m$ corresponding to crests,
$ k = - (n / d) · sin( 2π n m / M ) / sin( 2π d m / M ). $
Thus the ratio
$ R(m) := sin( 2π n m / M ) / sin( 2π d m / M ) $
must be constant across at least $n$ distinct indices $m$ (the $n$ crests).

Consider the two families on the cyclic group $ℤ / M$: $s_m = sin( 2π n m / M )$ and $t_m = sin( 2π d m / M )$. In the discrete Fourier basis (characters $χ_j(m)=e^(2π i j m / M)$), sines are linear combinations of $χ_{±n}$ and $χ_{±d}$. If $R(m)$ is constant on ≥ 2 points generating $ℤ / M$ (certainly on ≥ $n$ well-distributed indices), then $s_m$ and $t_m$ are linearly dependent as functions on $ℤ / M$, which forces
$ n ≡ 0  (mod M) $, $ d ≡ 0  (mod M) $, $ d ≡ n  (mod M) $, or $ d ≡ - n  (mod M) $. 
These congruences correspond exactly to:
#table(
  columns: 2,
  align: (left, left),
  column-gutter: 1em,
  stroke: none,
  [$ n ≡ 0 " (mod M) "$], [grid $M=n$ → $k=0$],
  [$ d ≡ 0 " (mod M) "$], [grid $M=d$ → $k → ∞$],
  [$ d ≡ - n " (mod M) "$], [grid $M=n+d$ → $k=n/d$],
  [$ d ≡ n " (mod M) "$], [grid $M=|d-n|$ → $k=-n/d$ (excluded since $k ≥ 0$)],
)
Hence, for $k ≥ 0$, the only global grids are $M in \{ n, n+d, d \}$, reached at $k=0$, $k=n/d$, $k→∞$. □

#v(8pt)
=== Proof of the threshold–extension identity $Q(n, d, n/d) = Q(n, n+d, ∞)$ (up to rotation)
#v(4pt)

At $k = n/d$, $G=0$ becomes $ sin(d θ) + sin(n θ) = 0 $, i.e.
$ 2 sin( (d+n) θ / 2 ) cos( (d-n) θ / 2 ) = 0. $
The family $ sin( (d+n) θ / 2 ) = 0 $ forces $ θ = 2π m / (n+d) $, that is the grid $x = m / (n+d)$. Selecting true maxima by $H<0$ picks exactly $n$ positions forming $E(n, n+d)$, hence $Q(n, d, n/d)$ equals the spacing vector of $E(n, n+d)$ (up to rotation).

For $(n, n+d)$ at $k→∞$, crests converge to the $(n+d)$-grid, and the $n$ branches continued from $k=0$ select $E(n, n+d)$ by the nearest-site rule (proved below). Thus $Q(n, n+d, ∞)$ is the same spacing vector. □

#v(8pt)
=== Proof of the Euclidean reduction $Q(n, d, ∞) = Q( n, d-n, n / (d-n) )$ (up to rotation)
#v(4pt)

Apply the previous identity with $(n, d_1)$ and $d_1 = d - n$:
$ Q(n, d_1, n / d_1) = Q(n, n + d_1, ∞) = Q(n, d, ∞). $
This gives the stated reduction; iterating along the Euclidean algorithm yields $Q(n, d, ∞) = Q(n, r, n / r)$ with $r = d " mod " n$. □

#v(8pt)
=== Proof of the gcd reduction
#v(4pt)

Let $g = "pgcd"(n, d)$ with $n = g n_0$, $d = g d_0$. Define $y = g x$ " (mod 1) ". Then
$ G(k, x) = 0 <==> k d sin(2π d x) + n sin(2π n x) = 0 $
$ <==> k d_0 sin(2π d_0 y) + n_0 sin(2π n_0 y) = 0, $
and similarly
$ H(k, x) < 0 <==> k d_0^2 cos(2π d_0 y) + n_0^2 cos(2π n_0 y) > 0. $
Hence the crest set on $[0,1)$ is the image of the reduced crest set on $[0,1)$, replicated $g$ times and scaled by $1/g$. Ordering on $[0,1)$, the spacing vector is the concatenation of $g$ copies divided by $g$, i.e.
$ Q(n, d, k) = (1 / g) · (\, Q(n_0, d_0, k) ⊕ … ⊕ Q(n_0, d_0, k) \,) $ (up to rotation). □

#v(8pt)
=== Proof of the parity-induced bifurcation near $x=1/2$
#v(4pt)

At $x=1/2$, $G(k, 1/2)=0$ for all $k$ since $sin(2π m · 1/2)=0$. The nature is set by
$ H(k, 1/2) = -(2π)^2 [ k d^2 cos(π d) + n^2 cos(π n) ] 
            = -(2π)^2 [ k d^2 (-1)^d + n^2 (-1)^n ]. $
Thus $x=1/2$ is a crest iff $S(k):=k d^2 (-1)^d + n^2 (-1)^n > 0$. 

If $d ≡ n  (mod 2)$, $S(k)$ has constant sign, and the nature never changes.  

If $d ≢ n  (mod 2)$, there is a unique $k_* = n^2 / d^2$ such that $S(k_*)=0$. 

A Taylor expansion of $F_k$ at $x=1/2$ shows a pitchfork: setting $θ = π + δ$, with $δ$ small,
$ F_k ( δ ) = C + ( 1 / 2 ) F_"xx" ( k, 1 / 2 ) δ^2 + ( 1 / ( 4 ! ) ) F_"xxxx" ( k_*, 1 / 2 ) δ^4 + O( δ^6 ) $
with $F_"xx" (k, 1/2) ∝ S(k)$ and $F_"xxxx" (k_*, 1/2) > 0$. Therefore, for $k>k_*$ two symmetric crests appear at $δ = ± c √{ k - k_* }$, giving
$ x_±(k) = 1/2 ± Δ(k) $ with
$ Δ(k) ∼ [ 1 / (2π) ] √{ 6 ( k d^2 - n^2 ) / ( n^2 ( d^2 - n^2 ) ) } $ as $k ↓ k_*$. □

#v(8pt)
=== Proof of the rotation selection (nearest-site rule) and entropy view
#v(4pt)

Let $U = { i / n : i = 0, …, n-1 }$ and let $R_σ = { r_i(σ) / d }$ be any rotation of $E(n, d)$ (sorted). Consider the circular distance
$ "dist"_∘ ( x, y ) = min_( m in ℤ ) | x - y + m |. $

*Nearest-site rule.* For any convex $φ : ℝ_+ → ℝ_+$, define
$ 𝔈_φ(σ) = sum_(i=0)^(n-1) φ( "dist"_∘ ( r_i(σ)/d, i/n ) ). $
By order preservation on the circle, the optimal matching is monotone; for convex $φ$, each term is minimized by the nearest $d$-site. Hence the unique minimizer is the rotation $σ^*$ with
$ r_i(σ^*) = round( (d / n) i ) $ (ties by convention). This is precisely the rotation obtained by continuity of crest trajectories as $k → ∞$.

*Entropy view.* For $τ > 0$, set
$ 𝒮_τ(σ) = (1 / n) sum_(i=0)^(n-1) log sum_(j=0)^(n-1) exp( - "dist"_∘ ( r_i(σ)/d, j/n )^2 / (2 τ) ). $
The map $v ↦ log sum_j exp( - v_j / (2 τ) )$ is symmetric and convex in $(v_j)$. By the nearest-site rule and majorization, $𝒮_τ$ is maximized by the same $σ^*$ for all $τ > 0$. As $τ ↓ 0$,
$ 𝒮_τ(σ) → - min_(π in S_n) sum_i "dist"_∘ ( r_i(σ)/d, π(i)/n )^2, $
so “maximum alignment entropy” selects the same rotation $σ^*$. 
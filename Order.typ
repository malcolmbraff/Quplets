= Order, colinearity, and continuous extension of Quplets
#v(6pt)

== Order (by residue)

Fix $n ≥ 2$. For any $d > n$, write the Euclidean division $d = s n + r$ with $0 < r < n$.
We call $r$ the residue (mod $n$). The order class of $Q(n,d)$ is determined by $r$ (equivalently by the pair ${ r, n-r }$).
Heuristically, $r$ is the number of long gaps in the Euclidean pattern $E(n,d)$.

Optional alternation index. $Δ(n,d) = |, n - 2 r ,|$ (smaller $Δ$ ⇒ more alternation).

#v(6pt)
== A linear model in the simplex

View spacing vectors as points of the $(n-1)$–simplex
$ Σ_n = { q in ℝ^n_+ : sum q_i = 1 } $.
•	Regular tuplet. $ t = ( 1/n, …, 1/n ) in Σ_n $.
•	Anchor and long set. Fix the anchored set $L ⊆ {0,…,n-1}$ of indices of the $r$ long gaps in $E(n, s n + r)$ (with your anchor). Let $S$ be the complement, $|S| = n - r$.
•	Morphing direction. Define $m = m_(n,r) in ℝ^n$ by
$m_j = 1/r$ for $j in L$, and $m_j = - 1 / ( n - r )$ for $j in S$.
Then $sum_j m_j = 0$, so $t + λ m in Σ_n$ as long as all coordinates stay in $(0,1)$.

#v(6pt)
== Colinearity theorem (fixed residue)

Let $d = s n + r$ with $0 < r < n$. The anchored Quplet satisfies
$ Q(n,d) = t + λ(d) · m_(n,r) $
with
$ λ(d) = r ( n - r ) / ( n d ) $.

Proof (one line). In $E(n,d)$ there are $r$ long gaps of size $(s+1)/d$ and $n-r$ short gaps of size $s/d$.
For $j in L$: $Q_j - 1/n = (s+1)/d - 1/n = (n-r)/(n d) = λ(d) · (1/r)$.
For $j in S$: $Q_j - 1/n = s/d - 1/n = - r/(n d) = λ(d) · ( - 1/(n-r) )$. ∎

Consequences.
•	Colinearity. For fixed $n$ and residue $r$, all $Q(n, s n + r)$ lie on the same line ${, t + λ m_(n,r) ,}$ in $Σ_n$ (same direction $m$, only $λ$ varies).
•	Along $d$ in steps of $n$. For $i in {0,1,2,…}$,
$ Q(n, d + i n) = t + [ r ( n - r ) / ( n ( d + i n ) ) ] · m_(n,r) $: the offset from $t$ decays like $1/(d + i n)$.
•	Symmetry $r ↔ n - r$. Swapping long/short gives $m_(n, n-r) = - m_(n, r)$, i.e. the same line with opposite orientation. Thus all $n$–Quplets of the same order ($r$ or $n-r$) are colinear.

#v(6pt)
== Continuous extension (λ–quplets)

Fix $(n,r)$ and the anchored set $L$. For any real $λ$ with
$ 0 ≤ λ ≤ λ_(n,r) := min{ (n - r)/n, ; r ( 1 - 1/n ) } $,
define the λ–quplet
$ Q_(n,r; λ) := t + λ · m_(n,r) $.
•	For the discrete family $d = s n + r$, we have $λ(d) = r ( n - r ) / ( n d ) in (0, λ_(n,r)]$, hence $ Q_(n,r; λ(d)) = Q(n,d) $.
•	Allowing arbitrary real $λ$ in $[0, λ_*(n,r)]$ yields a continuous one-parameter curve in $Σ_n$: a smooth morph from the uniform tuplet $t$ ($λ=0$) towards increasingly contrasted patterns ($λ$ increasing). For irrational $λ$, the entries of $Q_(n,r; λ)$ are typically irrational — these are “irrational quplets” extending the Euclidean family.

#v(6pt)
== Example ( $n=7$, $r=3$ )

Let $L$ be the three long gaps of anchored $E(7, d)$ for any $d = 7 s + 3$. Then
$m_(7,3)j = 1/3$ for $j in L$ and $m(7,3)_j = - 1/4$ for $j in S$, and
$ λ(d) = 12 / ( 7 d ) $.
•	For $d = 10$: $λ = 12 / 70$; levels $(s+1)/d = 2/10$ on $L$ and $s/d = 1/10$ on $S$.
•	For $d = 17$: $λ = 12 / ( 7 · 17 )$; levels $2/17$ and $1/17$; same order (same $L$), same line.

#v(6pt)
== Takeaways
•	The order ($r$ or $n-r$) fixes a direction $m_(n,r)$ in the simplex.
•	All Quplets in that order — namely $Q(n, d + i n)$ — lie on the straight line $t + λ m_(n,r)$ with $λ ∝ 1 / ( d + i n )$.
•	This gives a clean, linear morphing model: start at the uniform tuplet $t$ and move along $m_(n,r)$ by tuning $λ$ (discretely via $d$ or continuously via real $λ$), covering Euclidean and irrational quplets alike.
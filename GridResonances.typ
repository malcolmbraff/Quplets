#let nonum(eq) = math.equation(block: true, numbering: none, eq)

#let Huplet = math.italic("Huplet")

= Global grid resonances
We fix integers $n,d$ with $2 < n < d$, $n$ odd, and $gcd(n,d)=1$.  
Let $x in RR"/"ℤ$ denote the phase on the unit cycle (time modulo one bar), and let $k ≥ 0$ be a real modulation factor that balances the two components.

We consider the interference function
$ F_k (x) = k cos(2π d x) + cos(2π n x) $<Fk>
and study the values of $k$ for which the $n$ crest points of $F_k$ lie at rational positions modulo $1$.

For convenience we recall the $x$–derivatives used to detect crests:
$ G_k (x) = -2π( k d sin(2π d x) + n sin(2π n x) ) $<G>
$ H_k (x) = -(2π)^2( k d^2 cos(2π d x) + n^2 cos(2π n x) ) $<H>

A crest of $F_k$ is a point $x in ℝ"/"ℤ$ where $G_k (x)=0$ and $H_k (x)<0$.  
Points where both derivatives vanish simultaneously, $G_k (x)=H_k (x)=0$, are fold points; they mark the boundaries of the analytic continuation of crest branches.  
Away from folds, each crest continues uniquely as a real-analytic function $X_i (k)$ in the parameter $k$. 

We seek all parameters $k$ for which *all* crest positions $X_i (k)$ are rational modulo $1$.


== Threshold resonance ($k = n/d$)
To analyse possible rational crest locations, we write a candidate point as  
$x = m/M$ with $M ≥ 1$ and $m in {0, …, M-1}$, and set $θ = 2π m/M$.

Then stationarity $G_k (x)=0$ at $x=m/M$ reads (see @G):
$ k d sin(d θ) + n sin(n θ) = 0. $<G-grid>

At $k = n/d$ this becomes:
#nonum[$ sin(d θ) + sin(n θ) = 0. $]

Using
#nonum[$ sin A + sin B = 2 sin((A+B)/2)\, cos((A-B)/2), $]
we obtain:
#nonum[$
  sin(d θ) + sin(n θ)
  =
  2 sin((d+n) θ/2)\, cos((d-n) θ/2).
$]

Thus the stationary points satisfy:
#nonum[$
  sin((d+n) θ/2) = 0
  "or"
  cos((d-n) θ/2) = 0.
$]

The first family yields:
#nonum[$ θ = 2π m/(n+d), $
#h(8pt)i.e. the $(n+d)$–grid $x = m/(n+d)$ (mod $1$).]  



The second family corresponds to the condition $cos((d-n) θ/2)=0$.  
A direct evaluation of $H_(n/d) (x)$ shows that these stationary points satisfy $H_(n/d) (x)>0$; they are troughs rather than crests and must therefore be discarded.

Among the remaining $(n+d)$ points on the grid $x = m/(n+d)$, a direct evaluation of $H_(n/d) (x)$ shows that exactly $n$ are true crests.  
These $n$ crests coincide with the selection that maximises the evenness of spacings among $n$ accents on $(n+d)$ subdivisions, which is the defining property of the Euclidean rhythm $E(n,n+d)$ as introduced by Toussaint.

== All rational crests imply a single grid
We now treat the general question: for which $k$ are *all* crest positions rational?

=== Lemma (common denominator)
Suppose that for some $k ≥ 0$, all crest positions satisfy $X_i (k)=a_i/b_i$ (mod $1$).  
Let
#nonum[$ M = lcm(b_0, …, b_(n-1)) $.]

Then each crest can be written as $X_i (k) = m_i/M$ (mod $1$), and all crests lie on the grid
#nonum[$ g_M = { m/M : m = 0, …, M-1 } subset ℝ"/"ℤ $.]

If $M$ is chosen minimal with this property, then the index set
#nonum[$ S = { m_i (mod M) } $]
generates the cyclic group $ℤ"/"(M ℤ)$.  

Indeed, if $S$ failed to generate the whole group, its span would lie in a proper subgroup $M' ℤ$ of $ℤ"/"(M ℤ)$, meaning that all crest positions would already lie on the smaller grid $g_(M')$, contradicting the minimality of $M$.
□

Thus the problem reduces to identifying all minimal denominators $M$ for which $G_k (x)=0$ at all crest sites $x=m/M$.


== Allowed denominators by discrete Fourier separation
Let $M$ be minimal as above, write $θ_m = 2π m/M$, and define:
#nonum[$ s_m = sin(2π n m/M), #h(8pt) t_m = sin(2π d m/M). $]

Stationarity gives:
#nonum[$ k d #h(2pt) t_m + n #h(2pt) s_m = 0. $]

On a nonempty subset $S' subset S$ we have $t_m ≠ 0$ and the ratio
$ s_m / t_m = -(k d)/n =: λ $<ratio>
is constant.

Since $S$ generates $ℤ"/"(M ℤ)$ and the zeros of $t_m$ form a proper arithmetic subset, the set $S'$ still contains enough distinct indices to impose linear constraints on the four Fourier modes involved.

The sequences $m ↦ s_m$ and $m ↦ t_m$ lie in the spans:
#nonum[$
  W_n = { cos(2π n m/M), sin(2π n m/M) },
  quad
  W_d = { cos(2π d m/M), sin(2π d m/M) }.
$]

Define $f = s - λ t$. Then $f$ is a linear combination of the four modes
#nonum[
  $cos(2π n m/M)$, #h(8pt)
  $sin(2π n m/M)$, #h(8pt)
  $cos(2π d m/M)$, #h(8pt)
  $sin(2π d m/M)$
]
and satisfies $f(m)=0$ on $S'$.

These four functions are distinct discrete Fourier modes on the cyclic group $ℤ"/"(M ℤ)$; unless one of the congruences
$n ≡ 0$, $d ≡ 0$, or $d ≡ ±n$ (mod $M$) holds, they remain linearly independent on all of $ℤ"/"(M ℤ)$.

=== Lemma (allowed denominators)
With $M$ minimal, one must have:
#nonum[$ M in { n,\, d,\, n+d,\, |d-n| }. $]

*Idea.*  
If none of the congruences
#nonum[$ n ≡ 0,#h(4pt) d ≡ 0,#h(4pt) d ≡ ±n mod M $]
holds, then the four modes above are linearly independent on $ℤ"/"M$. A nonzero combination cannot vanish on a generating set $S$, contradiction.  
□

Combining the common-denominator lemma with the Fourier separation, we are reduced to the four possible denominators $M in { n, d, n+d, |d-n| }$.  
We now identify, for each of these values of $M$, the corresponding parameter $k$.
== Matching denominators with parameters
#v(8pt)

We use the factorization:
$
  k d sin(d θ)
  + n sin(n θ)\
  =\
  (k d + n) sin((d+n) θ/2) cos((d-n) θ/2)
  +
  (k d - n) sin((d-n) θ/2) cos((d+n) θ/2).
 $<stationarity-factorization>

A direct check shows:

- $M = n$ at $k = 0$  
- $M = n+d$ at $k = n/d$  
- $M = d$ as $k → ∞$  
- $M = |d-n|$ at $k = -n/d$ (excluded for $k ≥ 0$)

We obtain the main result.

#v(10pt)
=== Theorem (rational crest parameters)
#v(4pt)

If for some $k ≥ 0$ all crest positions $X_i (k)$ are rational modulo $1$, then
#nonum[$ k in { 0,#h(4pt) n/d,#h(4pt) ∞ }. $]

*Proof.*  
By the common-denominator lemma, all crests lie on a minimal grid $g_M$.  
By the Fourier-separation lemma, $M in {n, d, n+d, |d-n|}$.  
Matching the four cases with the factorized derivative yields the result. □

#v(8pt)

*Remark.*  
For $n=3$, the two interior crest branches are symmetric about $x=1/2$, so any rational alignment in $]0,1[$ occurs simultaneously for both. No new rational crest parameters arise.

#figure(

  caption: [
    Crest trajectories for the interference function
    $F_k (x)$ with $n=5$ and $d=8$. The threshold resonance
    at $k=n/d$ forces all crest branches to pass through
    the rational grid $m/13$.
  ],
)[
  #image("Figures/Fk(x).svg", width: 100%)
]
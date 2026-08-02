== Crests at the threshold $k = n/d$ — explicit characterization

*Claim.* At $k = n/d$, all stationary points solve
$ \sin(d θ) + \sin(n θ) = 0, $
i.e.
$ 2 \sin\big((d+n) θ / 2\big)\,\cos\big((d-n) θ / 2\big) = 0, $
so they lie in exactly two families:

- *Family A:* $ \sin\big((d+n) θ / 2\big) = 0 \;\Rightarrow\; θ = 2π m / (d+n) $ with $m = 0,…,d{+}n{-}1$.
- *Family B:* $ \cos\big((d-n) θ / 2\big) = 0 \;\Rightarrow\; θ = (2ℓ+1) π / (d-n) $ with $ℓ in ℤ$.

Among these stationary points, *crests* are those that also satisfy the inequality
$ k d^2 \cos(d θ) + n^2 \cos(n θ) > 0. $
At $k=n/d$ this reduces to
$ d \cos(d θ) + n \cos(n θ) > 0. $

*Filtering by the crest test.*

- *Family A (grid $(d{+}n)$):* For $θ = 2π m/(d{+}n)$ one has $\cos(n θ) = \cos(d θ)$, hence
  $ (d+n)\cos(d θ) > 0 \;\;\Leftrightarrow\;\; \cos\!\big( 2π d m / (d{+}n) \big) > 0. $
  In $x$–coordinates $(x = θ/(2π))$:
  $ x = m / (d{+}n) \quad\text{with}\quad \cos(2π d x) > 0. $

- *Family B (midpoints of the $(d{-}n)$–grid):* For $θ = (2ℓ{+}1)π/(d{-}n)$ one has $\cos(d θ) = -\cos(n θ)$, hence
  $ d(-\cos n θ) + n \cos n θ = (n{-}d) \cos n θ > 0. $
  Since $d>n$, this is equivalent to
  $ \cos(n θ) < 0. $
  In $x$–coordinates:
  $ x = (2ℓ{+}1) / ( 2(d{-}n) ) \quad\text{with}\quad \cos(2π n x) < 0. $

*Conclusion.* At $k=n/d$ the stationary set is the disjoint union of the two explicit grids above; the crest subset is obtained by the stated cosine sign conditions. In particular, the $n$ crests that continue from $k=0$ land on the $(d{+}n)$–grid (Family A) and form the Euclidean rhythm $E(n, d{+}n)$ after fixing the rotation by the chosen anchor.
= Huplet deformation energy: a companion note

== Purpose

The Huplet is the ordered family of followed crest positions $X_i(k)$, beginning at the regular $n$-grid positions $i/n$ when $k=0$. This note proposes a scalar measure of how far that labeled configuration has deformed from its origin.

== Definition

Choose the continuous lift of each followed crest that begins at $X_i(0)=i/n$, and write
$
delta_i(k) = X_i(k) - i/n.
$
As long as the lift is used continuously, define the labeled deformation energy by
$
E(k) = sum_(i=0)^(n-1) delta_i(k)^2.
$
A normalized version is $E(k)/n$. If one wishes to avoid a chosen lift, replace $delta_i(k)$ by the shortest signed circular displacement from $i/n$ to $X_i(k)$, with a stated tie convention.

This is not physical signal energy. It is a squared-distance measure of deformation of the labeled crest configuration.

== Immediate facts

At the origin, $E(0)=0$. At the endpoint $k=1$, the nearest-grid theorem gives
$
X_i(1) = 1/d floor(d i/n + 1/2),
$
so $E(1)$ is the total squared nearest-grid rounding displacement from the original $n$-grid to the Quplet. Thus the same quantity measures the whole continuous trajectory and has an exact arithmetic endpoint interpretation.

The labels matter: no rotation or relabeling is minimized away. This is deliberate, because each crest is followed from its specific initial position.

== Questions and numerical programme

It is natural to plot $E(k)$ for representative coprime pairs with odd $n$, alongside the individual displacements $delta_i(k)$ and the amplitudes of the crests. Useful questions are:

- Is $E(k)$ monotone for the pairs under study?
- If it is not, where do turning points occur relative to residual crest birth--death events?
- Does $E(k)$ have recognizable structure at the balanced value $k_c=n/(n+d)$ or at rational alignment parameters?
- How does the energy compare across pairs with the same density or the same Quplet gap pattern?

No monotonicity claim should be made without proof or systematic numerical evidence: separate followed crests can move at different rates, and squared displacement is not automatically monotone.

== Possible use in the paper

Keep this measure outside the main theorem spine initially. A brief future-work sentence could describe $E(k)$ as a labeled deformation statistic for the continuous Huplet, with $E(1)$ determined exactly by nearest-grid rounding. A figure should show both $E(k)$ and individual crest trajectories, so that a collective increase is not confused with monotone motion of every crest.

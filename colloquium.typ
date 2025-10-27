#let nonum(eq) = math.equation(block: true, numbering: none, eq)

#let Huplet = math.italic("Huplet")

= Math paper presentation – _Malcolm Braff_
#line(length: 100%)

== Context
A central premise of my work is that rhythmic phenomena are fundamentally *harmonic*: I study tempering, timbre, and even chord-like structures within the rhythmic domain.

Additionally, one of the concepts I have explored in my rhythm research is what I call the *potential energy* of a given pattern or _swung_ subdivisions system. By potential energy I mean how ‘uneven’ a pattern still is: the farther its hits are from perfect spacing in a bar, the more potential energy it carries. From that, we can also talk about the work it would take to morph the pattern smoothly into an even grid and vice versa.

Patterns whose accents are well distributed around the cycle minimize this tension (potential energy). Such patterns are easier to morph into perfectly even spacing (a straight tuplet). For the optimal placement of $n$ beats over $d$ steps, Toussaint’s *Euclidean rhythms*#footnote[Godfried T. Toussaint, “The Euclidean algorithm generates traditional musical rhythms” (2005).] are the first thing that comes to mind.

Yet, Euclidean rhythms are generated *algorithmically*—a repeatable set of discrete instructions, like a recipe—rather than *analytically* as the outcome of a natural law or variational principle. In that sense, they don’t arise from an intrinsic physical or harmonic process; the evenness is enforced by the procedure itself.

Furthermore, Björklund’s algorithm#footnote[E. Bjorklund. "The theory of rep-rate pattern generation in the SNS timing system." (2003).], which Toussaint used to generate Euclidean rhythms, does not always produce the best rotation of a Euclidean pattern when we look at it through the lens of potential energy—or *entropy*, as will be introduced later in the paper. In other words, while the algorithm finds an even pattern, it does not necessarily choose the rotation that minimizes the system’s energy or maximizes its entropy.

In this paper I introduce *huplets* and *quplets*, rhythmic spacing patterns obtained by detecting peaks in the sum of two cosine waves weighted by a modulation parameter $k$. As $k$ varies, peak locations trace smooth trajectories. At three special values of $k$, the peaks align on rational grids and can realize Euclidean rhythms. In the limit, the construction yields a Euclidean rhythm with a uniquely determined, ‘best’ rotation selected naturally by the dynamics.


#line()
== Paper sections
=== 1. Introduction
We model rhythm with two cosine waves of different counts around the bar. By changing a modulation parameter $k$, we watch where peaks land and how they move. We call the spacing vector between peaks the Huplet, and its limit as $k-> infinity$ the Quplet. We also point out three special $k$ values where all peaks line up on one rational grid, and we preview how a single rule picks the rotation.

=== 2. Global grid resonances
All peaks fall on one clean grid only in three cases: at the start, at a middle “threshold,” and at the end. These match the $n$-grid, the $(n+d)$-grid, and the $d$-grid. The middle and end give Euclidean rhythms, linking our smooth wave picture to the usual idea of “evenly spread accents.”

=== 3. Crest trajectories (how peaks move)
Each peak can be followed as $k$ changes; it moves smoothly except at fold points where the curve turns vertical. We give a simple rule to advance each peak, explain how to pass folds, and note a special “pitchfork” split when $n$ and $d$ have opposite parity. As $k$ grows, every peak settles onto the $d$-grid.

=== 4. Huplet–Quplet and Euclidean reduction
The Huplet is the list of spacings between consecutive peaks, read from a fixed starting point (phase 0 of the rhythmic cycle). Letting $k -> infinity$ gives the Quplet. We prove two handy facts: (1) at the threshold, the Huplet equals the Quplet of the larger pair $(n,n+d)$; (2) you can reach any Quplet by stepping through smaller pairs.

=== 5. Picking the rotation (distance and entropy)
Among all rotations of a Euclidean rhythm on the $d$-grid, the dynamics pick the one closest to the regular $n$-grid (in circular distance). This also looks like an optimal-transport match (shortest total move), or—in a soft view—the rotation with the highest alignment “entropy.” Once the anchor (beginning of the cycle) is fixed, the choice is unique.

=== 6. Order, straight lines, and continuous families
Let $r=d mod n$ (the remainder of the division $d:n$). This residue defines the order. For fixed $n$ and $r$, all Quplets $Q(n,s n+r)$ lie on the same straight line inside the simplex (the space of spacing vectors summing to $1$). A single scale value $lambda$ places you on that line, and letting $lambda$ vary continuously fills a whole family between rational cases.

=== 7. Twin Quplets (mirror pairs)
Each Quplet has a twin with the same order that swaps the two spacing values (shorts ↔ longs), up to the chosen starting point. We list simple properties, show examples, and explain the symmetry picture they form in the geometry.

=== 8. Projection viewpoint
You can also get Quplets by starting from a higher-dimensional “even” object and compressing it with a block-sum matrix tied to the anchored $d$-grid. For example $Q(5,7)$ is a 5-dimensional vector that can be obtained through the projection of a 7-_tuplet_ (vector $t_7$, living in the 7-dimension) onto the 5-dimension. This gives a clean geometric reason for the straight-line structure and connects back to the threshold case.

=== 9. Harmonic morphing and affine structure
Quplets with the same order are linked by simple linear moves (affine maps) inside the simplex. This provides a practical way to morph one pattern into another smoothly, keeps the order unchanged, and matches a musical idea of rhythm-harmonic motion in time.

=== 10. Conclusion and outlook
We tie together interference (two waves), Euclidean rhythms, and simplex geometry into one story: quplets. We summarize the key identities, note current limits (like handling complex folds), and point to next steps: sharper regularity results, better numerical paths, and possible extensions to irrational or higher-dimensional cases.
#v(25pt)
_Disclaimer_: this paper is still in draft form. Many parts need further review, correction, and refinement — including consistency of notation, terminology, and the search for more elegant proofs. Please do not share or distribute this document, and keep it confidential.
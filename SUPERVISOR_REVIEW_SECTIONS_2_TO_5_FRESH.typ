#let Huplet = math.italic("Huplet")

= Fresh supervisor review — Sections 2–5

#emph[Scope: current live Typst source only. This review was conducted from scratch. It covers Sections 2–5 and excludes the abstract, introduction, conclusion, PDFs, archived versions, and earlier supervisor reports. No manuscript source was edited during the review.]

== Overall verdict

The paper's central mathematical chain is now viable. The short nearest-grid corridor argument gives a convincing global continuation result and an exact nearest-grid endpoint formula. The Euclidean endpoint theorem can therefore rest on a sound dynamical foundation.

Two immediate problems remain. First, the source following the main theorem in Section 4 is malformed even though the project compiles. Second, the corridor theorem proves a stronger threshold result than the manuscript currently recognizes: the threshold-extension statement and the identification of the anchored threshold crests are theorems, not conjectures.

== Priority P0 — immediate corrections

=== Malformed text following the main theorem

Location: #raw("04-huplet-trajectory-and-euclidean-endpoints.typ"), beginning near source line 429.

The proof environment is followed by joined words such as “distinguishednearest” and “does notassert”. An active sentence ends incompletely because a block comment begins in its middle. The file compiles, but the passage is not publication-ready.

Recommended correction: close the proof cleanly, add a complete limitations paragraph, and place the superseded conjecture entirely inside a separate block comment. A suitable active paragraph is:

#quote[
  The theorem determines both the Euclidean cyclic class and the distinguished nearest-grid representative selected by the anchored dynamics. It does not assert that the anchored crests are the $n$ highest maxima for every intermediate $k$, and it implies no entropy or energy-uniqueness statement by itself.
]

=== The threshold identification is already provable

Locations:

- #raw("03-balanced-threshold-configuration.typ"), beginning near source line 781.
- #raw("04-huplet-trajectory-and-euclidean-endpoints.typ"), beginning near source line 451.

The manuscript currently treats the identification of the anchored branches with the highest threshold crests, and the threshold-extension identity, as conjectural. Both follow from the existing short-corridor proof.

Let

$
 q_i = floor((d i) / n + 1 / 2),
 quad
 gamma_i = (i + q_i) / (n + d).
$

Then

$
 gamma_i - i / n
 =
 d / (n + d) (q_i / d - i / n).
$

Therefore $gamma_i$ lies strictly inside the same short corridor joining the anchor $i/n$ to its selected endpoint $q_i/d$. Moreover,

$
 (n+d) 2 pi gamma_i in 2 pi ZZ,
$

so, at $theta=2 pi gamma_i$,

$
 sin(n theta) = -sin(d theta).
$

Hence $gamma_i$ is stationary at $k_c=n/(n+d)$. The uniqueness already proved inside each corridor gives

$
 X_i (k_c)
 =
 gamma_i
 =
 1 / (n+d) floor(((n+d)i) / n + 1 / 2).
$

Consequences:

- The anchored crests at $k_c$ are exactly the nearest points of the $(n+d)$-grid to the original $n$-grid.
- The result already proved in Section 3 then identifies them as the $n$ highest threshold crests.
- The exact identity
  $
   Huplet(n,d,k_c)=Q(n,n+d)
  $
  is a theorem under the standing hypotheses.
- Amplitude selection may remain conjectural for general intermediate $k$, but not at $k=k_c$.

Recommended correction: replace the “Relation to the anchored branches” conditional discussion and the “Threshold–extension conjecture” with a numbered corollary of the corridor proposition.

== Priority P1 — mathematical and formal precision

=== State the external Euclidean criterion precisely

Location: #raw("04-huplet-trajectory-and-euclidean-endpoints.typ"), beginning near source line 326.

The statement attributed to Demaine et al. should specify that the onsets $r_0,dots,r_(n-1)$ are listed in clockwise cyclic order, that onset indices are taken modulo $n$, and that distances are measured in grid pulses.

To avoid confusion between the paper's own Theorem 4.1 and Theorem 4.1 of the cited article, introduce it descriptively as the *Demaine distance criterion* and place “Theorem 4.1 of the cited article” in the citation or footnote. It should not receive a competing local theorem number.

=== Correct an ambiguous multiplication

Location: #raw("04-huplet-trajectory-and-euclidean-endpoints.typ"), near source line 417.

Replace the source

#raw("x=id/n+1/2")

with

#raw("x=(i d)/n+1/2")

so the intended product $i d$ cannot be parsed or read as a single identifier.

=== Move the continuation theorem before dependent material

Location: #raw("02-crest-position-and-amplitude-trajectories.typ"), beginning near source line 797.

The cotangent lemma, global continuation proposition, and nearest-grid endpoint corollary occur after several discussions that depend on or forward-reference them. They should follow immediately after the anchored-branch definition. This would make the logical order:

- local anchored branches;
- corridor lemma and global continuation;
- exact endpoint formula;
- optional analytic consequences.

=== Resolve the status of the threshold example

Location: #raw("04-huplet-trajectory-and-euclidean-endpoints.typ"), beginning near source line 591.

The prose calls the threshold row conditional, but the following table presents it without qualification. Once the threshold corollary above is inserted, the table becomes unconditional and should cite that result.

=== Correct the formal-result description

Location: #raw("02-crest-position-and-amplitude-trajectories.typ"), near source line 668.

The text says “the following proposition”, but the following item is an unnumbered remark. Either call it an observation or promote it to a numbered proposition if it is retained.

== Priority P2 — scope and structure

=== Section 2

*Keep:*

- The two-cosine signal and stationary-point definitions.
- Anchored crest branches.
- The corridor lemma and global anchored-continuation proposition.
- The nearest-grid endpoint corollary.
- At most one crest-position trajectory figure.

*Condense or move to an analytic-trajectory follow-up:*

- The full ODE discussion.
- Phase and phase-amplitude parametrizations.
- The fixed-parameter Chebyshev characterization.
- Amplitude convexity and critical-phase grids.
- Lifted phase-amplitude trajectories.
- The amplitude-selection conjecture beyond a short final remark.

These results are interesting, but they are not needed to prove the Euclidean endpoint theorem.

=== Section 3

The full stationary-family analysis is largely independent of the endpoint theorem. Retain a short threshold corollary if the threshold result is part of the paper's contribution. Move the detailed complementary-family analysis, amplitude spectrum, and extended threshold discussion to a threshold or analytic-trajectories follow-up.

The strongest concise result worth retaining is

$
 X_i (k_c)
 =
 1 / (n+d) floor(((n+d)i) / n + 1 / 2),
$

together with the conclusions that these are the $n$ highest threshold crests and that

$
 Huplet(n,d,k_c)=Q(n,n+d).
$

=== Section 4

*Keep:*

- The Huplet and Quplet definitions.
- The Euclidean cyclic-class definition.
- The Demaine distance criterion.
- The Euclidean endpoint theorem.
- One exact example.

*Condense or move:*

- Since continuation preserves order, the separate notation $Y_j$ can be simplified to $X_j$ after choosing the established cyclic lifts.
- The piecewise-affine cycle deformation belongs more naturally in a geometric or vector-space follow-up.
- The large Huplet-component trajectory figure is useful for trajectory research but is not needed for the endpoint proof.
- Replace the threshold conjecture material with the proved threshold corollary.

=== Section 5

The nearest-grid definition and universal minimal-distortion proposition give a useful characterization of the distinguished Euclidean rotation and may be retained in condensed form.

The complete displacement-residue analysis is mathematically sound but can be shortened to one arithmetic corollary. The Gibbs model, entropy, free energy, and zero-temperature discussion should move to a separate selection or statistical interpretation paper. Those constructions depend on an independently chosen finite competitor family and are not consequences of the crest dynamics alone.

== Recommended lean Sections 2–5 outline

=== Section 2 — Anchored crest continuation

- Define $F_k$, $G_k$, and $H_k$.
- Define the anchored branches.
- Prove cotangent positivity.
- Prove global anchored continuation in the short corridors.
- Deduce the exact nearest-grid endpoints.

=== Section 3 — Huplets, Quplets, and Euclidean endpoints

- Pass from ordered crest positions to circular gaps.
- Define $Huplet(n,d,k)$ and $Q(n,d)$.
- Define the Euclidean class $E(n,d)$.
- State the Demaine distance criterion.
- Prove the Euclidean endpoint theorem.
- Give the exact $(5,7)$ example.

=== Section 4 — The canonical representative

- Define the nearest-grid representative.
- Prove universal minimal distortion.
- Optionally state the centered-residue symmetry as a concise corollary.
- Explain precisely what additional labeling and anchoring data distinguish a Quplet from an ordinary Euclidean necklace.

=== Section 5 — The balanced threshold corollary

- Evaluate each corridor at $k_c=n/(n+d)$.
- Prove the exact $(n+d)$-grid formula.
- Identify the anchored sites with the $n$ highest threshold crests.
- Deduce $Huplet(n,d,k_c)=Q(n,n+d)$.
- Retain one threshold example or figure if desired.

== Final assessment

The main continuation-to-Euclidean theorem chain is strong enough for the present paper. The immediate editorial repair in Section 4 is essential. The most valuable mathematical revision is to promote the threshold identification from conjecture to theorem using the already-proved corridor geometry. After that, substantial condensation would make the argument shorter, clearer, and more persuasive.

#emph[Build state at the time of review: the current main manuscript compiled with no reported issues. This review made no manuscript edits.]

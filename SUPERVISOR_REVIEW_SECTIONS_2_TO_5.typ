= Supervisor Review — Sections 2 to 5

== Scope

This review was conducted from the *current live Typst source only*, covering *Sections 2–5*. The Abstract, Introduction, and Conclusion were excluded. No PDFs, archived versions, earlier uploads, or external manuscript versions were used. No manuscript source was edited during this review.

== Overall Verdict

The narrow mathematical spine is viable:

#quote(block: true)[two-cosine signal → short-corridor anchored continuation → nearest-grid endpoint → all-scale cyclic balance → selected Euclidean necklace.]

The proposition *Global anchored continuation* is essentially sound. Its corridor parametrization, cotangent inequality, monotonicity, nondegeneracy, disjointness, and endpoint formula check out. The main Euclidean theorem’s all-scale floor-difference calculation is also sound.

However, the paper is not ready in its current form because:

+ the final bridge from all-scale balance to the Euclidean necklace is still only a citation placeholder;
+ the main theorem source is malformed; and
+ large active sections are outside the narrow spine and contain stale conjectural wording and two genuine proof defects.

== Priority Findings

=== P0 — The main theorem is not yet closed

*Location:* Section 4, “Euclidean endpoint theorem,” lines 325–327.

The proof establishes

$ Delta_ell (i) in {floor((ell d) / n), ceil((ell d) / n)} $

for every cyclic block length. But the conclusion $Q(n,d) in E(n,d)$ relies on the unresolved review-note placeholder for Demaine et al.

*Impact:* The paper’s principal theorem depends on an unstated external theorem.

*Recommended correction:* Either insert the exact citation and state the characterization precisely—namely, that all-scale cyclic balance/maximal evenness identifies the Euclidean necklace up to rotation—or add a self-contained lemma proving that the intercept-$1/2$ mechanical word is cyclically conjugate to the standard intercept-$0$ word. Do not leave both routes implicit.

=== P0 — Malformed theorem and proof source

*Location:* Section 4, lines 326–327.

The review note begins with a literal slash. The theorem, proof, and following prose are collapsed into one physical line. Words are joined, including “distinguishednearest” and “does notassert.” A block comment starts after “nor does it imply,” leaving an incomplete active sentence.

*Impact:* The formal structure is unreadable and may render stray text or an incomplete theorem aftermath.

*Recommended correction:* Put the review note, theorem, label, proof, and aftermath in separate blocks and lines. Finish the limitation sentence outside the comment.

=== P1 — Stale conjectural statements contradict proved continuation

*Locations:*

- Section 2, phase parametrization, lines 299–305;
- Section 2, endpoint discussion, lines 413–423;
- Section 4, standing assumptions, lines 10–12;
- Section 4, Quplet definition, lines 211–243;
- Section 5, introduction, lines 10–15;
- Section 5, lines 34–61;
- Section 5, interpretation, lines 783–784.

These passages still say that global continuation or endpoint selection is conjectural or depends on a conjecture.

*Impact:* The paper simultaneously proves and assumes or conjectures the same result.

*Recommended correction:* Replace every such statement by references to the Global anchored continuation proposition and the Nearest-grid endpoint selection corollary. Remove “conjecturally selected.”

=== P1 — False inference in the threshold strictness proof

*Location:* Section 3, “Threshold amplitude turning,” lines 296–314.

From $sin(d theta)=0$, $theta=(2 pi m) / (n+d)$, and coprimality, the proof obtains $(n+d) divides 2m$, not automatically $m=0$ modulo $n+d$.

If $n+d$ is even, $m=(n+d) / 2$ is another possibility.

*Impact:* The proof contains an invalid intermediate inference.

*Recommended correction if retained:* Split by parity. The extra point is $theta=pi$; when it occurs, $d$ is odd and $cos(d theta)=-1$, so it is a resonant trough rather than a crest. Only then conclude that the only non-strict resonant crest is $x=0$.

=== P1 — The Section 3 Euclidean highest-threshold result is underproved

*Location:* Section 3, proposition and proof, lines 607–756.

The proof obtains nearest-rounded sites and adjacent gaps of sizes $floor(N / n)$ and $ceil(N / n)$ with the correct multiplicities. It then asserts that they are “distributed as evenly as possible” and Euclidean.

Two adjacent gap sizes plus their counts do *not* determine the Euclidean cyclic order.

*Impact:* The proposition’s Euclidean conclusion does not follow from the proof given.

*Recommended correction if retained:* Add the all-scale block-sum proof or a mechanical-word cyclic-conjugacy theorem. For the narrow paper, the better action is to comment out this threshold theorem and move it to a follow-up.

=== P1 — Unsupported intercept-to-rotation assertion

*Location:* Section 5, “Euclidean structure of the nearest-grid configuration,” lines 248–265.

The statement that changing the constant offset changes only the starting point, not the cyclic class, is asserted rather than proved.

*Impact:* A second route to the Euclidean conclusion contains a missing lemma.

*Recommended correction if retained:* Cite or prove the rational mechanical-word intercept lemma. Otherwise cite the repaired main theorem and remove this parallel route.

=== P1 — “Four equivalent static properties” is false as written

*Location:* Section 5, “Interpretation,” lines 769–781.

The centered-residue multiset does not by itself uniquely characterize the labeled configuration. Zero-temperature uniqueness depends on the chosen competitor family and loss. These are consequences or representations, not four unqualified equivalent properties.

*Impact:* The concluding synthesis overstates the logical equivalence of distinct properties.

*Recommended correction:* Change “equivalent” to “consequences” or “descriptions,” add the required quantifiers, or move the entire discussion to a follow-up paper.

=== P2 — Missing hypotheses and definitions in the distortion section

*Location:* Section 5, lines 439–516.

The source should clarify whether the competing configuration $B$ must be injective or order-preserving. “Increasing” should be defined as nondecreasing. The domain of $phi$ should contain zero, since circular distance can vanish; for example, use $phi: [0, 1 / 2] -> RR$.

*Impact:* The theorem is basically correct as a termwise minimization result, but its admissible class and loss function are underspecified.

*Recommended correction:* State the competitor class and the monotonicity/domain assumptions explicitly.

=== P2 — Notation, reference, and material prose defects

- *Section 2, proposition line 835:* $RR / ZZ$ is written inconsistently with the notation used elsewhere.
- *Section 2, lines 988–990:* The source writes $G_k (theta)$ and $H_k (theta)$ although $G$ and $H$ were defined in the variable $x$. Use $G_k (x), H_k (x)$ or define phase versions.
- *Section 2, line 961:* “Endpoint expansions give analytic one-sided extensions” is too compressed. Display that $k_i '(0)>0$ and $k_i '(L_i)>0$, then invoke the analytic inverse-function theorem.
- *Section 4, figure caption lines 132–138:* The caption uses $Delta x_j (k)$ instead of the defined $D_j (k)$.
- *Section 4, example lines 454–467:* “The five grid points …” is a sentence fragment.
- *Section 4, lines 510–519:* “Numerical continuation may select … for example” is obsolete. The theorem proves the exact endpoint gaps $(1,2,1,2,1) / 7$.
- Active labels and references in Sections 2–5 have no duplicate labels or unresolved targets.

== Scope Classification

=== Section 2 — Crest Position and Amplitude Trajectories

==== Anchored crest branches, lines 5–141 — KEEP, CONDENSE

Keep $F_k$, $G_k$, $H_k$, the crest definition, anchored branches, and the local implicit-function theorem. State the coprime/odd standing regime before the global result.

==== Non-collision, lines 143–170 — CONDENSE

Fold this into the corridor proposition’s disjoint-corridor conclusion. A separate heading is redundant.

==== ODE and evolution law, lines 172–203 — COMMENT OUT FOR FOLLOW-UP

This material is not used in the continuation proof. It belongs in an analytic trajectory paper.

==== Crest-trajectory figure, lines 205–222 — KEEP

This is the best single motivating figure. Remove the emphasis on the balanced parameter $k_c$ if the threshold section is removed.

==== Phase parametrization, lines 224–343 — COMMENT OUT FOR FOLLOW-UP

The parametrization is exact but unnecessary for the corridor proof. Move it to an analytic trajectory paper.

==== Fixed-parameter algebraic form, lines 344–393 — COMMENT OUT FOR FOLLOW-UP

Move this to an arithmetic or algebraic trajectory paper.

==== Behaviour at $k=1$, lines 395–423 — CONDENSE

Keep one short paragraph immediately before the corridor proposition. Remove stale conjectural wording.

==== Amplitude trajectory, convexity, and critical grids, lines 425–749 — COMMENT OUT FOR FOLLOW-UP

None of this material is needed for endpoint Euclidean selection. It belongs in an analytic or amplitude paper.

==== Amplitude figure, lines 652–665 — COMMENT OUT

The figure supports the amplitude follow-up, not the present theorem.

==== Lifted crest trajectories, lines 750–795 — COMMENT OUT FOR FOLLOW-UP

The lifted trajectory $Gamma_i$ is useful packaging but no theorem in the narrow paper depends on it.

==== Cotangent lemma, continuation proposition, and endpoint corollary, lines 797–986 — KEEP

This is the core supporting proof chain. Add the endpoint inverse-function detail noted above.

==== Amplitude-selection conjecture, lines 1044–1061 — COMMENT OUT FOR FOLLOW-UP

The main endpoint theorem does not require the conjecture. Move it to an amplitude or highest-maxima paper.

=== Section 3 — Balanced Threshold Configuration

*Recommendation: COMMENT OUT THE ENTIRE ACTIVE SECTION FOR A FOLLOW-UP PAPER.*

This includes:

- slope-balanced parameter, lines 15–145;
- resonant grid, lines 146–227;
- joint criticality and threshold turning, lines 228–315;
- complementary stationary family, lines 323–410;
- threshold amplitude separation and spectrum, lines 411–603;
- highest-threshold proposition, lines 605–756;
- threshold figure, line 758;
- relation to anchored branches, lines 761–795;
- transition, lines 796–817.

This section is independent of the endpoint corridor proof and serves a separate highest-maxima and amplitude theory. It also contains the two proof defects identified above. Commenting out its include would leave the narrow narrative coherent.

=== Section 4 — Huplet Trajectory and Euclidean Endpoints

==== Circular ordering and Huplet component trajectory, lines 14–130 — COMMENT OUT OR REPLACE

Replace the full functions $Y_j$, $D_j$, and $"Huplet"(n,d,k)$ by a short endpoint-gap definition. The full trajectory is not needed.

==== Huplet trajectory figure, lines 132–138 — COMMENT OUT FOR FOLLOW-UP

Move it to a vector-space or trajectory paper.

==== Induced deformation $Phi_k$, lines 142–209 — COMMENT OUT FOR FOLLOW-UP

This is vector-space or geometric deformation material and does not support the main endpoint theorem.

==== Quantized endpoint and Quplet, lines 211–243 — KEEP, REWRITE UNCONDITIONALLY

Define $Q(n,d)$ directly from the proven endpoint indices and cyclic gaps.

==== Euclidean endpoint classes, lines 245–322 — KEEP, CONDENSE

Define the standard mechanical representative and its necklace. Explicitly state the all-scale characterization or citation used by the theorem.

==== Euclidean endpoint theorem, lines 325–327 — KEEP AS THE MAIN THEOREM

Repair its formatting and close the citation or self-contained proof bridge.

==== Threshold Huplet, threshold-extension conjecture, and partial reduction, lines 349–428 — COMMENT OUT FOR FOLLOW-UP

These belong with the threshold and combinatorial classification material.

==== Example $(n,d)=(5,7)$, lines 430–543 — CONDENSE

Retain only the initial anchors, the proven endpoint sites $0, 1 / 7, 3 / 7, 4 / 7, 6 / 7$, and the exact gap vector $(1,2,1,2,1) / 7$. Remove the threshold row and conjectural wording.

=== Section 5 — Quplets as Constrained Euclidean Rhythms

==== Constrained versus unconstrained structure, lines 19–61 — KEEP, CONDENSE

Reduce this to the exact selected-rotation corollary.

==== Circular distance, lines 63–75 — COMMENT OUT FOR FOLLOW-UP

This is needed only by the minimal-distortion paper.

==== Nearest-grid configuration and canonical spacing vector, lines 76–182 — KEEP BUT MERGE

Merge these definitions into the static setup before the main theorem in Section 4. Avoid duplicating $m_i$ and $a_i$.

==== Parallel Euclidean proof, lines 183–269 — COMMENT OUT OR REDUCE

Reduce it to one reference to the repaired main theorem, or move the proof to a mechanical-word follow-up.

==== Signed displacement spectrum and barycentric balance, lines 270–438 — COMMENT OUT FOR FOLLOW-UP

Move this to an arithmetic-functions paper. This “balance” is not the all-scale Euclidean balance and risks terminological confusion.

==== Minimal-distortion proposition, lines 439–532 — COMMENT OUT FOR FOLLOW-UP

Move it to an optimization or geometry paper.

==== Canonical Quplet realization corollary, lines 534–536 — KEEP, REFORMAT

This states the selected representative explicitly and is the narrow paper’s final result. Merge it with the aftermath of the main theorem.

==== Entropy, zero-temperature result, interpretation, and transition, lines 603–809 — COMMENT OUT FOR FOLLOW-UP

These sections do not support the Euclidean endpoint theorem. The transition also points toward currently disabled later sections.

== Explicit Topic Relevance

- *Lifted crest trajectories:* not necessary; move to analytic trajectory follow-up.
- *ODE for $X_i$:* not necessary; move to analytic trajectory follow-up.
- *Phase parametrization:* not necessary; move to analytic trajectory follow-up.
- *Fixed-$k$ algebraic characterization:* not necessary; move to arithmetic/algebraic follow-up.
- *Amplitude functions and convexity:* not necessary; move to amplitude follow-up.
- *Threshold configuration and highest crests:* not necessary; move to threshold/highest-maxima follow-up.
- *Huplet trajectories:* not necessary; keep only endpoint gap notation.
- *Spacing simplex and induced cycle deformation:* not necessary; move to vector-space geometry follow-up.
- *Minimal-distortion characterization:* not necessary; move to optimization/geometry follow-up.
- *Entropy and zero-temperature selection:* not necessary; move to statistical/entropy follow-up.

== Proposed Lean Sections 2–5 Outline

=== Section 2 — Two-Cosine Crests and Anchored Continuation

+ Define $F_k$, $G_k$, $H_k$, crests, and anchored branches.
+ State nearest-grid targets $m_i=floor((d i) / n + 1 / 2)$.
+ State and prove the cotangent lemma.
+ State and prove global anchored continuation by disjoint short corridors.
+ State the nearest-grid endpoint corollary.
+ Retain one trajectory figure and explicitly note that unanchored extrema may bifurcate elsewhere.

=== Section 3 — Canonical Nearest-Grid Configuration

+ Define ordered sites $m_i / d$ and the cyclic lift $m_(i+n)=m_i+d$.
+ Define the endpoint gap word and $Q(n,d)$.
+ Prove all-scale distances
   $ m_(i+ell)-m_i in {floor((ell d) / n), ceil((ell d) / n)} $.
+ State and cite the precise maximally-even/Euclidean-necklace characterization.

=== Section 4 — Selected Euclidean Rhythm Theorem

+ State the main theorem combining anchored continuation with all-scale balance.
+ Give the explicit selected gap vector and canonical rotation.
+ State limitations: this is not a highest-amplitude theorem; additional stationary pairs may appear; no energy or entropy uniqueness is claimed.

=== Section 5 — Example and Outlook

+ Give the exact $(5,7)$ endpoint sites and gap vector.
+ List follow-up directions:
   - analytic $X_i$, $A_i$, and $Gamma_i$ trajectories;
   - threshold and highest crests;
   - Huplet and simplex geometry;
   - arithmetic displacement classes;
   - minimal distortion and entropy.

== Final Recommendation

The current paper should be reduced by roughly two-thirds across Sections 2–5. The core contribution is already strong enough for a focused paper once the Euclidean characterization bridge is made rigorous, stale conjectural language is removed, and the principal theorem is reformatted cleanly.

The trajectory, threshold, Huplet geometry, arithmetic displacement, minimal-distortion, and entropy material should be preserved by commenting it out and developed as follow-up papers rather than retained in the present manuscript.

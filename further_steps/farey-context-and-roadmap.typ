// Farey context and insertion roadmap
// Companion note only; not included by main.typ.

#set page(margin: (x: 2.6cm, y: 2.6cm))
#set par(justify: true, leading: 0.7em)
#set text(size: 10.5pt)

#align(center)[
  #text(size: 15pt)[*Farey context for Quplets: a brief roadmap*]
  #v(0.3em)
  #text(size: 11pt)[Companion note to _Crest continuation and canonical Euclidean-rhythm selection_]
]

#v(1em)

== Purpose

This note proposes a short contextual reference, not a new theorem. At the slope-balanced value $k_c = n/(n+d)$, the selected $n$ crests occupy an $(n+d)$-grid. Their density is the reduced rational number $n/(n+d)$ because $gcd(n,d)=1$.

The resulting balanced two-gap rhythm belongs to the familiar rational family described through mechanical words, Christoffel words, and Euclidean rhythms. Farey sequences provide one classical way to organize such reduced rational densities.

The main paper proves something different: this particular balanced grid configuration is selected by continuous crest continuation. Farey language should therefore be background for the combinatorial endpoint, not an explanation or proof of the analytic selection mechanism.

== Suggested short footnote

After the first introduction of the Quplet or of the density $n/(n+d)$, add a brief footnote such as:

#quote[
The reduced density $n/(n+d)$ places this balanced endpoint pattern within the usual Farey and rational-mechanical-word organization of cyclic binary rhythms. The present result concerns a different question: why this member is selected by continuous crest continuation.
]

== Where to place it

- Put the footnote in the introduction, immediately after the paragraph that identifies the critical configuration with the Quplet on the $(n+d)$-grid.
- Keep it to one footnote or one sentence. Do not add a Farey construction to the theorem statements.
- Do not claim that Farey mediants or the Stern--Brocot tree govern the deformation in $k$; that would require additional results.
- Leave the definition of $k_c=n/(n+d)$ unchanged. Its role in the paper is slope balance, not a Farey-neighbor relation.

== Suggested bibliography references

The main suggested reference is:

M. Lothaire, _Algebraic Combinatorics on Words_, Cambridge University Press, 2002. See the discussion of rational mechanical and Christoffel words.

For a general reference on Farey sequences, an optional second source is:

G. H. Hardy and E. M. Wright, _An Introduction to the Theory of Numbers_, Oxford University Press, revised editions, chapter on Farey series.

Before adding either source to the project bibliography, verify the desired edition and the project citation-key style. The footnote should remain descriptive rather than carry a technical claim that depends on either reference.

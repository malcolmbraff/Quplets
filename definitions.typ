#import "@preview/lemmify:0.1.8": *
#set heading(numbering: "1.")
#let article-thm-numbering(fig) = {
    if fig.numbering != none {
          let section = counter(heading).at(fig.location()).first()
              numbering("1.1", section, ..fig.counter.at(fig.location()))
                }
                }

#let (
  theorem,
  lemma,
  corollary,
  remark,
  proposition,
  example,
  proof,
  rules: thm-rules,
) = default-theorems(
  "article-theorems",
  lang: "en",
  thm-numbering: article-thm-numbering,
  ref-styling: thm-ref-style-simple,
  max-reset-level: 1,
)

// Lemmify 0.1.8 writing interfaces:
// - theorem, lemma, proposition, corollary, remark, and example share the
//   "article-theorems" counter and reset at top-level numbered sections.
// - Attach <labels> after an item; @label and #ref(<label>) render its kind
//   and section-aware number. Use @label[custom text] for custom supplements.
// - Pass numbering: none for an unnumbered item, e.g. #remark(numbering: none)[...]
// - proof uses Lemmify's proof styling; use-proof-numbering is the helper for
//   proof-like items that reuse the previous theorem count.
// - new-theorems creates extra subgroups; a different group id creates an
//   independent counter. thm-selector(group, subgroup: ...) supports show rules.
// - Manual reset APIs: thm-reset-counter, thm-reset-counter-heading-at, and
//   thm-reset-counter-heading. max-reset-level controls automatic heading resets.
// - article-thm-numbering reads the top-level heading counter directly, yielding
//   Section.item numbers without requiring every intervening heading to be numbered.
//   Built-in thm-numbering-heading and new-theorems(ref-numbering: ...) remain available.

#let nonum(eq) = math.equation(
  block: true,
  numbering: none,
  eq,
)

#let Huplet = math.italic("Huplet")
#let Quplet = math.italic("Quplet")
#let CanonicalQuplet = math.sans("Q")
#let ContinuousQuplet = math.sans("Q")

#let show-review-notes = true

#let review-note(body, title: [Review note]) = if show-review-notes {
  block(
    width: 100%,
    inset: 8pt,
    fill: rgb("#fff4cc"),
    stroke: 0.8pt + rgb("#d59b00"),
    radius: 3pt,
    [
      #text(
        weight: "bold",
        fill: rgb("#7a4b00"),
      )[#title]       #body
    ],
  )
}

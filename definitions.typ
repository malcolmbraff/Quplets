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
      )[#title] \
      #body
    ],
  )
}

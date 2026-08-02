#import "@preview/bamdone-ieeeconf:0.1.1": *

#show: ieee.with(
  title: [Introducing Quplets:\
 from crest trajectories to Euclidean rhythms],
  abstract: [
    This electronic document is a live template. The various components of your paper [title, text, heads, etc.] are already defined on the style sheet, as illustrated by the portions given in this document.
  ],
authors: (
    (
      given: "Malcolm",
      surname: "Braff",
      email: [malcolm.braff],
      affiliation: 1
    ),
    (
      given: "Bernard D.",
      surname: "Researcher",
      email: [b.d.researcher],
      affiliation: 2
    )
  ),
  affiliations: (
    (
      name: [Faculty of Electrical Engineering, Mathematics and Computer Science, University of Twente],
      address: [7500 AE Enchede, The Netherlands],
      email-suffix: [papercept.net],
    ),
    (
      name: [Department of Electrical Engineering, Wright State University],
      address: [Dayton, OH 45435, USA],
      email-suffix: [ieee.org]
    ),
  ),
  index-terms: (),
  bibliography: bibliography("zotero.bib"),
  draft: false,               // Adds the draft markers on the footer and header
  paper-size: "us-letter",
)

#let nonum(eq) = math.equation(block: true, numbering: none, eq)
#let Huplet = math.italic("Huplet")

#include "Introduction.typ"

#colbreak()

#include "GridResonances.typ"

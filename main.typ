#import "definitions.typ": thm-rules


#set par(

  leading: 1em,
  spacing: 2em
)

#set page(numbering: "1")

#align(center,text(size: 16pt,)[Introducing Quplets:\
 from crest trajectories to Euclidean rhythms])
#align(center,text(size: 11pt,)[_Malcolm Braff_, HSM Basel, FHNW])


#show math.equation.where(block: false): box
#show figure.caption: set text(size: 8pt)
#show heading.where(level: 1): set block(above: 2.5em)
#show heading.where(level: 2): set block(above: 2.5em)

#v(80pt)

#include "00-abstract.typ"

#pagebreak()
#set heading(numbering: "1.")
#show: thm-rules
#outline(title: [List of content], depth: 4)
#set page(numbering: "1")


#pagebreak()


#include "01-introduction.typ"

#pagebreak()
#set math.equation(numbering: "(1)")


//#include "CrestTrajectory-updated.typ"
#include "02-crest-position-and-amplitude-trajectories.typ"

#v(50pt)
//#include "Threshold configuration.typ"

#include "03-balanced-threshold-configuration.typ"

// Legacy section retained as source material only.
// #include "GridResonances.typ"

#v(50pt)
#include "04-huplet-trajectory-and-euclidean-endpoints.typ"

#v(50pt)
#include "05-quplets-as-constrained-euclidean-rhythms.typ"

/*
#v(50pt)
#include "06-order-collinearity-and-continuous-extension.typ"

#v(50pt)
#include "07-twin-quplets-and-structural-symmetry.typ"

#v(50pt)
#include "08-quplet-block-sum-projection.typ"

#v(50pt)
#include "HarmonicMorphing.typ"
*/
#v(50pt)
#include "09-conclusion.typ"

#pagebreak()
#bibliography("zotero.bib")
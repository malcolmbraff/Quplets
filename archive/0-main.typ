#set par(

  leading: 1em,
  spacing: 2em
)

#set page(numbering: "1")

#align(center,text(size: 16pt,)[Introducing Quplets:\
 from crest trajectories to Euclidean rhythms])
#align(center,text(size: 11pt,)[_Malcolm Braff_, HSM Basel, FHNW])


#show math.equation.where(block: false): box


#v(80pt)

#include "Abstract.typ"

#pagebreak()
#set heading(numbering: "1.") 
#outline(title: [List of content], depth:4)
#set math.equation(numbering: "(1)")
#pagebreak()

#include "Introduction.typ"

#pagebreak()
#include "Threshold configuration.typ"
//#include "GridResonances.typ"

#v(50pt)
#include "CrestTrajectory.typ"

#v(50pt)
#include "HupletQuplet.typ"

#v(50pt)
#include "RotationSelection.typ"

#v(50pt)
#include "Order.typ"

#v(50pt)
#include "Twin.typ"

#v(50pt)
#include "Projection.typ"

#v(50pt)
#include "HarmonicMorphing.typ"

#v(50pt)
#include "Conclusion.typ"

#v(50pt)

#bibliography("zotero.bib",style: "chicago-notes")
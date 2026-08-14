#import "definitions.typ": thm-rules


#set par(

  leading: 1em,
  spacing: 2em
)

#set page(numbering: "1")

#align(center,text(size: 16pt,)[Crest continuation and canonical Euclidean-rhythm selection:\
 a two-frequency cosine model])
#align(center,text(size: 11pt,)[_Malcolm Braff_, HSM Basel, FHNW #linebreak() #link("https://orcid.org/0009-0007-0699-0737")[ORCID: 0009-0007-0699-0737]])


#show math.equation.where(block: false): box
#show figure.caption: set text(size: 8pt)
#show heading.where(level: 1): set block(above: 2.5em)
#show heading.where(level: 2): set block(above: 2.5em)

#v(80pt)

#include "00-abstract.typ"

#pagebreak()
#set heading(numbering: "1.")
#show: thm-rules
#outline(title: [Contents], depth: 4)
#set page(numbering: "1")


#pagebreak()


#include "01-introduction.typ"

#pagebreak()
#set math.equation(numbering: "(1)")



#include "02-crest-position-and-amplitude-trajectories.typ"

#v(50pt)
#include "03-balanced-threshold-configuration.typ"

#v(50pt)
#include "04-huplet-trajectory-and-euclidean-endpoints.typ"

#v(50pt)
#include "05-quplets-as-constrained-euclidean-rhythms.typ"

#v(50pt)
#include "06-secondary-amplitude-ranking.typ"

#v(50pt)
#include "07-even-n-central-branch.typ"

#v(50pt)
#include "08-conclusion.typ"


#pagebreak()

#bibliography("zotero.bib", style: "ieee")
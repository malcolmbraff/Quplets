/*
#import "@preview/elsearticle:0.4.2": *
#let abstract = "We introduce a new family of rhythmic structures called quplets, defined by the interference of two periodic functions rather than by traditional subdivisions. Unlike conventional tuplets or Euclidean rhythms, quplets emerge from the positions of local maxima in a composite waveform, generating a continuous family of rhythmic vectors. As the relative weight between the interfering components changes, these vectors evolve smoothly, tracing geodesic curves within the rhythmic simplex. At specific parameter values, structural transitions occur, revealing connections to Euclidean rhythms and modular symmetry. We develop a topological and projection-based framework to analyze these structures, interpret their behavior geometrically, and explore their extension to irrational and continuous domains. Quplets offer a harmonic and geometric approach to rhythm — one rooted not in division, but in resonance, symmetry, and emergent form."
 


#show: elsearticle.with(
  title:"Vers une topologie des rythmes musicaux",
  authors: (
    (
      name: "Malcolm Braff",
      affiliation: "Musik Akademie Basel",
      corr: "malcolm.braff@fhnw.ch",
      id: " ",
    ),
    
   
  ),
  journal: "Journal de la Maison-Matrice",
  abstract: abstract,
  keywords: ("Euclidean rhythms", "Quplets"),
  format: "review",
  // line-numbering: true,
)

*/

//Title
#v(100pt)

#align(center,text(size: 24pt,)[Vers une Topologie des Rythmes Musicaux])

#align(center,text(size: 18pt,)[_Malcolm Braff_])

#align(center,text(size: 12pt,)[JazzCampus, HSM, FHNW])

#v(50pt)

*Résumé*
#line(length: 100%)
#lorem(200)

#line(length: 100%)

#pagebreak()


#set heading(numbering: "1.")
#outline(title: [Index], depth:2)
#set math.equation(numbering: "(1)")
#set figure(supplement:[Fig.])

#pagebreak()
#include "0. Introduction.typ"
#v(12pt)



#include "1. Fonction de base.typ"

#v(12pt)
#include "2. etude des cre\u{302}tes.typ"

#v(12pt)
#include "21.Quplets.typ"

#v(12pt)
#include "3. Theoreme.typ"

#v(12pt)
#include "4. entropie.typ"

#v(12pt)
#include "5. Ordre.typ"

#v(12pt)
#include "6. jumeaux.typ"

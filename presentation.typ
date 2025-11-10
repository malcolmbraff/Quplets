// ---------------------------------------------------------
// Slides — Quplets: interference-based rhythmic structures
// Touying (Typst) — 16:9, light theme, academic serif
// ---------------------------------------------------------
#let Huplet = math.italic("Huplet")
#import "@preview/touying:0.6.1": *
#import themes.metropolis: *

#set text(font: "Libertinus Serif")



#show: metropolis-theme.with(
  aspect-ratio: "16-9",
   margin: (x: 10em, y: 2em),
  config-info(
    title: [Introducing Quplets],
    subtitle: [From crest trajectories to Euclidean rhythms],
    author: [Malcolm Braff],
    date: datetime.today(),
    institution: [MAR / HSM Basel],
  ),

)

#title-slide()



// ---------------------------------------------------------
== Outline
#table(columns: (50%,50%), stroke:none,align:top, [

  - #text(size: 24pt)[context]  
  
    - #text(size: 16pt)[rhythm as harmonic phenomenon]
    - #text(size: 16pt)[potential energy]
    - #text(size: 16pt)[Euclidean rhythms]
    - #text(size: 16pt)[method]
    - #text(size: 16pt)[target journal]
  ],
    [#pause
  - #text(size: 24pt)[4 stages model]
  
    - #text(size: 16pt)[interference function $F_k (x)$] 
    - #text(size: 16pt)[crest tracking $X_i (k)$] 
    - #text(size: 16pt)[spacing vector $Delta X_i (k)$] 
    - #text(size: 16pt)[vector space] 
  ])
  /* - global grid resonances #text(size: 16pt)[_Critical values of $k$_] 
  - crest trajectories #text(size: 16pt)[_Stationarity, ODE_] 
  - Huplet → Quplet 
  - rotation selection and entropy 
  - twin Quplets 
  - order, colinearity, λ–quplets 
  - projection viewpoint 
  - conclusion & directions */

// ---------------------------------------------------------
= Context
#text(size: 24pt)[
  - rhythm as a harmonic phenomena
  - potential energy, entropy
  - Toussaint's Euclidean rhythms
  - method
  - target journal
]
== rhythm as a harmonic phenomena

- Harmonic as in Physics but also harmonically functional in the musical sense:
  - timbre
  - tempering offers multifunctionality
  - polyrhythms as chords
  - (...)

== potential energy //$Epsilon = sum_(i=1)^(n-1) ( X_i - i/n )^2$
#table(
  columns: (50%,30%),
  inset: 10pt,
  align: center,
  stroke: none,
  [
    #table(columns:(50%,50%),stroke:none,[*$X=(X_0,dots,X_4)$*],[*$T=(0,1,2,3,4)$*],)
  
  ],[
   * $E = display(sum_(i=1)^4) abs(X_i-T_i)^2$*
  ],[#box(image("Figures/sibelius/potential1.png", width:100%))],
[$E_1 approx 2,45$],
  [#box(image("Figures/sibelius/potential2.png", width:100%))],
[$E_2 approx 0,3$],
  [#box(image("Figures/sibelius/potential3.png", width:100%))],
[$E_3 approx 0,2$],


)

== Euclidean rhythms
    - Toussaint (2005), evenness maximisation
    - Björklud's algorithm (2003): #pause
    
#image("Figures/sibelius/bjorklund1.png")  #pause 
#image("Figures/sibelius/bjorklund2.png") #pause 
#image("Figures/sibelius/bjorklund3.png") #pause 
#image("Figures/sibelius/bjorklund4.png") #pause
#image("Figures/sibelius/bjorklund5.png") 
== method

#table(
  columns: 2,
  stroke: none,
  [#image("Figures/mathstudio-icon.png", width: 60pt)],
  [MathStudio Pro],


  [#image("Figures/minsk-belarus-03272023-openai-chatgpt-600nw-2281899103.jpg", width: 60pt)],
  [ChatGPT, CodePilot],

  [#image("Figures/python-svgrepo-com.svg", width: 60pt)],
  [Python],

  
  [#image("Figures/Typst.svg", width: 70pt)],
  [Typst],
)

== target journal
#table(
  columns: 2,
  stroke: none,
  [#image("Figures/tmam20.v019.i02.largecover.jpg")],
  [Journal of Mathematics & Music\ 
  #text(size: 20pt)[Taylor & Francis]\ 
  
  _#text(size: 20pt)[https://www.tandfonline.com/journals/tmam20]_
],
 
)

// ---------------------------------------------------------
= model

#text(size: 24pt)[
- basic function $F_k (x)$ 
- crest tracking $X_i (k)$ 
- spacing vector $Delta X_i (k)$ 
- vector space 
]

== basic function $F_k (x)$

=== interference between two weighed cosines:

*$ F_k (x) = k cos(2π d x) + cos(2π n x) $*
$  "with coprime integers" d>n>0, " phase" x in ℝ "/" ℤ, " and modulation" k in RR^+ \ "(and non-even "n")" $

=== musically:
- the rhythm is given by the positions (or the spacing for durations) of the *crests* in the output signal
- $cos(2π n x)$ marks the *$n$*-tuplet, $cos(2π d x)$ the *$d$*-tuplet; 
- varying *$k$* crossfades between the $n$– and the $d$–subdivisions.

---
=== crest detection with 1st and 2nd derivatives:

*$ G_k (x) = ∂_x F_k (x) = - 2π ( k d sin(2π d x) + n sin(2π n x) ) $*
*$ H_k (x) = ∂_(x x) F_k (x) = - (2π)^2 ( k d^2 cos(2π d x) + n^2 cos(2π n x) ) $*
A crest is a point with *$G=0$* and *$H<0$*.

=== example (_see interactive plot_)
#figure(
  image("Figures/F(x).svg", width: 80%),
  caption: [$F(x)$ for $n=5$, $d=7$, $k=3/4$],
)



// ---------------------------------------------------------
=== properties:
- symmetry around $x=1/2$
- global grid resonances\
  All crests lie on a single rational grid only for $k in { 0, n/d, ∞ }$:

  #table(
  columns: 3,
  stroke: none,
  [
- $k = 0$
- $k = n/d$
- $k  → infinity$
],[
→\ 
→\ 
→
],[
grid $n^(-1)$\ 
grid $(n+d)^(-1)$ _(threshold)_\
grid $d^(-1)$ _(endpoint)_
]
)

---
=== Example:
#figure(
  image("Figures/Fk(x).svg", width: 80%),
  caption: [$F_k (x)$ at $k=n/d$ for $n=5$, $d=8$],
)

=== what next?
- multi-harmonic functions, other resonant grids?
- irrational proportions between $n$ and $d$?
- FM?
- idea: center symmetry at $x=0$ instead of $x=1/2$

// ---------------------------------------------------------

= model

#text(size: 24pt)[
- basic function $F_k (x)$ #pause
- crest tracking $X_i (k)$ 
 
]




== crest tracking $X_i (k)$
=== numerical method:
- selection of $n$ highest crests
- trajectories $X_i (k)$ 
- trajectories $A_i (k)$ 
---
#figure(
  image("Figures/Crests.svg", width: 80%),
  caption: [Trajectories $X_i (k)$ for $n=5$, $d=7$],
)
---

#figure(
  image("Figures/A_i.png", width: 70%),
  caption: [Trajectories $A_i (k)$ for $n=11$, $d=18$],
)
---
=== analytical method:
- follow continuation of branches from $k=0$ with ODE
- define $X_i (k)$ 
- define $A_i (k)$ 
---

= model

#text(size: 24pt)[
- basic function $F_k (x)$ 
- crest tracking $X_i (k)$ #pause
- spacing vector $Delta X_i (k)$ 
]

== spacing vectors $Delta X_i (k)$
#figure(
  image("Figures/Huplet.svg", width: 80%),
  caption: [Entries of $Δ X_i (k)$ for $n=53$, $d=67$],
)
---
=== observations
#table(
  columns:( 40%,60%),
  stroke: none,
  [- crossings at _threshold_ and _endpoint_
  
- all elements converge to strictly two distinct durations $alpha$ and $beta$ at critical values of $k$

- derivability: high-order zeros

], [#image("Figures/Huplet.svg",width: 100%)]
)

---
=== definitions
*Huplet*\ $Huplet(n,d,k)$: anchored spacing vector.

*Quplet*\ $Q(n,d) := lim_(k→∞) Huplet(n,d,k) $\ 
In $Q(n,d)$ there are two values (long/short, or $alpha\/beta$) with multiplicities $r$ and $n-r$. \ 
$Q(n,d)$ is a rotation–constrained Euclidean rhythm $E(n,d)$.

*order of Quplets*\
$O(n,d)= abs(n-2r)$, where $r=d mod n$\
$O(n,d)= O(n,n i + r)=O(n,n(i+2)-r)$ .\ 


*twins*\
(residues $r$ and $n-r$) share the same order and swap the two values.
---
=== theorems
*threshold–extension theorem:*\
$Huplet(n,d,n/d) = Q(n,n+d)$

*euclidean reduction corollary:*\
$Q(n,d) = Huplet(n,d-n,n/(d-n))$

*rotation selection*\
Among all rotations of $E(n,d)$ on the $d$–grid, the crest dynamics select the anchored rotation nearest (circular distance) to the regular $n$–multiplet.

*energy / entropy views*\
Define a convex alignment energy on circular distances; the anchored rotation uniquely minimizes it.
A soft alignment entropy has the same maximizer and, as temperature ↓ 0, converges to the same nearest assignment.\  Note that for given $n$, one Quplet's energy is proportional to its order.


---

=== example 1, encapsulation: 
#table(
  columns: 2,
  stroke: none,
  [#image("Figures/Q57.png",height:40%)],
  [#image("Figures/Q512.png",height:40%)],
  [#image("Figures/Q517.png",height:40%)],
  [#image("Figures/Q522.png",height:40%)],
)
---
=== example 1, encapsulation: 
#v(15pt)
- $Q(5,7)=N(1,2,1,2,1) =H_infinity (5,7)$

- $Q(5,12) = N(2,3,2,3,2) = H_infinity (5,12)= H_(5\/7)(5,7)$ 

- $Q(5,17) = N(3,4,3,4,3) = H_infinity (5,17)= H_(5\/12)(5,12)$

- $Q(5,22) = N(4,5,4,5,4) = H_infinity (5,22)= H_(5\/17)(5,17)$ 
#v(15pt)
all Quplets share the *same order* (1st) and present the *same structure $(alpha, beta, alpha, beta, alpha)$*


---
=== example 2, twins:

#figure(
  image("Figures/twins.png",width:77%),
)


---
=== example 2, twins:
#v(15pt)
- $Q(7,10)=N(1,2,1,2,1,2,1)$ and $Q(7,11)=N(2,1,2,1,2,1,2)$\ are both from the *1st order* and present the same structure *$(alpha, beta, alpha, beta, alpha,beta,alpha)$ *

- $Q(7,9)=N(1,2,1,1,1,2,1)$ and $Q(7,12)=N(2,1,2,2,2,1,2)$\ are both from the *2nd order* and present the same structure *$(alpha, beta, alpha, alpha, alpha,beta,alpha)$* 

- $Q(7,8)=N(1,1,1,2,1,1,1)$ and $Q(7,13)=N(2,2,2,1,2,2,2)$\ are both from the *3d order* and present the same structure *$(alpha, alpha, alpha, beta,alpha,alpha,alpha)$ *


---

= model

#text(size: 24pt)[
- basic function $F_k (x)$ 
- crest tracking $X_i (k)$ 
- spacing vector $Delta X_i (k)$ #pause
- vector space (topology) 
]

== vector space (topology)

=== single line in the simplex
In the $(n-1)$–simplex $Σ_n := { q in ℝ^n_+ : sum q_i = 1 }$, 

all $Q(n, s n + r)$ lie on
*$Q(n,d) = t_n + λ(d) · m_(n,r)$*

with $t_n = (1/n, …, 1/n)$ and *$λ(d) = r dot display(( n - r ) / ( n d ))$*

=== continuous extension
Define *$Q_lambda (n,r) = t_n + λ · m_(n,r)$ #h(5pt) for $λ in RR$* .\ This interpolates between twin quplets and passes through the regular tuplet at $λ=0$.

---

#figure(
  image("Figures/3plets.png", width: 65%),
  caption:[triplets simplex with $3$-Quplets segment]
)
---
#figure(
  image("Figures/Geodesics.svg", width: 70%),
  caption: [PCA for some 1st Order $5$-_Huplets_],
)
---
// ---------------------------------------------------------

=== block–sum image of a barycenter
Let $u_d = (1/d, …, 1/d)$ be the barycenter of the $(d-1)-$_simplex_.

A projection matrix from the $d$ into the $n$ dimensional spaces emerges from the basic function $F_(->infinity) (x)$ and therefore from $Q(n,d)$.
---
=== Example: $(n,d)=(5,7)$

#v(6pt)
When $k->infinity$, selected crests from$F_k (x)$ yield positions $R = {0,1,3,4,6}$ on the $7$–grid.

The blocks are
$B_0={0}$, $B_1={1,2}$, $B_2={3}$, $B_3={4,5}$, $B_4={6}$,\
so the block lengths are $(1,2,1,2,1)$ and
$Q(5,7) = 1/7 (1,2,1,2,1)$.

The projection matrix is

$ Π(5,7) =
mat(1, 0, 0, 0, 0, 0, 0;
 0, 1, 1, 0, 0, 0, 0;
 0, 0, 0, 1, 0, 0, 0;
 0, 0, 0, 0, 1, 1, 0;
 0, 0, 0, 0, 0, 0, 1) $

Multiplying the barycenter $u_7 = (1/7,…,1/7)$ gives
$ Π(5,7)·u_7 = 1/7(1,2,1,2,1) = Q(5,7) .$

*question : what about irrational Quplets $Q_lambda$?*

// Conclusion & directions
= conclusion and directions
#text(size: 24pt)[
  - summary
  - future work
]

== summary
- *basic function* $F_k (x)=k cos (2π d x)+cos(2π n x)$ for $k = 0->infinity$ and *crests detection*

- Three *resonant grids* $k in {0, n/d, ∞}$ → Euclidean patterns at threshold/endpoint.

- *crest trajectories*, numerical, analytical with ODE

- Rotation selection by *nearest–site / energy / entropy*.

- *Huplet → Quplet* vectors, with threshold–extension and Euclidean reduction.

- *Order classes* are colinear; *$Q_lambda$* provides a continuous extension.

- *Huplet geodesics* in vector space

- *Projection* viewpoint via a block–sum from the simplex barycenter.

== Future work
- *Crest functions $X_i$, $A_i$*: differentiability strata etc.

- *Huplet paths* in $Σ_n$: curvature, geodesicity, densification near $Q_lambda$.

- *Irrational $Q_lambda$*: projection meaning and “continuum of dimensions”.

- *Multi-harmonic generalization*: resonance/selection with several frequencies.
---
= *Thank you*

*Questions?*
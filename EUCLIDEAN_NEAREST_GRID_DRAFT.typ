#set page(margin: 24mm)
#set text(size: 10.5pt)
#set par(justify: true, leading: 0.7em)
#set heading(numbering: "1.")

#let reviewer-note(body) = block(
  width: 100%,
  fill: rgb("#fff8dc"),
  stroke: 0.6pt + rgb("#b28b00"),
  inset: 8pt,
  radius: 3pt,
  [*Reviewer note.* #body],
)

= Nearest-grid rounding and the Euclidean necklace

#align(center)[_Standalone proof draft_]

This note isolates a static statement from the dynamical claims of the manuscript. It proves that nearest-grid rounding of a regular odd tuplet produces a canonical onset configuration whose circular gap word belongs to the Euclidean rotation class. It does *not* prove that the crest dynamics realizes this configuration.

== Setting and conventions

Let $n$ and $d$ be coprime positive integers. For the nontrivial onset problem considered here, assume

$ 1 < n < d, quad gcd(n,d)=1, quad n " odd". $

The case $n=1$ is immediate. The inequality $n<d$ is needed if the rounded points are to be $n$ distinct sites of the $d$-grid.

#reviewer-note[
  Please confirm that the intended scope is $1<n<d$. If $n>d$, no subset of the $d$-grid can contain $n$ distinct onsets, so the statement must instead allow multiplicities or exchange the roles of $n$ and $d$.
]

For $i=0,dots.c,n$, define the ordered lifted rounded sites

$ a_i = floor(i d / n + 1/2). $

Thus $a_0=0$ and $a_n=d=a_0+d$. The associated circular onset configuration is

$ C(n,d) = {a_0,a_1,dots.c,a_(n-1)} quad "in" quad ZZ / d ZZ, $

with the anchor at $a_0=0$. Its lifted circular gaps are

$ g_i = a_(i+1)-a_i, quad i=0,dots.c,n-1. $

The word $G=(g_0,dots.c,g_(n-1))$ is called the anchored gap word.

== No ties and strict ordering

*Lemma 1 (absence of half-integer ties).* For every $i$ with $0<i<n$, the number $i d/n$ is not a half-integer.

*Proof.* If $i d/n=q+1/2$ for some integer $q$, then

$ 2 i d = (2q+1)n. $

Since $gcd(n,d)=1$, this implies $n$ divides $2i$. Because $n$ is odd, it follows that $n$ divides $i$, contradicting $0<i<n$. Therefore no tie occurs. $square$

Write the Euclidean division of $d$ by $n$ as

$ d=s n+r, quad s>=1, quad 0<r<n. $

Coprimality gives $gcd(r,n)=1$. Then

$ a_i=i s+floor(i r/n+1/2), $

and hence

$ g_i=s+w_i^(1/2), $

where, for any real intercept $beta$,

$ w_i^(beta)=floor((i+1)r/n+beta)-floor(i r/n+beta). $

Because $0<r/n<1$, each $w_i^(beta)$ belongs to the binary alphabet $ {0,1} $. Consequently $g_i$ belongs to $ {s,s+1} $ and in particular $g_i>=1$. Thus

$ 0=a_0<a_1<dots.c<a_(n-1)<a_n=d. $

The rounded sites are therefore distinct, cyclically ordered, and their gaps sum to $d$.


== All-scale cyclic balance

Extend the rounded-site formula to every integer index $j$ by

$ a_j=floor(j d/n+1/2). $

Then

$ a_(j+n)=a_j+d. $

This identity is the cyclic lift convention: whenever an index crosses the anchor, subtract $n$ from the index and add one full circumference $d$.

For $ell in {1,dots.c,n-1}$ and $i in ZZ$, define the clockwise $ell$-onset distance by

$ Delta_ell(i)=a_(i+ell)-a_i. $

For $i in {0,dots.c,n-1}$, if $i+ell>=n$, this means explicitly

$ Delta_ell(i)=a_(i+ell-n)+d-a_i. $

Thus the definition measures the clockwise grid distance from onset $i$ to onset $i+ell$ in circular order, including the wrap across the anchor.

*Proposition (all-scale cyclic balance).* For every $ell in {1,dots.c,n-1}$ and every integer $i$,

$ Delta_ell(i) in {floor(ell d/n),ceil(ell d/n)}. $

Equivalently, at each fixed scale $ell$, any two clockwise distances spanning $ell$ consecutive onset intervals differ by at most one grid unit.

*Proof.* From the cyclic lift formula,

$
  Delta_ell(i)
  =floor((i+ell)d/n+1/2)-floor(i d/n+1/2).
$

Set

$ x=i d/n+1/2, quad y=ell d/n. $

For arbitrary real $x$ and $y$, write $x=p+u$ and $y=q+v$, where $p,q$ are integers and $0<=u,v<1$. Then

$
  floor(x+y)-floor(x)
  =q+floor(u+v).
$

Since $0<=u+v<2$, the last term is either $0$ or $1$. Hence

$ floor(x+y)-floor(x) in {floor(y),ceil(y)}. $

Applying this with the displayed $x$ and $y$ gives the result. In the present coprime setting, $ell d/n$ is not an integer for $1<=ell<n$, because $n$ dividing $ell d$ would force $n$ to divide $ell$. Therefore the two bounds are consecutive integers. $square$

Since

$ Delta_ell(i)=g_i+g_(i+1)+dots.c+g_(i+ell-1), $

with gap indices read cyclically, the proposition controls the sum of every block of $ell$ consecutive gaps, for every scale $ell=1,dots.c,n-1$. This is the strong cyclic balanced, or maximally-even, condition. The earlier conclusion $g_i in {s,s+1}$ is only its scale-$1$ case; two adjacent gap lengths alone do not establish balance at larger scales.

The terminology *maximally even* follows Clough and Douthett
#cite(<cloughMaximallyEvenSets1991>). With the manuscript's Euclidean-rhythm
convention, Theorem 4.1 of Demaine et al.
#cite(<demaineDistanceGeometryMusic2009>) identifies an $n$-onset necklace on
the $d$-grid satisfying this all-scale cyclic balance condition with the
Euclidean rhythm necklace, up to cyclic rotation. The proposition above proves
the required balance directly for the nearest-grid configuration.

== Mechanical-word form (optional parallel route)

The all-scale balance proposition already gives the strongest spacing statement. The following mechanical-word argument is retained as an independent route to the Euclidean rotation class and, additionally, identifies the selected anchored rotation.


For $beta in RR$, define the length-$n$ binary word

$ W^(beta)=(w_0^(beta),dots.c,w_(n-1)^(beta)). $

The corresponding length-$n$ gap word is

$ G^(beta)=s bold(1)+W^(beta), $

where $bold(1)$ is the constant word of $n$ ones. The nearest-grid construction is precisely $G=G^(1/2)$.

The intercept-zero representative is

$ g_i^(0)=floor((i+1)d/n)-floor(i d/n), quad i=0,dots.c,n-1. $

This is the standard lower rational mechanical gap word of slope $d/n$.

== Intercept-to-rotation lemma

For a length-$n$ word $V$, let $rho_t V$ denote cyclic left rotation by $t$ positions:

$ (rho_t V)_i=V_(i+t " mod " n). $

*Lemma 2 (intercepts give cyclic conjugates).* Let $gcd(r,n)=1$. For every real $beta$ and integer $t$,

$ W^(beta+t r/n)=rho_t W^(beta). $

Moreover, if $n$ is odd and

$ q_0=(n-1)/2, $

then

$ W^(1/2)=rho_t W^(0), $

where $t$ is the unique residue modulo $n$ satisfying

$ t r equiv q_0 " (mod " n). $

Equivalently,

$ t equiv r^(-1)(n-1)/2 " (mod " n). $

*Proof.* Extend $w_i^(beta)$ to every integer $i$. Directly from the definition,

$ w_(i+n)^(beta)=w_i^(beta), $

because adding $n$ to $i$ adds the integer $r$ to both floor arguments. Also,

$
  w_i^(beta+t r/n)
  =floor((i+t+1)r/n+beta)-floor((i+t)r/n+beta)
  =w_(i+t)^(beta).
$

This proves the shift identity.

It remains to compare the intercepts $1/2$ and $q_0/n$. As $beta$ varies modulo one, a coordinate of $W^(beta)$ can change only when one of the floor arguments is an integer. The set of all such breakpoints is

$ { -i r/n " mod " 1 : i=0,dots.c,n-1 }={q/n:q=0,dots.c,n-1}, $

because multiplication by $r$ permutes the residue classes modulo $n$. Since the floor function is right-continuous, $W^(beta)$ is constant on each half-open interval

$ [q/n,(q+1)/n). $

For odd $n$,

$ q_0/n<1/2<(q_0+1)/n, $

so $W^(1/2)=W^(q_0/n)$. Choose the unique $t$ modulo $n$ with $t r equiv q_0$ modulo $n$. Then $t r/n$ differs from $q_0/n$ by an integer. Integer shifts of the intercept do not change $W$, and therefore

$
  W^(1/2)
  =W^(q_0/n)
  =W^(t r/n)
  =rho_t W^(0).
$

This proves the claim. $square$

Because adding the constant word $s bold(1)$ commutes with cyclic rotation, the same $t$ satisfies

$ G^(1/2)=rho_t G^(0). $

The lemma gives not only membership in a rotation class but the explicit selected rotation.

== Euclidean necklace

An anchored positive gap word $G=(g_0,dots.c,g_(n-1))$ with sum $d$ reconstructs an anchored onset configuration by the partial sums

$ 0, g_0, g_0+g_1, dots.c, g_0+dots.c+g_(n-2) quad "in" quad ZZ/d ZZ. $

Changing the chosen starting onset cyclically rotates $G$. Conversely, translating the onset configuration and then choosing the translated anchor leaves the same cyclic gap class. Hence positive gap words of length $n$ and sum $d$, modulo cyclic rotation, are equivalent to $n$-onset necklaces on the $d$-grid.

Define the Euclidean gap necklace $E(n,d)$ to be the cyclic class of the standard mechanical representative

$ G^(0)=(g_0^(0),dots.c,g_(n-1)^(0)). $

Under this definition, Lemma 2 proves the following.

*Theorem (nearest-grid Euclidean representative).* Let $1<n<d$, with $gcd(n,d)=1$ and $n$ odd. Nearest-grid rounding of the regular $n$-tuplet,

$ a_i=floor(i d/n+1/2), quad i=0,dots.c,n, $

produces $n$ distinct sites of the $d$-grid. Its circular gap word is

$ G^(1/2)=rho_t G^(0), quad t equiv r^(-1)(n-1)/2 " (mod " n), $

where $r=d " mod " n$. Consequently its gap necklace belongs to $E(n,d)$.

If a Euclidean rhythm is represented instead by a binary word of length $d$ with $n$ ones, the theorem has the equivalent formulation obtained by placing ones at the partial sums of $G^(1/2)$. The gap necklace and binary onset necklace encode the same circular configuration.

For the Bjorklund pulse-distribution procedure and its musical Euclidean-rhythm
interpretation, see Bjorklund #cite(<bjorklundTheoryRepratePattern2003>) and
Toussaint #cite(<toussaintEuclideanAlgorithmGenerates2005>). The precise
mechanical-word rotation used here is proved directly in Lemma 2.

#reviewer-note[
  Please confirm whether the manuscript's symbol $E(n,d)$ denotes a binary onset necklace, a gap-word necklace, or a particular anchored representative. These are closely related but are not identical objects. The theorem above is stated first for gap necklaces, where the rotation statement is exact.
]

== Example: $n=5$, $d=7$

Here $d=1 dot 5+2$, so $s=1$, $r=2$, and $q_0=2$. Since $2^(-1) equiv 3$ modulo $5$,

$ t equiv 3 dot 2 equiv 1 " (mod " 5). $

The standard mechanical sites and gaps are

$ (0,1,2,4,5,7), quad G^(0)=(1,1,2,1,2). $

Nearest-grid rounding gives

$ (0,1,3,4,6,7), quad G^(1/2)=(1,2,1,2,1)=rho_1 G^(0). $

Thus both words represent the same Euclidean necklace, while the intercept $1/2$ selects the displayed anchored rotation.

== Dynamical realization: conjecture and conditional consequence

The static theorem does not identify the endpoints of crest trajectories. That requires a separate dynamical argument.

*Conjecture (dynamic nearest-grid realization).* Let $X_i(k)$ be the anchored crest branches continued from the regular $n$-tuplet, with labels preserving cyclic order. At the $d$-dominant endpoint,

$ lim_(k arrow 1^-) X_i(k)=a_i/d quad "in" quad RR/ZZ, $

where $a_i=floor(i d/n+1/2)$.

This conjecture includes the required global continuation, nondegeneracy or controlled treatment of folds, order preservation, and endpoint-selection statements. None of these follows from the static rounding theorem.

*Conditional corollary.* If the dynamic nearest-grid realization conjecture holds, then the phase-locked dynamical Quplet has gap word $G^(1/2)$ and therefore belongs to the Euclidean necklace $E(n,d)$. It selects the distinguished anchored rotation

$ t equiv (d " mod " n)^(-1)(n-1)/2 " (mod " n). $

No claim of energy uniqueness, entropy maximization, optimal transport uniqueness, or unique dynamical realization is made here.

== Boundary of the result

The proved content is exactly:

- no nearest-grid ties occur for coprime $n,d$ with odd $n$;
- for $1<n<d$, the rounded sites are distinct and cyclically ordered;
- at every scale $ell$, each cyclic $ell$-onset distance is either $floor(ell d/n)$ or $ceil(ell d/n)$, the strong balanced or maximally-even condition;
- the gap word is the rational mechanical word of slope $d/n$ and intercept $1/2$;
- the intercept-$1/2$ word is an explicitly identified cyclic conjugate of the intercept-zero Euclidean representative;
- the resulting circular configuration belongs to the Euclidean necklace $E(n,d)$.

For even $n$, half-integer ties may occur and a tie-breaking convention must be specified. The dynamical endpoint statement remains a conjecture or a conditional hypothesis until a separate continuation-and-selection proof is supplied.

#bibliography("zotero.bib", title: "Bibliography", style: "ieee")

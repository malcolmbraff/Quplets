#import "definitions.typ": *

= The balanced threshold configuration

We retain the interference function $F_k$ and the standing hypotheses of the
preceding section: $1<n<d$ are coprime, $n$ is odd, $k in [0,1]$, and
$x in RR \/ ZZ$ denotes phase on the unit cycle.

The purpose of this section is to describe the complete stationary set at a
distinguished value of the modulation parameter. The threshold slice can be
analyzed independently of the $n$ anchored crest branches issued from the
initial $n$-grid; @anchored-threshold-selection later identifies its $n$
highest crests with those branches.

== The slope-balanced parameter

Writing $theta=2 pi x$, the stationarity condition $G_k (x)=0$ from
@G becomes

$
k d sin(d theta)
+
(1-k)n sin(n theta)
=
0.
$ <stationarity>

The two contributions to @stationarity have equal coefficients when

#nonum[
  $
  k d=(1-k)n.
  $
]

This determines the unique parameter

$
k_c = n / (n + d).
$ <kc>

Indeed,

#nonum[
  $
  k_c d
  =
  (1-k_c )n
  =
  (n d) / (n + d).
  $
]

We call $k_c$ the *slope-balanced parameter*. The term balanced refers to
the derivative contributions in @stationarity, not to equal coefficients in
the original function $F_k$. 

At $k=k_c$, the coefficients of the two cosine terms are

#nonum[
  $
  k_c = n / (n + d)
  quad "and" quad
  1-k_c = d / (n + d),
  $
]

whereas their contributions to the phase derivative have the common
coefficient $n d/(n+d)$.

At $k=k_c$, @stationarity reduces to

#nonum[
  $
  sin(d theta)+sin(n theta)=0.
  $
]

Using

#nonum[
  $
  sin(A)+sin(B)
  =
  2
  sin((A + B) / 2)
  cos((A - B) / 2),
  $
]

we obtain

$
sin(d theta)+sin(n theta)
=
2
sin(((d+n)theta) / 2)
cos(((d-n)theta) / 2).
$ <threshold-factor>

Consequently, the stationary points at $k=k_c$ belong to the two families

#nonum[
  $
  sin(((d+n)theta) / 2)=0
  quad "or" quad
  cos(((d-n)theta) / 2)=0.
  $
]

We call them respectively the *resonant grid family* and the
*complementary family*.

Their intersections are degenerate stationary points. Indeed, at an
intersection one has

#nonum[
  $
  (d+n)theta=2 m pi
  quad "and" quad
  (d-n)theta=(2 ell+1)pi
  $
]

for some $m,ell in ZZ$. 

Adding these equations gives

#nonum[
  $
  2 d theta
  =
  (
    2m+2ell+1
  )pi,
  $
]

and hence

#nonum[
  $
  cos(d theta)=0.
  $
]

The curvature formulas below then imply $H_(k_c) (x)=0$.

== Threshold stationary families and amplitude separation

Set $N=n+d$. The factorization @threshold-factor gives a concise description
of the complete threshold slice.

#proposition(name: "Threshold-family separation and highest crests")[
  At $k_c=n/N$, every stationary point belongs either to the resonant
  $N$-grid

  #nonum[
    $
    theta=(2 pi m)/N,
    quad
    m in ZZ,
    $
  ]

  or to the complementary family

  #nonum[
    $
    (d-n)theta=(2 ell+1)pi,
    quad
    ell in ZZ.
    $
  ]

  Resonant crests have positive amplitude, whereas complementary crests have
  negative amplitude. If $gcd(n,d)=1$ and $n$ is odd, the $n$ highest crests
  are precisely the resonant sites $x=m/N$ satisfying

  $
  d m mod N in R_n,
  quad
  R_n={-(n-1)/2,dots,(n-1)/2},
  $ <highest-threshold-sites>

  where the residue is represented in centered form.
] <threshold-family-separation>

#proof[
  At a resonant point, $n theta equiv -d theta$ modulo $2 pi$. Hence

  #nonum[
    $
    H_(k_c) (x)
    =
    -(2 pi)^2 n d cos(d theta),
    $
  ]

  so the point is a crest precisely when

  $
  cos(d theta)>0.
  $ <grid-crest-test>

  Its amplitude is

  $
  F_(k_c) (x)=cos(d theta).
  $ <resonant-amplitude>

  At a complementary point, $cos(n theta)=-cos(d theta)$, and therefore

  #nonum[
    $
    H_(k_c) (x)
    =
    -(2 pi)^2 (n d(d-n))/N cos(d theta).
    $
  ]

  Such a point is again a crest precisely when $cos(d theta)>0$, but its
  amplitude is

  #nonum[
    $
    F_(k_c) (x)
    =
    (n-d)/N cos(d theta)
    <
    0.
    $
  ]

  Thus every highest crest belongs to the resonant family. At $x=m/N$, the
  resonant amplitude is

  #nonum[
    $
    cos((2 pi d m)/N).
    $
  ]

  Under coprimality, multiplication by $d$ permutes the residues modulo $N$.
  The $n$ largest cosine values correspond to the $n$ centered residues
  nearest $0$, namely $R_n$. Since $d>n$ gives $N>2n$, all of these selected
  values are positive and hence are resonant crests.
]

The threshold calculation identifies which $N$-grid sites are highest; to show that their spacing is Euclidean in the stronger all-scale sense, we now isolate the needed rounding fact for an arbitrary grid size $M$, before applying it with $M=N=n+d$. Finer joint-criticality and spectral questions lie outside this article’s scope.


#lemma(name: "Nearest-grid all-scale balance")[
  Let $M>n$ be an integer with $gcd(n,M)=1$, and suppose $n$ is odd. Define
  #nonum[
    $
    a_j=floor(j M/n+1/2)
    $
  ]
  for $j=0,dots,n-1$, extended cyclically by $a_(j+n)=a_j+M$. For every
  $j$ and every $ell in {1,dots,n-1}$, the clockwise distance
  $a_(j+ell)-a_j$
belongs to
  #nonum[
    $
    {floor((ell M) / n),ceil((ell M) / n)}.
    $
  ]
  Consequently the selected sites $a_j/M$, viewed up to cyclic rotation,
  form the Euclidean rhythm with $n$ onsets on the $M$-pulse grid.
] <nearest-grid-all-scale-balance>

#proof[
  If $j M / n$ were a half-integer, then $n$ would divide $2j$. Because $n$ is
  odd, this forces $j equiv 0 mod n$, where the quotient is an integer rather
  than a tie. The identity $a_(j+n)=a_j+M$ is immediate.

  For arbitrary real $x,y$,
  #nonum[
    $
    floor(x+y)-floor(x)
    in
    {floor(y),ceil(y)}.
    $
  ]
  Apply this with $x=j M / n+1/2$ and $y=ell M/n$. Since $M/n>1$, the case
  $ell=1$ also gives $a_(j+1)-a_j>=1$, proving strict order; the final site is
  below $M$ by nearest rounding of $(n-1)M/n<M$.

  The displayed two-value condition holds for every starting onset and every
  cyclic scale. By Theorem 4.1 of
  #cite(<demaineDistanceGeometryMusic2009>), it characterizes the Euclidean
  rhythm up to rotation.
]

#figure(
  image(
    "Figures/Fk(x).svg",
    width: 72%,
  ),
  caption: [
    The threshold profile $F_(5/13)$ for $(n,d)=(5,8)$. The $1/13$ grading
    aligns the $n+d$ stationary family. The remaining three stationary points
    belong to the complementary $d-n$ family; the figure makes the amplitude
    separation visible.
  ],
) <fig-threshold-profile>

== Euclidean spacing of the highest threshold crests

#proposition(name: "Euclidean highest-threshold crests")[
  Let $1<n<d$ be coprime, with $n$ odd, and set $N=n+d$. At the
  slope-balanced parameter $k_c = n/N$, the $n$ highest crests of
  $F_(k_c)$ lie on the resonant $N$-grid. Their indices are the nearest
  integers to

  #nonum[
    $
    0,
    N / n,
    2N / n,
    dots,
    ((n-1)N) / n.
    $
  ]

  For every $ell in {1,dots,n-1}$, the clockwise distance spanning $ell$
  successive selected onsets lies in

  #nonum[
    $
    {floor((ell N) / n), ceil((ell N) / n)}.
    $
  ]

  In particular, their circular gaps have lengths $floor(N/n)$ and
  $ceil(N/n)$, and the selected configuration is a rotation of the Euclidean
  rhythm with $n$ onsets on the $N$-grid.
] <euclidean-threshold-crests>

#proof[
  For $j=0,dots,n-1$, define
  
  $
  m_j
  =
  floor((j N) / n + 1 / 2).
  $ <nearest-grid-sites>
  
  Since $gcd(n,N)=gcd(n,d)=1$ and $n$ is odd, no number $j N/n$ is a
  half-integer. Thus $m_j$ is the unique nearest integer to $j N/n$.
  
  By the nearest-integer property,
  
  #nonum[
    $
    - 1 / 2
    <
    m_j - (j N) / n
    <
    1 / 2.
    $
  ]
  
  Multiplication by $n$ gives
  
  #nonum[
    $
    - n / 2
    <
    n m_j - j N
    <
    n / 2.
    $
  ]
  
  Since $n m_j - j N$ is an integer and $n$ is odd,
  
  #nonum[
    $
    n m_j - j N in R_n .
    $
  ]
  
  Thus every index $m_j$ satisfies the centered-residue condition defining the
  $n$ highest threshold crests.
  
  The indices $m_j$ are distinct modulo $N$. Indeed, since $N/n>2$,
  nearest-integer rounding preserves the strict ordering:
  
  #nonum[
    $
    0=m_0 < m_1 < dots<m_(n-1) < N.
    $
  ]
  
  The final inequality follows from
  
  #nonum[
    $
    m_(n-1)
    =
    floor(
      N- N / n + 1 / 2
    )
    <
    N.
    $
  ]
  
  Hence the indices $m_j$ are distinct modulo $N$.
  
  There are exactly $n$ such indices. They therefore exhaust the set defined by
  @highest-threshold-sites.
  
  Applying @nearest-grid-all-scale-balance with $M=N$ gives, for every
  $ell in {1,dots,n-1}$, the two-value cyclic-distance condition in the
  proposition. The same lemma, through the Demaine characterization, identifies
  the selected configuration up to rotation as the Euclidean rhythm with $n$
  onsets on the $N$-grid.
]

// Threshold figure moved to further_steps/threshold-stationary-families-and-spectrum.typ.
// #figure(  image(    "Figures/Fk(x).svg",    width: 82%,  ),  caption: [    The threshold profile $F_(k_c) (x)$ for $(n,d)=(5,8)$, with $N=13$ and $k_c = 5/13$.    The marked rational $13$-grid points identify the five highest crests, whose positions form the Euclidean threshold configuration.         ],) <fig-threshold-euclidean-circle>
// 
// 
// 

== Anchored selection at the balanced threshold

#corollary(name: "Anchored threshold selection")[
  Let $1<n<d$ be coprime, with $n$ odd, and set $N=n+d$ and
  $k_c=n/N$. For each $i in {0,dots,n-1}$, put

  #nonum[
    $
    q_i = floor((d i) / n + 1 / 2).
    $
  ]

  Then

  $
  X_i (k_c)
  =
  (i+q_i) / N
  =
  1 / N floor((N i) / n + 1 / 2).
  $ <anchored-threshold-formula>

  These positions are precisely the $n$ highest crests of $F_(k_c)$.
] <anchored-threshold-selection>

#proof[
  Let

  #nonum[
    $
    z_i=(i+q_i)/N.
    $
  ]

  The anchor is $i/n$, and @nearest-grid-endpoints identifies $q_i/d$ as
  the endpoint of the same short corridor. Direct calculation gives

  #nonum[
    $
    z_i-i/n
    =
    d/N (q_i/d-i/n).
    $
  ]

  Since $0<d/N<1$, the point $z_i$ lies on that corridor, strictly between
  its endpoints when $i!=0$. At $theta=2 pi z_i$,

  #nonum[
    $
    N theta=2 pi(i+q_i),
    $
  ]

  and hence $sin(n theta)=-sin(d theta)$. At $k_c=n/N$, the two derivative
  coefficients are equal, so the stationarity equation becomes
  $sin(n theta)+sin(d theta)=0$. Thus $z_i$ is stationary at $k_c$.

  The short-corridor parametrization in @anchored-continuation is strictly
  monotone and contains exactly one stationary point for each $k in [0,1]$.
  Therefore $X_i (k_c)=z_i$. Finally,

  #nonum[
    $
    i+q_i
    =
    floor(i+(d i)/n+1/2)
    =
    floor((N i)/n+1/2).
    $
  ]

  Hence the anchored positions are exactly the nearest $N$-grid sites used in
  @euclidean-threshold-crests, which proves that they are the $n$ highest
  threshold crests.
]



The threshold and Euclidean-selection results needed for the main theorem are
now complete.







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
the original function $F_k$. At $k=k_c$, the coefficients of the two cosine
terms are

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

for some $m,ell in ZZ$. Adding these equations gives

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

The calculation above contains the threshold information needed in this
article; finer joint-criticality and spectral questions lie outside its scope.

// Detailed source suppressed from the present article.
// // == The resonant $(n+d)$-grid family
// // 
// // The first factor in @threshold-factor vanishes when
// // 
// // #nonum[
// //   $
// //   theta= (2 pi m) / (n + d),
// //   quad
// //   m in ZZ.
// //   $
// // ]
// // 
// // Equivalently,
// // 
// // #nonum[
// //   $
// //   x= m / (n + d)
// //   quad (mod 1).
// //   $
// // ]
// // 
// // Thus the resonant family is the regular $(n+d)$-grid.
// // 
// // At such a point,
// // 
// // #nonum[
// //   $
// //   n theta equiv -d theta
// //   quad (mod 2 pi),
// //   $
// // ]
// // 
// // so that
// // 
// // #nonum[
// //   $
// //   cos(n theta)=cos(d theta)
// //   $
// // ]
// // 
// // and
// // 
// // #nonum[
// //   $
// //   sin(n theta)=-sin(d theta).
// //   $
// // ]
// // 
// // Substituting $k=k_c$ into @H gives
// // 
// // #nonum[
// //   $
// //   H_(k_c) (x)
// //   =
// //   -(2 pi)^2
// //   (
// //     (n d^2 ) / (n + d) cos(d theta)
// //     +
// //     (d n^2 ) / (n + d) cos(n theta)
// //   ).
// //   $
// // ]
// // 
// // Using $cos(n theta)=cos(d theta)$, this becomes
// // 
// // #nonum[
// //   $
// //   H_(k_c) (x)
// //   =
// //   -(2 pi)^2 n d cos(d theta).
// //   $
// // ]
// // 
// // Consequently, a resonant grid point is a crest precisely when
// // 
// // $
// // cos(d theta)>0.
// // $ <grid-crest-test>
// // 
// // It is a trough when $cos(d theta)<0$ and degenerate when
// // $cos(d theta)=0$.
// // 
// // == Joint criticality of the resonant grid
// // 
// // The resonant grid is distinguished not only by stationarity in the phase
// // variable. Since
// // 
// // #nonum[
// //   $
// //   partial_k F_k (x)
// //   =
// //   cos(d theta)-cos(n theta),
// //   $
// // ]
// // 
// // the identity $cos(d theta)=cos(n theta)$ implies
// // 
// // #nonum[
// //   $
// //   partial_k F_(k_c) (x)=0
// //   $
// // ]
// // 
// // at every resonant grid point.
// // 
// // We therefore obtain the following intrinsic characterization.
// // 
// // #remark(
// //   numbering: none,
// //   name: "Joint criticality of the resonant grid",
// // )[
// //   Every point $x=m/(n+d)$ satisfies
// // 
// //   $
// //   partial_x F_(k_c) (x)
// //   =
// //   partial_k F_(k_c) (x)
// //   =
// //   0.
// //   $ <threshold-joint-critical>
// // 
// //   Thus the resonant grid consists of joint critical points of the two-variable
// //   surface determined by $F_k (x)$.
// // ]
// // 
// // This observation has a direct consequence for crest-amplitude trajectories.
// // 
// // // Amplitude-turning analysis moved to further_steps/crest-trajectory-analysis.typ.
// // // #remark(
// // //   numbering: none,
// // //   name: "Threshold amplitude turning",
// // // )[
// // //   Suppose that a nondegenerate crest branch $X_i (k)$ passes through a resonant
// // //   grid point at $k=k_c$. Then
// // // 
// // //   #nonum[
// // //     $
// // //     A_i '(k_c )=0.
// // //     $
// // //   ]
// // // 
// // //   By the convexity identity @A-second-deriv, $k_c$ is a minimum of $A_i$ on
// // //   every interval of nondegenerate crest continuation containing $k_c$.
// // // 
// // //   If $gcd(n,d)=1$ and the resonant point is not $x=0$, this minimum is strict.
// // // ]
// // // 
// // // #proof[
// // //   The first statement follows from @threshold-joint-critical and @A-deriv.
// // //   Convexity then gives the minimum property.
// // // 
// // //   For strictness, observe that on the resonant grid,
// // // 
// // //   #nonum[
// // //     $
// // //     partial_(k x) F_(k_c) (x)
// // //     =
// // //     -2 pi
// // //     (
// // //       d sin(d theta)-n sin(n theta)
// // //     )
// // //     =
// // //     -2 pi(d+n)sin(d theta).
// // //     $
// // //   ]
// // // 
// // //   If this vanishes, then $sin(d theta)=0$. At
// // //   $theta=2 pi m/(n+d)$ and under $gcd(d,n+d)=1$, this implies
// // //   $(n+d) divides 2m$. If $n+d$ is odd, then $m=0$ modulo $n+d$. If $n+d$ is even, the only additional possibility is $m=(n+d)/2$, so $theta=pi$. Since $n$ and $d$ are then odd, $cos(d theta)=-1$, and @grid-crest-test shows that this point is a resonant trough, not a crest. Thus the only non-strict resonant crest is the fixed
// // //   point $x=0$.
// // // ]
// // // 
// // // 
// // 
// // // FIGURE PLACEHOLDER 3A
// // // Possible figure: the threshold waveform F_(k_c)(x) for (n,d)=(5,7),
// // // with resonant-grid stationary points and complementary stationary points
// // // distinguished by marker shape. Highlight the n highest resonant crests.
// // // Suggested label: <fig-threshold-waveform>
// // 
// // == The complementary stationary family
// // 
// // The second factor in @threshold-factor vanishes when
// // 
// // #nonum[
// //   $
// //   (d-n)theta=(2 ell+1)pi,
// //   quad
// //   ell in ZZ.
// //   $
// // ]
// // 
// // Equivalently,
// // 
// // #nonum[
// //   $
// //   theta= ((2 ell+1)pi) / (d - n).
// //   $
// // ]
// // 
// // At such a point,
// // 
// // #nonum[
// //   $
// //   n theta
// //   =
// //   d theta-(2 ell+1)pi,
// //   $
// // ]
// // 
// // and therefore
// // 
// // #nonum[
// //   $
// //   cos(n theta)=-cos(d theta).
// //   $
// // ]
// // 
// // Substitution into @H gives
// // 
// // #nonum[
// //   $
// //   H_(k_c) (x)
// //   =
// //   -(2 pi)^2
// //   (n d(d-n)) / (n + d)
// //   cos(d theta).
// //   $
// // ]
// // 
// // Since $d-n>0$, a complementary stationary point is a crest precisely when
// // 
// // $
// // cos(d theta)>0.
// // $ <complementary-crest-test>
// // 
// // It is a trough when $cos(d theta)<0$ and degenerate when
// // $cos(d theta)=0$.
// // 
// // Thus the complementary family cannot in general be discarded as a family of
// // troughs: depending on phase, it may contain crests, troughs, and degenerate
// // stationary points.
// // 
// // Unlike the resonant grid family, the complementary family is generally not
// // critical in the modulation direction. Indeed,
// // 
// // #nonum[
// //   $
// //   partial_k F_(k_c) (x)
// //   =
// //   cos(d theta)-cos(n theta)
// //   =
// //   2 cos(d theta).
// //   $
// // ]
// // 
// // Consequently, every nondegenerate complementary crest satisfies
// // 
// // #nonum[
// //   $
// //   partial_k F_(k_c) (x)>0.
// //   $
// // ]
// // 
// // A complementary crest therefore continues increasing in amplitude as the
// // parameter passes through $k_c$. It is stationary in phase at the threshold
// // slice, but not stationary with respect to the modulation parameter.
// // 
// // == Amplitudes of the two threshold families
// // 
// // The two stationary families are separated by the signs of their crest
// // amplitudes.
// // 
// // At a resonant grid point, $cos(n theta)=cos(d theta)$. Hence
// // 
// // 
// //   $
// //   F_(k_c) (x)
// //   =
// //   n / (n + d) cos(d theta)
// //   +
// //   d / (n + d) cos(n theta)
// //   =
// //   cos(d theta).
// //   $
// //  <resonant-amplitude>
// // 
// // A resonant grid crest satisfies $cos(d theta)>0$, and therefore has positive
// // amplitude.
// // 
// // At a complementary stationary point,
// // $cos(n theta)=-cos(d theta)$. Hence
// // 
// // 
// //   $
// //   F_(k_c) (x)
// //   =
// //   n / (n + d) cos(d theta)
// //   -
// //   d / (n + d) cos(d theta)
// //   =
// //   (n - d) / (n + d) cos(d theta).
// //   $
// //  <complementary-amplitude>
// // 
// // A complementary crest also satisfies $cos(d theta)>0$. Since $d>n$, its
// // amplitude is negative.
// // 
// // We have therefore proved the following separation result.
// // 
// // #remark(
// //   numbering: none,
// //   name: "Threshold amplitude separation",
// // )[
// //   At $k=k_c$, every crest in the resonant $(n+d)$-grid family has positive
// //   amplitude, whereas every crest in the complementary family has negative
// //   amplitude. Consequently, every highest crest of $F_(k_c)$ belongs to the
// //   resonant grid family.
// // ]
// // 
// // This separation gives the resonant family three simultaneous properties:
// // 
// // - its points lie on a regular $(n+d)$-grid;
// // - its crests have positive amplitude;
// // - its points are jointly critical in phase and modulation.
// // 
// // The complementary family has none of these three properties simultaneously.
// // 
// // == The $n$ highest threshold crests
// // 
// // Set
// // 
// // #nonum[
// //   $
// //   N=n+d.
// //   $
// // ]
// // 
// // At the resonant grid point $x=m/N$, @resonant-amplitude gives
// // 
// // #nonum[
// //   $
// //   F_(k_c) (m/N)
// //   =
// //   cos((2 pi d m) / N).
// //   $
// // ]
// // 
// // Assume from now on that $gcd(n,d)=1$ and that $n$ is odd. Since
// // 
// // #nonum[
// //   $
// //   gcd(d,N)=gcd(d,n)=1,
// //   $
// // ]
// // 
// // multiplication by $d$ permutes the residue classes modulo $N$.
// // 
// // The values
// // 
// // #nonum[
// //   $
// //   {
// //     cos(2 pi q/N)
// //     :
// //     q in ZZ/N ZZ
// //   }
// //   $
// // ]
// // 
// // decrease with the absolute value of the centered residue of $q$. Since $n$ is
// // odd, the $n$ centered residues nearest to $0$ form the set
// // 
// // #nonum[
// //   $
// //   R_n
// //   =
// //   {
// //     -(n-1)/2,
// //     dots,
// //     -1,
// //     0,
// //     1,
// //     dots,
// //     (n-1)/2
// //   }.
// //   $
// // ]
// // 
// // Because $d>n$, we have $N>2n$, and therefore every value indexed by
// // $R_n$ is positive. These points are consequently resonant crests by
// // @grid-crest-test.
// // 
// // The $n$ highest threshold crests are therefore precisely the grid points
// // $m/N$ satisfying
// // 
// // $
// // d m mod N in R_n ,
// // $ <highest-threshold-sites>
// // 
// // where the residue is taken in centered form.
// // 
// // Since
// // 
// // #nonum[
// //   $
// //   d equiv -n
// //   quad (mod N),
// //   $
// // ]
// // 
// // the condition in @highest-threshold-sites is equivalent, after replacing
// // $R_n$ by $-R_n = R_n$, to
// // 
// // #nonum[
// //   $
// //   n m mod N in R_n .
// //   $
// // ]
// // 
// // 
// // #remark(
// //   numbering: none,
// //   name: "Threshold amplitude spectrum",
// // )[
// //   The amplitudes of the
// //   $n$ highest threshold crests form the multiset
// // 
// //   #nonum[
// //     $
// //     {
// //       cos((2 pi r) / N)
// //       :
// //       r in R_n
// //     },
// //     quad
// //     R_n
// //     =
// //     {
// //       - (n - 1) / 2,
// //       dots,
// //       (n - 1) / 2
// //     }.
// //     $
// //   ]
// // 
// //   Hence their distinct amplitude levels are
// // 
// //   #nonum[
// //     $
// //     1,
// //     cos((2 pi) / N),
// //     cos((4 pi) / N),
// //     dots,
// //     cos(((n-1) pi) / N).
// //     $
// //   ]
// // ]
// // 
// // Thus the balanced threshold combines rational phase alignment on
// // the $N$-grid with a cosine-quantized amplitude spectrum.
// // 
// // 

#lemma(name: "Nearest-grid rounding is balanced at every scale")[
  Let $1<n<M$ be coprime integers, with $n$ odd, and define, for every
  $j in ZZ$,
  #nonum[
    $
    a_j=floor((j M) / n+1 / 2).
    $
  ]
  Then no rounding tie occurs,
  #nonum[
    $
    a_(j+n)=a_j+M,
    $
  ]
  and $0=a_0<a_1<dots<a_(n-1)<M$. For every
  $ell in {1,dots,n-1}$, the cyclic-lift distance
  #nonum[
    $
    Delta_ell (j)=a_(j+ell)-a_j
    $
  ]
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

/*
#remark(
  numbering: none,
  name: "Arithmetic rigidity and its limits",
)[
  Call $k in (0,1)$ a *full rational alignment* if
  $X_i (k) in QQ / ZZ$ for every anchored branch $i$. By
  @anchored-threshold-formula, $k_c$ is always a full rational alignment.
  Its uniqueness, however, depends essentially on $n$.

  For $n=3$, mirror symmetry leaves one independent branch, and full rational
  alignments are dense. For $n=5$, every admissible $d$ has a further interior
  full rational alignment distinct from $k_c$; uniqueness of that additional
  alignment remains open. For odd $n >= 7$, arithmetic rigidity is proved only
  in the trivial Conway--Jones regime: if the coincidence equation for the
  independent corridor pair with lengths $1$ and $2$ decomposes into trivial
  vanishing subsums in the sense of
  #cite(<conwayTrigonometricDiophantineEquations1976>), then a full rational
  alignment must satisfy $k=k_c$. Exceptional Conway--Jones relations have not
  been excluded.

  Thus $k_c$ is a distinguished rational grid-locking parameter, but no
  unconditional uniqueness theorem is asserted or used in the endpoint and
  amplitude-ranking arguments.
]
*/

The threshold and Euclidean-selection results needed for the main theorem are
now complete. The technically separate amplitude-ranking analysis is collected
in @secondary-amplitude-ranking-section.

/*
Moved to 06-secondary-amplitude-ranking.typ so that the balanced-threshold
section ends with the threshold selection result.

== Amplitude ranking outside the transition strip

For the upper parameter range, it is useful to run the deformation backward
from the regular $d$-grid. Put
#nonum[
  $
  W_j
  =
  (j/d-1/(4d),j/d+1/(4d))
  quad
  (j=0,dots,d-1),
  $
]
with intervals understood on the circle.

#proposition(name: "Upper-range amplitude ranking")[
  Let $k in (k_c,1)$. Then $F_k$ has exactly $d$ nondegenerate crests, one
  in each window $W_j$. Let $C_j (k)$ be the crest in $W_j$, let
  $B_j (k)=F_k (C_j (k))$, and let $r_j$ be the centered residue determined
  by
  #nonum[
    $
    r_j equiv n j mod d,
    quad
    -d/2<r_j<=d/2.
    $
  ]
  Then
  #nonum[
    $
    abs(r_j)<abs(r_(j'))
    quad ==> quad
    B_j (k)>B_(j') (k).
    $
  ]
  The $n$ anchored crests are exactly the windows for which
  $abs(r_j)<n/2$; consequently they are strictly the $n$ highest local maxima
  of $F_k$.
] <upper-range-amplitude-ranking>

#proof[
  Write
  #nonum[
    $
    phi_k (x)
    =
    k d sin(2 pi d x)+(1-k)n sin(2 pi n x),
    $
  ]
  so that $F_k '(x)=-2 pi phi_k (x)$. At the quarter-grid points
  $q_s=(2s+1)/(4d)$,
  #nonum[
    $
    phi_k (q_s)
    =
    (-1)^s k d+(1-k)n sin(2 pi n q_s).
    $
  ]
  Since $k>k_c$ is equivalent to $k d>(1-k)n$, these signs alternate.
  Hence $phi_k$ has a zero in each of the $2d$ cyclic intervals between
  consecutive quarter-grid points. A nonzero trigonometric polynomial of
  degree $d$ has at most $2d$ zeros counted with multiplicity, so these are
  all the zeros and each is simple. The intervals alternate between crests
  and troughs; because $F_k'$ points inward at the two ends of $W_j$, its
  unique stationary point is a crest.

  For $c in [-pi,pi]$, define
  #nonum[
    $
    h_k (u;c)
    =
    k cos(2 pi d u)+(1-k)cos(c+2 pi n u),
    quad
    M_k (c)
    =
    max_(abs(u)<=1/(4d)) h_k (u;c).
    $
  ]
  If $x=j/d+u$, then $F_k (x)=h_k (u;2 pi r_j/d)$. The unique crest in
  $W_j$ is the unique interior maximizer, so
  #nonum[
    $
    B_j (k)=M_k ((2 pi r_j)/d).
    $
  ]
  The identity $h_k (-u;-c)=h_k (u;c)$ makes $M_k$ even.

  The maximizer is unique for every $c in [-pi,pi]$, not only for the discrete
  residue phases above. Indeed, at each fast quarter-point
  $u_s=(2s+1)/(4d)$, the fast derivative term has magnitude $2 pi k d$ and
  the slow term has magnitude at most $2 pi(1-k)n$. Because
  $k d>(1-k)n$, the signs of $partial_u h_k (u_s;c)$ alternate with $s$,
  independently of $c$. Thus there is a critical point in every interval
  between consecutive quarter-points. Since $partial_u h_k$ is a nonzero
  trigonometric polynomial of degree $d$, it has at most $2d$ zeros counted
  with multiplicity. Hence every such interval contains exactly one simple
  critical point, and the central interval contains one unique maximizer.

  We claim that $M_k$ is strictly decreasing on $(0,pi)$. Fix
  $c in (0,pi)$ and let $u^*$ be its unique maximizer. At $u=0$,
  $partial_u h_k (0;c)<0$, while at $u=-1/(4d)$,
  #nonum[
    $
    partial_u h_k (-1/(4d);c)
    >=
    2 pi (k d-(1-k)n)
    >
    0.
    $
  ]
  Thus $-1/(4d)<u^*<0$, and therefore
  $c+2 pi n u^*<c<pi$. To obtain the lower bound, if
  $c>=pi n/(2d)$ then $c+2 pi n u^*>0$ follows from the strict left-window
  bound. If $c<pi n/(2d)$, the slow-component alignment point
  $u_a=-c/(2 pi n)$ lies inside the window and
  #nonum[
    $
    partial_u h_k (u_a;c)
    =
    2 pi k d sin((d c)/n)
    >
    0.
    $
  ]
  Uniqueness of the critical point gives $u^*>u_a$, hence again
  $c+2 pi n u^*>0$. The envelope identity now yields
  #nonum[
    $
    M_k '(c)
    =
    -(1-k)sin(c+2 pi n u^*)
    <
    0.
    $
  ]
  Since $M_k$ is continuous on $[0,pi]$, this strict order also covers
  comparisons with the endpoint $c=pi$, which occurs when $d$ is even.

  It remains to identify the anchored windows. Put
  #nonum[
    $
    m_i=floor((d i)/n+1/2),
    quad
    epsilon_i=n m_i-i d.
    $
  ]
  Then $abs(epsilon_i)<= (n-1)/2$, and the $n$ values $epsilon_i$ are
  distinct modulo $n$ because $epsilon_i equiv -i d mod n$. They therefore
  exhaust the centered residues
  ${-(n-1)/2,dots,(n-1)/2}$. Since $d>n$, the centered residue of the site
  $m_i$ modulo $d$ is exactly $r_(m_i)=epsilon_i$. Thus the endpoint sites
  of the anchored branches are precisely the sites with $abs(r_j)<n/2$.

  Finally, @anchored-threshold-formula gives
  #nonum[
    $
    X_i (k_c)=(i+m_i)/(n+d),
    quad
    m_i/d-X_i (k_c)=epsilon_i/(d(n+d)).
    $
  ]
  The last absolute value is less than $1/(4d)$ because
  $2(n-1)<n+d$. Hence $X_i (k_c) in W_(m_i)$. By
  @anchored-continuation, the branch then moves monotonically to $m_i/d$ and
  remains in that window for $k in [k_c,1]$. It is therefore the crest
  $C_(m_i) (k)$. The strict decrease of $M_k$ in $abs(r_j)$ proves the
  ranking.
]

A complementary estimate settles a nontrivial interval near $k=0$.

#proposition(name: "Small-modulation crest count")[
  Set
  #nonum[
    $
    k_0
    =
    n^2/(n^2+2d^2).
    $
  ]
  For every $k in [0,k_0]$, the function $F_k$ has exactly $n$ crests, and
  they are the anchored crests.
] <small-modulation-ranking>

#proof[
  The case $k=0$ is immediate. For $0<k<=k_0$, set
  #nonum[
    $
    sigma
    =
    (k d)/((1-k)n),
    quad
    tau
    =
    (k d^2)/((1-k)n^2).
    $
  ]
  At every stationary point,
  #nonum[
    $
    abs(sin(2 pi n x))<=sigma.
    $
  ]
  Thus
  #nonum[
    $
    cos(2 pi n x)
    >=
    sqrt(1-sigma^2)
    quad "or" quad
    cos(2 pi n x)
    <=
    -sqrt(1-sigma^2).
    $
  ]
  The crest inequality
  #nonum[
    $
    k d^2 cos(2 pi d x)+(1-k)n^2 cos(2 pi n x)>0
    $
  ]
  implies $cos(2 pi n x)>-tau$. Hence the second alternative cannot contain
  a crest whenever $tau<sqrt(1-sigma^2)$. In the first alternative the same
  curvature expression is at least
  #nonum[
    $
    (1-k)n^2 (sqrt(1-sigma^2)-tau)
    >
    0,
    $
  ]
  so every stationary point there is a crest.

  For $k<=k_0$,
  #nonum[
    $
    sigma<=n/(2d)<1/2,
    quad
    tau<=1/2<sqrt(1-sigma^2).
    $
  ]
  Each anchored branch starts in one of the $n$ disjoint arcs around the
  initial $n$-grid. Because it remains a crest by @anchored-continuation, it
  cannot enter a half-grid arc, which contains no crest under the inequality
  above. Continuity therefore keeps one anchored crest in each original
  anchor arc. No such arc can contain a second crest: two crests would require
  an intervening stationary point that is not a crest, whereas every
  stationary point in these arcs is a crest. Therefore there are exactly $n$
  crests, all anchored.
]

#corollary(name: "Amplitude-selection range")[
  With
  #nonum[
    $
    k_0=n^2/(n^2+2d^2)
    quad "and" quad
    k_c=n/(n+d),
    $
  ]
  and with $h_0>0$ defined in @subcritical-strip-ranking, the anchored crests
  are precisely the $n$ highest local maxima for every
  #nonum[
    $
    k in [0,k_0] union (k_c-h_0,1).
    $
  ]
  At $k=1$ all $d$ crest amplitudes are equal. The unresolved parameter set is
  therefore contained in
  #nonum[
    $
    (k_0,k_c-h_0]
    $
  ]
  when $k_0<k_c-h_0$, and is empty otherwise.
] <amplitude-selection-range>

#proof[
  Use @small-modulation-ranking on $[0,k_0]$,
  @subcritical-strip-ranking on $(k_c-h_0,k_c)$,
  @anchored-threshold-selection at $k=k_c$, and
  @upper-range-amplitude-ranking on $(k_c,1)$. At $k=1$ all $d$ crest
  amplitudes are equal, so a strict top-$n$ selection is unavailable.
]


== Convexity and subcritical amplitude control

For each anchored branch, define its crest amplitude by
#nonum[
  $
  A_i (k)=F_k (X_i (k)).
  $
]

#lemma(name: "Anchored-amplitude convexity and floor")[
  Put
  #nonum[
    $
    N=n+d,
    quad
    m_i=floor((d i)/n+1/2),
    quad
    epsilon_i=n m_i-i d.
    $
  ]
  Then $A_i$ is convex on $[0,1]$ and satisfies
  #nonum[
    $
    A_i '(k_c)=0,
    quad
    A_i (k)
    >=
    A_i (k_c)
    =
    cos((2 pi epsilon_i)/N)
    >=
    cos((pi(n-1))/N)
    $
  ]
  for every $k in [0,1]$. Thus $A_i$ is nonincreasing on $[0,k_c]$ and
  nondecreasing on $[k_c,1]$.
] <anchored-amplitude-floor>

#proof[
  Along a stationary branch, the envelope identity gives
  #nonum[
    $
    A_i '(k)
    =
    partial_k F_k (X_i (k))
    =
    cos(2 pi d X_i (k))-cos(2 pi n X_i (k)).
    $
  ]
  Since $F_k$ is affine in $k$, differentiating once more and using
  implicit differentiation of
  $partial_x F_k (X_i (k))=0$ yields
  #nonum[
    $
    A_i ''(k)
    =
    -
    (partial_(k x) F_k (X_i (k)))^2
    /
    partial_(x x) F_k (X_i (k))
    >=
    0.
    $
  ]
  The denominator is negative by @anchored-continuation, because every
  anchored branch remains a nondegenerate crest. The calculation applies on
  $(0,1)$, and the analytic one-sided endpoint extensions preserve convexity
  on the closed interval.

  At $k_c=n/N$, @anchored-threshold-formula gives
  $X_i (k_c)=(i+m_i)/N$. Since $d equiv -n mod N$ and
  $n(i+m_i) equiv epsilon_i mod N$, the two cosine values in the envelope
  identity coincide. Hence $A_i '(k_c)=0$ and
  #nonum[
    $
    A_i (k_c)=cos((2 pi epsilon_i)/N).
    $
  ]
  Convexity makes this the global minimum. Finally,
  $abs(epsilon_i)<= (n-1)/2$, so monotonicity of the cosine on $[0,pi]$
  gives the displayed uniform lower bound. The fixed branch $i=0$ has
  $A_0 (k)=1$ and is included.
]

The floor is positive because $d>n$. It records a global feature of the
anchored family: every anchored amplitude reaches its minimum at slope
balance, even though extra unanchored extrema may occur elsewhere.

#proposition(name: "Subcritical anchored windows")[
  For $k in (0,k_c)$, let
  #nonum[
    $
    V_i
    =
    (i/n-1/(4n),i/n+1/(4n))
    quad
    (i=0,dots,n-1),
    $
  ]
  with intervals understood on the circle. Each $V_i$ contains a crest, and
  the anchored crest $X_i (k)$ lies in $V_i$.
] <subcritical-anchored-windows>

#proof[
  Put
  #nonum[
    $
    phi_k (x)
    =
    k d sin(2 pi d x)+(1-k)n sin(2 pi n x),
    quad
    F_k '(x)=-2 pi phi_k (x).
    $
  ]
  At the quarter-points $y_s=(2s+1)/(4n)$,
  #nonum[
    $
    phi_k (y_s)
    =
    (1-k)n(-1)^s+k d sin(2 pi d y_s).
    $
  ]
  Since $k<k_c$ is equivalent to $k d<(1-k)n$, these signs alternate.
  Therefore $F_k'$ points inward at the two endpoints of every $V_i$, and
  an interior crest exists.

  Moreover, with $N$, $m_i$, and $epsilon_i$ as in
  @anchored-amplitude-floor, @anchored-threshold-formula gives
  #nonum[
    $
    X_i (k_c)-i/n
    =
    epsilon_i/(n N).
    $
  ]
  Its absolute value is less than $1/(4n)$ because
  $2(n-1)<N$. The monotone corridor in @anchored-continuation joins
  $i/n$ to $X_i (k_c)$ for $0<=k<=k_c$, so the entire anchored segment lies
  in $V_i$.
]

This proposition does not bound the total number of crests: additional
unanchored crests may coexist with the anchored family. The next lemma controls
the height at which any nontrivial stationary degeneracy can occur.

#lemma(name: "Degenerate stationary values below slope balance")[
  Let $N=n+d$ and $k_c=n/N$. Suppose
  $F_(k^*) '(x^*)=H_(k^*) (x^*)=0$ with
  $x^* in.not {0,1/2}$, and put $u=k_c-k^*$. Then $k^*<=k_c$ and
  #nonum[
    $
    F_(k^*) (x^*)^2
    =
    ((d^2-n^2) N u ((1-k^*) n+k^* d))/(n^2 d^2)
    <=
    (2 N (d-n))/(n d) u.
    $
  ]
] <degenerate-values-below-balance>

#proof[
  At $k^*=0$ or $k^*=1$, stationarity and degeneracy would require a sine and
  cosine of the same phase to vanish simultaneously, which is impossible.
  Hence $0<k^*<1$. Set $a=2 pi d x^*$, $b=2 pi n x^*$, and
  #nonum[
    $
    rho=((1-k^*) n)/(k^* d).
    $
  ]
  The stationarity and degeneracy equations give
  #nonum[
    $
    sin(a)=-rho sin(b),
    quad
    cos(a)=-rho n/d cos(b).
    $
  ]
  Squaring and adding yields
  #nonum[
    $
    1=rho^2 (1-(1-n^2/d^2)cos(b)^2).
    $
  ]
  Hence $rho>=1$, which is equivalent to $k^*<=k_c$, and
  #nonum[
    $
    cos(b)^2
    =
    (rho^2-1)/(rho^2(1-n^2/d^2)).
    $
  ]
  Substitution into
  #nonum[
    $
    F_(k^*) (x^*)
    =
    (1-k^*)(1-n^2/d^2)cos(b)
    $
  ]
  gives the displayed identity. Finally,
  #nonum[
    $
    (1-k^*)n+k^* d
    =
    2 n d/N-u(d-n)
    <=
    2 n d/N,
    $
  ]
  which proves the bound.
]

#lemma(name: "Stationary-branch continuation alternative")[
  Let $a<b$ and suppose that $(a,x_a)$ is a nondegenerate stationary point of
  $F_a$. Follow its stationary graph toward increasing $k$ while the curvature
  remains nonzero. Either the graph reaches $k=b$, or its maximal parameter
  interval ends at some $k^* in (a,b)$ and the closure of the graph contains a
  degenerate stationary point $(k^*,x^*)$.
] <stationary-branch-alternative>

#proof[
  The implicit-function theorem gives a unique local graph wherever
  $H_k (x)!=0$. Let $[a,k^*)$ be its maximal interval before $b$. If
  $k^*<b$, compactness of the phase circle supplies a limit point
  $(k^*,x^*)$ of the graph. Continuity gives $G_(k^*) (x^*)=0$. If
  $H_(k^*) (x^*)!=0$, the implicit-function theorem extends the same graph
  beyond $k^*$, contradicting maximality. Hence $H_(k^*) (x^*)=0$.
]

#theorem(name: "Subcritical amplitude-ranking strip")[
  Put
  #nonum[
    $
    phi=cos((pi(n-1))/N),
    quad
    c_0=max(cos((pi(n+1))/N),0),
    quad
    C=sqrt((2 N (d-n))/(n d)),
    $
  ]
  and define
  #nonum[
    $
    h_0
    =
    min(
      (phi-c_0)/2,
      ((sqrt(C^2+8 phi)-C)/4)^2
    ).
    $
  ]
  Then $h_0>0$. For every $k in (k_c-h_0,k_c)$, every unanchored
  local maximum of $F_k$, including a degenerate one, has amplitude strictly
  below $phi$. Consequently, the anchored crests
  are precisely the $n$ highest local maxima for every
  $k in (k_c-h_0,1)$.
] <subcritical-strip-ranking>

#proof[
  Since $d>n$, one has $phi>c_0>=0$ and $C>0$, so both quantities in the
  minimum defining $h_0$ are positive. Hence $h_0>0$.

  Fix $k in (k_c-h_0,k_c)$ and put $h=k_c-k$. By
  @anchored-amplitude-floor, every anchored crest has amplitude at least $phi$.
  Let $x$ be an unanchored local maximum. If $H_k (x)=0$ and
  $x in.not {0,1/2}$, @degenerate-values-below-balance gives
  $F_k (x)<=C sqrt(h)<phi$. The point $x=0$ is the fixed anchored crest. At
  $x=1/2$, the standing assumption that $n$ is odd gives
  $cos(2 pi n x)=-1$. If $d$ is odd, both cosine values are $-1$, so the point
  is always a trough. If $d$ is even, its unique degeneracy occurs at
  $k=n^2/(n^2+d^2)<1/2$ and has amplitude $2k-1<0<phi$. Thus every degenerate
  local maximum already satisfies the required bound.

  It remains to treat a nondegenerate unanchored crest. Follow its stationary
  graph toward increasing $k$. By @stationary-branch-alternative, the graph
  either reaches $k_c$ or has a terminal degenerate stationary point before
  $k_c$.

  If the branch reaches $k_c$, it cannot meet a nondegenerate anchored crest,
  by local uniqueness of stationary continuation. Therefore
  @threshold-family-separation bounds its limiting amplitude by $c_0$. Along every nondegenerate stationary branch, the envelope
  identity gives
  #nonum[
    $
    abs(dif/(dif k) F_k (X(k)))<=2.
    $
  ]
  Therefore its amplitude at $k$ is at most
  $c_0+2h<phi$, because $h<h_0<=(phi-c_0)/2$.

  Otherwise, let $k^* in [k,k_c)$ be the terminal parameter and put
  $u=k_c-k^*<=h$. If a terminal limit point is different from $0$ and $1/2$,
  @degenerate-values-below-balance bounds its amplitude by $C sqrt(u)$. The
  point $0$ cannot occur because it is nondegenerate and anchored; at $1/2$
  the terminal amplitude is negative, so the same upper bound still holds.
  The envelope bound gives
  #nonum[
    $
    F_k (x)
    <=
    C sqrt(u)+2(h-u)
    <=
    C sqrt(h)+2h
    <
    phi.
    $
  ]
  The last inequality follows from the second term in the definition of
  $h_0$. Hence every unanchored crest lies strictly below the common anchored
  floor. Combining this result below $k_c$ with
  @anchored-threshold-selection and @upper-range-amplitude-ranking proves the
  final statement.
]

The theorem requires no bound on the number of subcritical crests and permits
additional stationary pairs to appear. The remaining conjecture is only
nonvacuous below the proved strip. The common floor remains a sufficient, not
necessary, comparison level because individual anchored amplitudes can lie
strictly above it.
*/

/*
== Relation to the anchored branches

@euclidean-threshold-crests identifies the $n$ highest crests at the threshold without using
global branch continuation. It is therefore an unconditional statement about
the threshold slice $F_(k_c)$.

To conclude that the anchored crest branches occupy these same sites, one
needs an additional branch-identification result. The amplitude-selection
conjecture from the preceding section would provide such a result: if the
anchored crests are precisely the $n$ highest local maxima of $F_k$ for
every $k in [0,1)$, then at $k=k_c$ they occupy the Euclidean threshold
configuration described above.

Under that hypothesis, every nonfixed anchored branch passes through a
resonant joint critical point. The threshold-turning observation, using
@threshold-joint-critical and @A-second-deriv, then implies that its amplitude
reaches a strict minimum at $k_c$.

Thus the conditional dynamical picture is

#nonum[
  $
  "anchored branch"
  arrow
  "highest threshold crest"
  arrow
  "resonant grid point"
  arrow
  "amplitude minimum at " k_c .
  $
]

The first implication is conjectural. The remaining implications are proved in this section and by the convexity
identity @A-second-deriv from the preceding section.
*/

/*
== Transition

The slope-balanced parameter yields a completely explicit configuration for
the $n$ highest crests of $F_(k_c)$. These crests lie on the resonant
$(n+d)$-grid, are jointly critical in phase and modulation, and have
Euclidean circular spacing.

The next section uses the order-preserving lifts
$X_0 (k),dots,X_(n-1) (k)$ to define the circular spacing functions
$D_i (k)=X_(i+1) (k)-X_i (k)$, with cyclic closure. Their vector is the Huplet,
and @anchored-continuation gives its globally defined endpoint Quplet.
By @anchored-threshold-selection, the Huplet at $k_c$ is already identified
with the highest threshold crests.
*/

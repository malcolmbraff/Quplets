#import "definitions.typ": *

= Full-interval amplitude ranking <section-full-ranking>

The anchored continuation theorem identifies the labeled crest family and its Euclidean endpoint. This section proves the complementary prominence statement: although additional stationary pairs may appear, the anchored family remains exactly the set of highest crests throughout the open modulation interval. Put $k_c=n/(n+d)$.

== Ranking above slope balance

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


== A uniform anchored floor

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

== Fixed-parameter phase sheets below slope balance <fixed-parameter-phase-sheets>


Write $mu=n/d$ and $k_c=n/(n+d)=mu/(1+mu)$. The threshold and upper-range ranking are already known for $k >= k_c$, so the only open range is $0<k<k_c$.


 Fix $k<k_c$ and a grid-side crest in the $p$-th $d$-cell relative to the $n$-grid crest $i/n$. As above, put
#nonum[
  $ t=2 pi d(x-p/d), quad
    s=2 pi n(x-i/n), quad
    alpha=2 pi n(p/d-i/n), $
]
so that $s=alpha+mu t$ and $-pi<t<pi$. By reflection it is enough to consider $s>0$. Stationarity then forces $t<0$. Set
#nonum[
  $ u=-t in (0,pi), quad
    sigma=(k d)/((1-k)n)=k/((1-k)mu)<1. $
]
The stationary equation becomes
#nonum[
  $ sin s=sigma sin u. $
]


On the grid-side sheet, $0<s<pi/2$, hence
#nonum[
  $ s=arcsin(sigma sin u), quad
    alpha(u)=arcsin(sigma sin u)+mu u. $
]
The crest condition is
#nonum[
  $ C(u):=k cos u+(1-k)mu^2 cos s>0. $
]
Differentiating the phase gives
#nonum[
  $ alpha'(u)
    =mu+(sigma cos u)/sqrt(1-sigma^2 sin^2 u)
    =C(u)/((1-k)mu cos s). $
]
Since $cos s>0$, a stationary point on this sheet is a nondegenerate crest exactly when $alpha'(u)>0$.


For $0<u<=pi/2$, both terms in $alpha'(u)$ are positive. For $pi/2<u<pi$, put $z=-cos u$ and
#nonum[
  $ B(z)= (sigma z)/sqrt(1-sigma^2+sigma^2 z^2). $
]
Then
#nonum[
  $ (dif B)/(dif z)
    =(sigma(1-sigma^2))/(1-sigma^2+sigma^2 z^2)^(3/2)>0, $
]
and $alpha'(u)=mu-B(z)$. Thus $alpha'$ has at most one zero on $(pi/2,pi)$. Because it is positive at $u=pi/2$, the crest set on the grid-side sheet is an interval beginning at $u=0$. Consequently, if a grid-side crest exists at $u=u_p$, then every $u in [0,u_p]$ lies on the same nondegenerate crest sheet and $alpha(u)$ is strictly increasing there. Inverting $alpha(u)$ gives the required continuation at the same fixed parameter $k$ from the crest's cell phase to $alpha=0$.


This continuation remains in the full phase interval. For $u<=pi/2$ we have
$alpha<(1+mu)pi/2<pi$. If no fold occurs, then
$alpha(u)<=alpha(pi)=mu pi<pi$. At a fold, write $v=pi-u$.
The fold equation gives $tan s=mu tan v$, hence $s<v$, and therefore
#nonum[
  $ alpha=mu pi+s-mu v<pi. $
]
The negative phase side follows by the symmetry $(alpha,t) mapsto (-alpha,-t)$.


The full phase interval also contains the second sine branch
#nonum[
  $ s_"out"(u)=pi-arcsin(sigma sin u). $
]
For $sigma<1$, this outer branch contains a crest segment only when
$mu<sigma<1$. It is the half-grid-side component. At its phase endpoint
$u=0$, its height is
#nonum[
  $ M=2k-1<0, $
]
because $k<k_c<1/2$. At its terminal fold, $C(u)=0$, and therefore
#nonum[
  $ M=-(1-k)(1-mu^2) abs(cos s)<0. $
]
Since $partial M/partial alpha=-(1-k)sin s<0$ for $0<s<pi$, the height is monotone between these two endpoints. Hence the entire disconnected outer crest component has negative height. The boundary values introduce no further crest: $s=0$ forces $x$ onto both grids, hence $x=0=X_0$ by coprimality, while $s=pi$ is the $u=0$ endpoint of the outer component. Thus every crest capable of competing with the anchored family lies on the central grid-side sheet proved above.


== Global phase ordering


Let $M_k (alpha)$ be the height on the central fixed-$k$ crest sheet. The envelope identity gives
#nonum[
  $ partial M_k/partial alpha=-(1-k)sin s. $
]
On the positive phase side this derivative is strictly negative. Reflection gives
#nonum[
  $ M_k (-alpha) = M_k (alpha). $
]
Therefore $M_k (alpha)$ is a strictly decreasing function of $abs(alpha)$ throughout the central sheet.


== Centered-residue separation <centered-residue-phase-gap>


For the anchored branch issued from $i/n$, let
#nonum[
  $ q_i=floor((d i)/n+1/2), quad r_i=n q_i-d i. $
]
Because $n$ is odd and $gcd(n,d)=1$, the centered residues are exactly
#nonum[
  $ {r_i:0<=i<n}
    ={-(n-1)/2,dots,(n-1)/2}. $
]
For $0<k<k_c$, every anchored branch lies on the central grid-side sheet,
in the cell of its endpoint. Along the corridor of @anchored-continuation,
the slow phase
#nonum[
$ s=2 pi n (X_i (k)-i/n) $
]
increases in absolute value with $k$. At the threshold,
@anchored-threshold-formula gives
#nonum[
$ abs(s) <= abs(s(k_c))
= (2 pi abs(r_i))/N
<= (pi(n-1))/N
< pi/2 $
]
for every $k<=k_c$. Moreover, $X_i (k)$ lies between $i/n$ and $q_i/d$, and
#nonum[
$ abs((d i)/n-q_i)
= abs(r_i)/n
<= (n-1)/(2 n)
< 1/2, $
]
so the anchored crest occupies the cell $p=q_i$.

Thus every anchored cell phase satisfies
#nonum[
  $ abs(alpha_i)= (2 pi abs(r_i))/d <= (pi(n-1))/d. $
]


Now let $p/d$ label an unanchored crest in the $i$-th $n$-lobe. Because $alpha(u)$ is strictly increasing along the crest portion of the
sheet, each pair of lobe and cell carries at most one grid-side crest; the
anchored crest occupies the pair $(i, q_i)$, so an unanchored crest in the
$i$-th lobe has $p != q_i$.
Since the $p$-cell is not the selected cell $q_i$, there is a nonzero integer $ell$ such that
#nonum[
  $ n p-d i=r_i+n ell. $
]
Consequently
#nonum[
  $ abs(n p-d i)
    >=n-abs(r_i)
    >=(n+1)/2, $
]
and the corresponding cell phase satisfies
#nonum[
  $ abs(alpha_p)>=(pi(n+1))/d
    >(pi(n-1))/d
    >=abs(alpha_j) $
]
for every anchored cell $j$.


Every grid-side unanchored crest and every anchored crest lie on the same universal central height sheet. The strict phase ordering therefore gives
#nonum[
  $ F_k (Y) = M_k (alpha_p)
    < M_k (alpha_j) = F_k (X_j (k)) $
]
for every anchored crest $X_j (k)$. In particular, a grid-side unanchored crest lies below the lowest anchored crest, not merely below the anchored crest in its own lobe.



== Full prominence theorem

#theorem(name: "Full prominence ranking")[
  Let $1<n<d$ be coprime integers with $n$ odd. For every $0<k<1$, the
  $n$ anchored crests of
  #nonum[
    $
    F_k (x)=k cos(2 pi d x)+(1-k)cos(2 pi n x)
    $
  ]
  are precisely its $n$ highest local maxima.
] <full-prominence-ranking>

#proof[
  For $0<k<k_c$, the two sine sheets in
  @fixed-parameter-phase-sheets exhaust the stationary possibilities. The
  fixed-parameter continuation and @centered-residue-phase-gap place every
  central-sheet unanchored crest strictly below every anchored crest. Every
  outer-sheet crest has negative amplitude, whereas
  @anchored-amplitude-floor gives
  #nonum[
    $
    F_k (X_j (k))
    >=
    cos((pi(n-1))/(n+d))
    >0.
    $
  ]
  Thus every unanchored crest lies strictly below the lowest anchored crest.

  At $k=k_c$, @anchored-threshold-selection identifies the anchored crests as
  the $n$ highest. For $k_c<k<1$,
  @upper-range-amplitude-ranking gives the same conclusion. Combining the
  three ranges proves the claim.
]

At $k=1$, all $d$ crests have height $1$, so that endpoint is necessarily
excluded from a strict amplitude selection.

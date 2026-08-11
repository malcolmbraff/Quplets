#import "definitions.typ": *

= Secondary amplitude-ranking results <secondary-amplitude-ranking-section>

The Euclidean endpoint theorem depends only on anchored continuation and
nearest-grid rounding; it does not require the anchored crests to dominate all
unanchored maxima at intermediate parameters. This final technical section
records the separate amplitude-ranking results and isolates the remaining
subcritical interval.

// BEGIN NEW INSERTION: reader roadmap
#text(fill: red)[
*How this section relates to the main theorem.* The continuation, endpoint, and Euclidean-rhythm results are already complete. We now address the separate musical question of prominence: whether the $n$ crests followed from the initial grid are also the $n$ highest visible crests. The next results prove this in the outer parameter ranges and isolate the remaining middle interval.
]
// END NEW INSERTION: reader roadmap

== Ranking above slope balance and near the initial grid

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

#corollary(name: "Quplet as a highest-crest limit")[
  For $k<1$ sufficiently close to $1$, let $C_k$ be the labeled configuration
  of the $n$ highest local maxima of $F_k$. Then
  #nonum[
    $
    lim_(k -> 1^-) C_k = Q(n,d).
    $
  ]
] <quplet-highest-crest-limit>

#proof[
  By @upper-range-amplitude-ranking, $C_k$ is precisely the configuration of
  anchored crests for $k$ sufficiently close to $1$. By
  @anchored-continuation and @nearest-grid-endpoints, those labeled positions
  converge to the endpoint configuration that defines $Q(n,d)$.
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

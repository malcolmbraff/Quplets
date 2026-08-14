#let nonum(body) = math.equation(body, block: true, numbering: none)

#set page(margin: (x: 2.6cm, y: 2.6cm))
#set par(justify: true, leading: 0.62em)
#set text(size: 10.5pt)
#set heading(numbering: "1.1.")

#align(center)[
  #text(size: 15pt)[*D-cell corridors and the nearest-cell comparison*] \
  #v(0.3em)
  #text(size: 11pt)[Companion note to _Crest continuation and canonical Euclidean-rhythm selection_] \
  #v(0.3em)
  Malcolm Braff, HSM Basel, FHNW
]

#v(1em)

*Status.* This note proves three structural facts needed for the n-highest-crests conjecture: every ordinary stationary degeneracy is a birth as $k$ increases; a crest cannot cross a $d$-cell boundary; and hence every newborn crest has a permanent $d$-site label. It also proves the exact nearest-cell height comparison on every connected sheet of positive-lobe crests. The full phase-sheet continuation and centered-residue separation proved below close the final stitching gap: the anchored crests are precisely the n highest local maxima for every $0 < k < 1$.

= Setting

Let $1 < n < d$ be coprime integers, with $n$ odd, and put
$F_k(x) = (1-k) cos(2 pi n x) + k cos(2 pi d x)$ on $RR / ZZ$, where
$k in [0,1]$. The $n$ anchored branches issued from the $n$-grid are known from the main paper to end at the $n$ nearest selected $d$-sites.

= Every ordinary fold is a birth

At a stationary degeneracy $(k_*,x_*)$, set
$a = 2 pi d x_*$ and $b = 2 pi n x_*$. The fold equations are
#nonum[
  $ k_* d sin a + (1-k_*) n sin b = 0, $
  $ k_* d^2 cos a + (1-k_*) n^2 cos b = 0. $
]

Suppose first that $sin b != 0$. The local equation for stationary points is
#nonum[
  $ F_x(k,x) = F_(x k)(k_*,x_*) (k-k_*)
    + 1/2 F_(x x x)(k_*,x_*) (x-x_*)^2 + dots. $
]
A crest--trough pair is created as $k$ increases exactly when
$-2 F_(x k) / F_(x x x) > 0$. The first fold equation gives
#nonum[
  $ F_(x k) = (2 pi n)/k_* sin b, $
]
and, after the same substitution,
#nonum[
  $ F_(x x x) = (2 pi)^3 (1-k_*) n (n^2-d^2) sin b. $
]
Therefore
#nonum[
  $ - 2 F_(x k) / F_(x x x)
    = 2 / ((2 pi)^2 k_*(1-k_*)(d^2-n^2)) > 0. $
]
Thus every ordinary fold creates, rather than destroys, a crest--trough pair.

The exceptional aligned case has $sin a = sin b = 0$. Apart from the permanently nondegenerate point $x=0$, the only relevant point is $x=1/2$. Its direct Taylor expansion gives the familiar symmetric creation event; it increases the number of crests rather than removing one. Hence no crest can terminate at an upward fold.

= Fixed $d$-cell labels

For $p in ZZ/d ZZ$, let
#nonum[
  $ C_p = ((p-1/2)/d, (p+1/2)/d) $
]
be the open cell centred at $p/d$.

*Proposition.* No nondegenerate crest crosses a $d$-cell boundary for $0 < k < 1$.

*Proof.* A crossing would pass through $x_p = (p+1/2)/d$. At that point the derivative of the $d$-term vanishes, so
#nonum[
  $ F'_k(x_p) = -2 pi (1-k)n sin(2 pi n x_p). $
]
For $0 < k < 1$, stationarity requires $n(2p+1)/d in ZZ$. Coprimality forces $d | (2p+1)$, which is possible only when $d$ is odd and $x_p = 1/2$. In that sole case,
#nonum[
  $ F''_k(1/2) = (2 pi)^2 ((1-k)n^2 + k d^2) > 0, $
]
because then both $n$ and $d$ are odd. Thus the exceptional boundary is always a trough, never a crest. $square$

Consequently every newborn crest remains in its birth cell and, as $k arrow 1$, reaches that cell's centre $p/d$. The anchored branches occupy the $n$ selected nearest $d$-cells; every newborn crest is therefore labelled by one of the complementary $d-n$ cells.

= Exact nearest-cell comparison on a crest sheet

Fix an $n$-grid crest $i/n$ and a $d$-cell centred at $p/d$ in its positive $n$-lobe. Write
#nonum[
  $ x = p/d + t/(2 pi d), quad
    alpha = 2 pi n (p/d-i/n), quad epsilon = n/d. $
]
Inside the cell,
#nonum[
  $ F_k(x) = k cos t + (1-k) cos(alpha + epsilon t). $
]
Let $t=t(k,alpha)$ be a nondegenerate crest on a connected stationary sheet, and let $M(k,alpha)$ denote its height. Put $s = alpha + epsilon t$. Because the crest lies in the positive $n$-lobe, $-pi/2 < s < pi/2$.

Stationarity and the envelope identity give
#nonum[
  $ k sin t + (1-k) epsilon sin s = 0, $
  $ partial M / partial alpha = -(1-k) sin s. $
]
If $s=0$, stationarity gives $sin t=0$; inside an open $d$-cell this forces $t=0$, and then $alpha=0$. Since at $k=1$ we have $t=0$ and $s=alpha$, the sign of $s$ agrees with the sign of $alpha$ on every such sheet. Therefore
#nonum[
  $ partial M / partial alpha < 0 quad (alpha>0), $
  $ partial M / partial alpha > 0 quad (alpha<0). $
]

*Sheet comparison theorem.* Along any connected sheet of positive-lobe crests, the crest height strictly decreases as the associated $d$-cell centre moves away from the $n$-grid crest. In particular, the cell closest to the centre is strictly higher than every farther cell represented on the same sheet.

= Complementary phase viewpoint

For the local phase-biased profiles
#nonum[
  $ H_k^plus(y) = (1-k) cos(a y) - k cos(b y + eta), $
  $ H_k^minus(y) = (1-k) cos(a y) - k cos(b y - eta), $
]
we have the exact identity
#nonum[
  $ H_k^plus(y) - H_k^minus(y) = 2 k sin(b y) sin eta. $
]
Thus on a monotonic short-wave half-cell the phase placement bringing the short-wave crest nearer the positive-lobe centre is uniformly favoured for every $0 < k < 1$. This is the local two-placement version of the sheet comparison above.

= Full phase domain and fixed-parameter continuation


Write $epsilon=n/d$ and $k_c=n/(n+d)=epsilon/(1+epsilon)$. The threshold and upper-range ranking are already known for $k >= k_c$, so the only open range is $0<k<k_c$.


Normalize the low-frequency phase by
#nonum[
  $ a=alpha/(2 pi), quad phi=s/(2 pi), $
]
with phase represented in the full fundamental interval $[-1/2,1/2]$. Fix $k<k_c$ and a grid-side crest in the $p$-th $d$-cell relative to the $n$-grid crest $i/n$. As above, put
#nonum[
  $ t=2 pi d(x-p/d), quad
    s=2 pi n(x-i/n), quad
    alpha=2 pi n(p/d-i/n), $
]
so that $s=alpha+epsilon t$ and $-pi<t<pi$. By reflection it is enough to consider $s>0$. Stationarity then forces $t<0$. Set
#nonum[
  $ u=-t in (0,pi), quad
    sigma=(k d)/((1-k)n)=k/((1-k)epsilon)<1. $
]
The stationary equation becomes
#nonum[
  $ sin s=sigma sin u. $
]


On the grid-side sheet, $0<s<pi/2$, hence
#nonum[
  $ s=arcsin(sigma sin u), quad
    alpha(u)=arcsin(sigma sin u)+epsilon u. $
]
The crest condition is
#nonum[
  $ C(u):=k cos u+(1-k)epsilon^2 cos s>0. $
]
Differentiating the phase gives
#nonum[
  $ alpha'(u)
    =epsilon+(sigma cos u)/sqrt(1-sigma^2 sin^2 u)
    =C(u)/((1-k)epsilon cos s). $
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
and $alpha'(u)=epsilon-B(z)$. Thus $alpha'$ has at most one zero on $(pi/2,pi)$. Because it is positive at $u=pi/2$, the crest set on the grid-side sheet is an interval beginning at $u=0$. Consequently, if a grid-side crest exists at $u=u_p$, then every $u in [0,u_p]$ lies on the same nondegenerate crest sheet and $alpha(u)$ is strictly increasing there. Inverting $alpha(u)$ gives the required continuation at the same fixed parameter $k$ from the crest's cell phase to $alpha=0$.


This continuation remains in the full phase interval. For $u<=pi/2$ we have
$alpha<(1+epsilon)pi/2<pi$. If no fold occurs, then
$alpha(u)<=alpha(pi)=epsilon pi<pi$. At a fold, write $v=pi-u$.
The fold equation gives $tan s=epsilon tan v$, hence $s<v$, and therefore
#nonum[
  $ alpha=epsilon pi+s-epsilon v<pi. $
]
The negative phase side follows by the symmetry $(alpha,t) mapsto (-alpha,-t)$.


The full phase interval also contains the second sine branch
#nonum[
  $ s_"out"(u)=pi-arcsin(sigma sin u). $
]
For $sigma<1$, this outer branch contains a crest segment only when
$epsilon<sigma<1$. It is the half-grid-side component. At its phase endpoint
$u=0$, its height is
#nonum[
  $ M=2k-1<0, $
]
because $k<k_c<1/2$. At its terminal fold, $C(u)=0$, and therefore
#nonum[
  $ M=-(1-k)(1-epsilon^2) abs(cos s)<0. $
]
Since $partial M/partial alpha=-(1-k)sin s<0$ for $0<s<pi$, the height is monotone between these two endpoints. Hence the entire disconnected outer crest component has negative height. Thus every crest capable of competing with the anchored family lies on the central grid-side sheet proved above.


= Global phase ordering


Let $M_k(alpha)$ be the height on the central fixed-$k$ crest sheet. The envelope identity gives
#nonum[
  $ partial M_k/partial alpha=-(1-k)sin s. $
]
On the positive phase side this derivative is strictly negative. Reflection gives
#nonum[
  $ M_k(-alpha)=M_k(alpha). $
]
Therefore $M_k(alpha)$ is a strictly decreasing function of $abs(alpha)$ throughout the central sheet.


= Centered-residue separation


For the anchored branch issued from $i/n$, let
#nonum[
  $ q_i=floor((d i)/n+1/2), quad r_i=n q_i-d i. $
]
Because $n$ is odd and $gcd(n,d)=1$, the centered residues are exactly
#nonum[
  $ {r_i:0<=i<n}
    ={-(n-1)/2,dots,(n-1)/2}. $
]
Thus every anchored cell phase satisfies
#nonum[
  $ abs(alpha_i)= (2 pi abs(r_i))/d <= (pi(n-1))/d. $
]


Now let $p/d$ label an unanchored crest in the $i$-th $n$-lobe. Since the $p$-cell is not the selected cell $q_i$, there is a nonzero integer $ell$ such that
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
  $ F_k(Y)=M_k(alpha_p)
    <M_k(alpha_j)=F_k(X_j(k)) $
]
for every anchored crest $X_j(k)$. In particular, a grid-side unanchored crest lies below the lowest anchored crest, not merely below the anchored crest in its own lobe.


= Full ranking theorem


#block(inset: 1em, radius: 3pt, fill: luma(245))[
*Theorem (full n-highest-crests ranking).* Let $1<n<d$ be coprime integers with $n$ odd. For every $0<k<1$, the $n$ anchored crests of
$F_k(x)=(1-k)cos(2 pi n x)+k cos(2 pi d x)$
are precisely its $n$ highest local maxima.
]


*Proof.* For $0<k<k_c$, the stationary-point type dichotomy separates unanchored crests into grid-side and half-grid-side branches. The fixed-parameter continuation and centered-residue argument above place every grid-side unanchored crest strictly below every anchored crest. Every half-grid-side crest has negative amplitude, whereas the anchored floor from the main paper gives
#nonum[
  $ F_k(X_j(k))
    >=cos((pi(n-1))/(n+d))
    >0. $
]
Thus every unanchored crest lies strictly below the lowest anchored crest.


At $k=k_c$, the threshold-selection theorem identifies the anchored crests as the $n$ highest. For $k_c<k<1$, the established upper-range amplitude-ranking theorem gives the same conclusion. Combining the three ranges proves the claim. $square$


At $k=1$, all $d$ crests have height $1$, so the endpoint is necessarily excluded from a strict amplitude selection.

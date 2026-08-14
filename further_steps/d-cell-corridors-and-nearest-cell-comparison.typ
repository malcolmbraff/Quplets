#let nonum(body) = math.equation(body, block: true, numbering: none)

#set page(margin: (x: 2.6cm, y: 2.6cm))
#set par(justify: true, leading: 0.62em)
#set text(size: 10.5pt)
#set heading(numbering: "1.1.")

#align(center)[
  #text(size: 15pt)[*D-cell corridors and quantitative nearest-cell comparison*] \
  #v(0.3em)
  #text(size: 11pt)[Companion note to _Crest continuation and canonical Euclidean-rhythm selection_] \
  #v(0.3em)
  Malcolm Braff, HSM Basel, FHNW
]

#v(1em)

*Status and scope.* This note is a quantitative and structural supplement to the main paper's full prominence theorem. It proves that every ordinary stationary degeneracy is a birth as $k$ increases, that crests retain permanent $d$-cell labels, and that crest height decreases strictly as the represented cell centre moves away from the $n$-grid crest along a connected positive-lobe sheet. The later full phase-domain argument is retained as an alternate derivation; the main paper no longer depends on it.

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
    alpha = 2 pi n (p/d-i/n), quad mu = n/d. $
]
Inside the cell,
#nonum[
  $ F_k(x) = k cos t + (1-k) cos(alpha + mu t). $
]
Let $t=t(k,alpha)$ be a nondegenerate crest on a connected stationary sheet, and let $M(k,alpha)$ denote its height. Put $s = alpha + mu t$. Because the crest lies in the positive $n$-lobe, $-pi/2 < s < pi/2$.

Stationarity and the envelope identity give
#nonum[
  $ k sin t + (1-k) mu sin s = 0, $
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

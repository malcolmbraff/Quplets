=== Notation and domains (quick reference)
#v(4pt)

#table(
  columns: 2,
  align: (left, left),
  column-gutter: 1.1em,
  stroke: none,

  [$n, d$], [integers with $d>n>0$ (coprime unless stated).],
  [$k$], [real parameter, $k ≥ 0$.],
  [$x$], [phase on the circle $ℝ " / " ℤ$; representatives in $[0,1)$ when sorted.],
  [$θ$], [angle $θ=2π x in ℝ " / " (2π ℤ)$.],
  [$z$], [phasor $z=e^(i θ) in 𝕊^1$.],
  [$F_k$], [$F_k(x)=k cos(2π d x)+cos(2π n x)$.],
  [$G,H$], [$G=∂_x F_k$, $H=∂_"xx" F_k$. Crest: $G=0$, $H<0$. Fold: $G=0$, $H=0$.],
  [$X_(i,n,d)$], [crest trajectory continued from $x=i/n$ at $k=0$ (on fold-free intervals).],
  [$A$], [crest amplitude $A(k)=F_k(X(k))$.],
  [$M, m$], [grid size $M≥1$; index $m in {0,…,M-1}$ with $x≡m/M$ (mod 1).],
  [$ℓ$], [integer $ℓ in ℤ$; poles of $k(θ)$ at $θ=ℓ π / d$.],
  [$E(n,d)$], [Euclidean rhythm (maximally even placement of $n$ on $d$ slots; see [1]).],
  [$"Huplet"(n, d, k), Q(n, d)$],
[spacing vector of crests at parameter $k$ (harmonic tuplet); Quplet $Q(n,d)="Huplet"(n,d,∞)$.],
)

*Convention.* Equalities between Huplets/Quplets are literal (anchor at $X_(0,n,d)$), not modulo rotation.
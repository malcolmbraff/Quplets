// further_steps/00-index.typ -- index of supplementary material
// DRAFT UPDATE: merge with the existing index; the status paragraph and the
// entries below replace any statement that the ranking conjecture is open on
// all of [0, 1).

#set text(size: 10.5pt)
#set par(justify: true)

= further_steps: index

*Status of the ranking property* (the $n$ anchored crests are the $n$
highest local maxima of $F_k$): proved on $(k_c - h_0, 1)$, with $h_0$ the
explicit strip width of the strip theorem, and on $(0, n^2\/(n^2+2d^2)]$;
at $k = 1$ all $d$ crest heights tie. Open only beneath the strip, on part
of the subcritical cascade; the cascade is empty in the three tested pairs
with $d < 2n$, and for $(5,11)$ and $(5,13)$ the strip contains the entire
observed cascade. On the remaining window the property follows from the
sufficient condition that doomed crests stay below the uniform floor
$cos(pi (n-1)\/(n+d))$ until annihilation.

== Notes

- `crest-ranking-across-the-deformation.typ` --- detailed supplement:
  proofs of the bifurcation-free persistence and the complete
  $|r|$-ranking on $(k_c, 1)$; convexity of anchored amplitudes and the
  uniform floor $A_i (k) >= cos(2 pi epsilon_i\/(n+d))$; mirror
  persistence below $k_c$; the strip theorem (degeneracies occur only at or
  below slope balance, with amplitude at most $C sqrt(k_c - k)$, proving
  the property on $(k_c - h_0, k_c)$); corrected empirical anatomy of the
  cascade
  (intervals, margins, failure of the total distance ranking); remaining
  revision items. _Supersedes_ `amplitude-ranking-above-slope-balance.typ`
  (retire).

- `rational-alignment-rigidity.typ` --- rational alignment of the anchored
  crests: trichotomy $n = 3$ (dense), $n = 5$ (explicit counterexample
  family below $k_c$), odd $n >= 7$ (rigidity in the trivial Conway--Jones
  regime); exceptional regime open.

== Scan scripts

- `fixed_scan.py` --- cyclic crest finder (does not drop the fixed branch
  $X_0 equiv 0$); crest-count sweeps.
- `margin_scan.py`, `cascade_margins.py`, `bottoms.py` --- global and
  subcritical margin scans, cascade extents.

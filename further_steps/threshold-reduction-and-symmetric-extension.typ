#import "../definitions.typ": *

= Threshold reduction and symmetric-frequency extension

#emph[Follow-up consequence and open extension extracted from the former
threshold-extension conjecture.]

The main article proves the exact identity

$
Huplet(n,d,n/(n+d))
=
Q(n,n+d)
$

for coprime $1<n<d$ with $n$ odd.

== Reduction when $d>2n$

If $d>2n$, then $d-n>n$, so the pair $(n,d-n)$ remains in the ordered
frequency regime. Applying the threshold-extension identity to $(n,d-n)$
gives

$
Q(n,d)
=
Huplet(n,d-n,n/d).
$

Indeed, the balanced parameter for $(n,d-n)$ is

$
n/(n+(d-n))=n/d.
$

== Open symmetric-frequency formulation

When $n<d<2n$, the frequency $d-n$ is smaller than $n$, so the same reduction
does not fit the ordered convention $n<d$ used in the article. Extending the
identity uniformly to this range requires either a symmetric definition under
exchange of the two frequencies or a separate transformation rule.

The dynamical and combinatorial consequences of such a symmetric convention
remain open follow-up questions.

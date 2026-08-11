#import "../definitions.typ": *

= Nearest-grid endpoint-selection conjecture

#emph[Companion note extracted from the commented endpoint-selection conjecture block in #raw("../05-quplets-as-constrained-euclidean-rhythms.typ"). It preserves the former conditional formulation of dynamical realization and explains how it strengthens the unconstrained Euclidean-class statement.]

The preceding results characterize the nearest-grid configuration
intrinsically, without reference to crest continuation.

The dynamical claim is that the anchored branches select precisely this
configuration.

*Conjecture (dynamical realization of the canonical representative).*  
Assume the global-continuation conjecture. Then

$
Q(n,d)
=
CanonicalQuplet(n,d).
$ <Quplet-realization>

Equivalently, for every $i=0,dots,n-1$,

#nonum[
  $
  X_i (1)
  =
  a_i/d,
  $
]

where $a_i$ is defined by @nearest-endpoint.

Under this conjecture, the dynamically defined Quplet inherits the explicit
nearest-grid formula

#nonum[
  $
  Q(n,d)
  =
  CanonicalQuplet(n,d)
  =
  1/d
  (
    a_1-a_0,
    dots,
    a_(n-1)-a_(n-2),
    d+a_0-a_(n-1)
  ).
  $
]

By @canonical-Euclidean, this implies

#nonum[
  $
  Q(n,d) in E(n,d).
  $
]

The Quplet is therefore the Euclidean rhythm constrained by the following
additional requirements:

- the grid points retain the labels of the initial crests;
- each labeled point undergoes minimal circular displacement;
- the anchor is fixed by $X_0 (0)=0$;
- the signed displacements form a balanced centered residue system.

This is stronger than the unconstrained statement
$Q(n,d) in E(n,d)$, which determines only the cyclic spacing class.


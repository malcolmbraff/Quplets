#import "../definitions.typ": *
#set math.equation(numbering: "(1)")

= Entropy and zero-temperature selection

#emph[Statistical selection model extracted from the main article. This is an
entropy of a chosen finite family of static competitors, not a dynamical
entropy of the crest flow.]

Let $1<n<d$ be coprime, with $n$ odd, and define

$
a_i=floor((i d)/n+1/2),
quad
A_(n,d)=(a_0 ,dots,a_(n-1)).
$

For a nondecreasing loss $phi:[0,1/2] -> RR$, set

$
cal(E)_phi (B)
=
sum_(i=0)^(n-1)
phi("dist"_circle (i/n,b_i/d)).
$ <displacement-energy>

Assume $phi$ is strictly increasing. The nearest-grid configuration
$A_(n,d)$ is then the unique minimizer among labeled $d$-grid selections.

== Entropy of rotation selection

the universal minimal-distortion proposition singles out $A_(n,d)$ as a unique ground
state for every strictly increasing displacement loss. This permits an
entropy-based description of the ambiguity among competing configurations.

Let

#nonum[
  $
  cal(C)(n,d)
  $
]

be a finite family of competing labeled $d$-grid configurations containing
$A_(n,d)$. Depending on the application, $cal(C)(n,d)$ may consist of all
anchored Euclidean representatives or of all injective labeled selections of
$n$ sites from the $d$-grid.

For $tau>0$, define the partition function

$
Z_(phi,tau)
=
sum_(B in cal(C)(n,d))
exp(
  -cal(E)_phi (B)/tau
).
$ <rotation-partition>

The corresponding Gibbs probability of a configuration is

$
p_(phi,tau) (B)
=
exp(-cal(E)_phi (B)/tau)
/
Z_(phi,tau) .
$ <rotation-Gibbs>

Define the alignment entropy

$
cal(S)_(phi,tau)
=
-
sum_(B in cal(C)(n,d))
p_(phi,tau) (B)
log p_(phi,tau) (B).
$ <rotation-entropy>

This entropy measures the ambiguity of the rotation-selection problem at
scale $tau$:

- a large value indicates that several configurations have comparable
  displacement energies;
- a small value indicates that one configuration strongly dominates.

The associated free energy is

$
cal(F)_(phi,tau)
=
-tau log Z_(phi,tau) .
$ <rotation-free-energy>

== Zero-temperature selection

Assume that $phi$ is strictly increasing. By the universal minimal-distortion proposition,
$A_(n,d)$ is the unique minimizer of $cal(E)_phi$.

#remark(
  numbering: none,
  name: "Zero-temperature concentration",
)[
  As $tau$ tends to zero,

  $
  p_(phi,tau) (A_(n,d) )
  arrow.r
  1,
  $ <ground-state-concentration>

  while

  #nonum[
    $
    p_(phi,tau) (B)
    arrow.r
    0
    $
  ]

  for every $B!=A_(n,d)$.

  Moreover,

  $
  cal(F)_(phi,tau)
  arrow.r
  cal(E)_phi (A_(n,d) )
  $ <free-energy-limit>

  and

  $
  cal(S)_(phi,tau)
  arrow.r
  0.
  $ <entropy-limit>
]

#proof[
  Let

  #nonum[
    $
    E_min
    =
    cal(E)_phi (A_(n,d) ).
    $
  ]

  For every competing configuration $B!=A_(n,d)$, strict minimality gives

  #nonum[
    $
    cal(E)_phi (B)-E_min > 0.
    $
  ]

  Factoring $exp(-E_min / tau)$ from @rotation-partition yields

  #nonum[
    $
    Z_(phi,tau)
    =
    exp(-E_min / tau)
    (
      1
      +
      sum_(B!=A_(n,d))
      exp(
        -(cal(E)_phi (B)-E_min )/tau
      )
    ).
    $
  ]

  Every term in the remaining sum tends to zero. Hence the Gibbs distribution
  concentrates on $A_(n,d)$, the free energy tends to $E_min$, and the entropy
  tends to zero.
]

In this formulation, the selected rotation is the unique zero-temperature
ground state of the displacement energy.

The entropy defined here is an entropy of competing static configurations,
rather than a dynamical-systems entropy. A dynamical entropy could instead be
associated with the symbolic evolution of crest branches as $k$ varies, or
with the sequence of selected rotations as $d$ varies. The relation between
these possible dynamical notions and the alignment entropy above remains a
subject for further study.


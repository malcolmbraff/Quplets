#import "../definitions.typ": *

= Endpoint displacement residues and symmetry

#emph[Arithmetic follow-up material extracted from the main article.]

Let $1<n<d$ be coprime, with $n$ odd, and define

$
a_i=floor((i d)/n+1/2).
$ <nearest-endpoint>

== Signed endpoint displacements

Define the signed displacement of the $i$th nearest-grid point from its
initial position by

$
delta_i
=
a_i / d-i/n
=
(n a_i - i d)/(n d).
$ <endpoint-displacement>

Set

$
epsilon_i
=
n a_i - i d.
$ <rounding-residue>

Then

#nonum[
  $
  delta_i = epsilon_i / (n d).
  $
]

Because $a_i$ is the nearest integer to $i d/n$,

#nonum[
  $
  abs(epsilon_i )<n/2.
  $
]

Since $epsilon_i$ is an integer and $n$ is odd,

#nonum[
  $
  epsilon_i
  in
  {
    -(n-1)/2,
    dots,
    -1,
    0,
    1,
    dots,
    (n-1)/2
  }.
  $
]

Moreover,

#nonum[
  $
  epsilon_i equiv -i d quad (mod n).
  $
]

Since multiplication by $d$ permutes the residue classes modulo $n$, the
values $epsilon_i$ are all distinct.

#remark(
  numbering: none,
  name: "Centered displacement spectrum",
)[
  The rounding residues form the complete centered residue system

  $
  {
    epsilon_i :
    i=0,dots,n-1
  }
  =
  {
    -(n-1)/2,
    dots,
    -1,
    0,
    1,
    dots,
    (n-1)/2
  }.
  $ <centered-residues>
]

#proof[
  The $n$ integers $epsilon_i$ are distinct modulo $n$, and each lies in the
  set of the $n$ centered representatives displayed above. They must therefore
  exhaust that set.
]

Consequently, the selected displacements are all distinct and satisfy

#nonum[
  $
  abs(delta_i )<1/(2d).
  $
]

Their multiset is completely determined by $n$ and $d$:

#nonum[
  $
  {
    delta_i :
    i=0,dots,n-1
  }
  =
  {
    j/(n d) :
    j=-(n-1)/2,dots,(n-1)/2
  }.
  $
]

The order in which these values occur is determined by $d mod n$.

== Balance of the selected representative

The nearest-grid indices satisfy

$
a_(n-i) = d-a_i ,
quad
i=1,dots,n-1.
$ <nearest-symmetry>

Indeed, $d-a_i$ is the unique integer nearest to

#nonum[
  $
  d-i d/n
  =
  (n-i)d/n.
  $
]

It follows that

#nonum[
  $
  epsilon_(n-i) = -epsilon_i
  $
]

and therefore

$
delta_(n-i) = -delta_i .
$ <displacement-symmetry>

Since $delta_0 = 0$, the signed displacements sum to zero:

$
sum_(i=0)^(n-1)
delta_i
=
0.
$ <zero-displacement-sum>

Thus the nearest-grid representative is balanced around the initial regular
grid. Its deviations occur in opposite pairs and preserve the barycenter of
the lifted labeled configuration.


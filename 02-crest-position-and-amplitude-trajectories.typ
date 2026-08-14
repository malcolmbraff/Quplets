#import "definitions.typ": *

= Anchored crest continuation and nearest-grid endpoints <section2> 

== Anchored crest branches

Throughout the main results, let $1<n<d$ be coprime positive integers with $n$ odd,
and let $k in [0,1]$ be a real modulation parameter. We define the interference function

$
F_k (x)
=
k cos(2 pi d x)
+
(1-k) cos(2 pi n x),
$ <Fk>

where $x in RR \/ ZZ$ denotes phase on the unit cycle.

Its first two derivatives with respect to $x$ are

$
G_k (x)
=
partial_x F_k (x)
=
-2 pi
(
  k d sin(2 pi d x)
  +
  (1-k)n sin(2 pi n x)
),
$ <G>

and

#nonum[
  $
  H_k (x)
  =
  partial_x^2 F_k (x)
  =
  -(2 pi)^2
  (
    k d^2 cos(2 pi d x)
    +
    (1-k)n^2 cos(2 pi n x)
  ).
  $
]

A stationary point of $F_k$ is a phase $x in RR \/ ZZ$ satisfying
$G_k (x)=0$. It is a crest when $H_k (x)<0$, a trough when
$H_k (x)>0$, and degenerate when $H_k (x)=0$.

At $k=0$, the function

#nonum[
  $
  F_0 (x)=cos(2 pi n x)
  $
]

has exactly $n$ crests, located at the regular grid points

#nonum[
  $
  {i/n : i=0,dots,n-1}.
  $
]

For each $i in {0,dots,n-1}$, the *anchored crest branch* issued from $i/n$
is the maximal real-analytic branch

#nonum[
  $
  X_i : I_i -> RR \/ ZZ
  $
]

satisfying

- *anchor:* $X_i (0)=i/n$,
- *stationarity:* $G_k (X_i (k))=0$,
- *crest condition:* $H_k (X_i (k))<0$.

Here, $I_i subset [0,1]$ is an interval containing $0$. The implicit-function
theorem guarantees the existence and uniqueness of the branch near $k=0$,
since

#nonum[
  $
  H_0 (i/n)=-(2 pi)^2 n^2 <0.
  $
]

The branch can be continued in graph form for as long as the corresponding
stationary point remains nondegenerate. A value of $k$ satisfying

#nonum[
  $
  G_k (X_i (k))=H_k (X_i (k))=0
  $
]

is therefore a possible boundary of continuation in graph form.

The branch issued from $0$ is fixed throughout the deformation. Indeed,

#nonum[
  $
  G_k (0)=0
  $
]

and

#nonum[
  $
  H_k (0)
  =
  -(2 pi)^2
  (
    k d^2
    +
    (1-k)n^2
  )
  <
  0
  $
]

for every $k in [0,1]$. Hence

#nonum[
  $
  X_0 (k)=0.
  $
]

The family of functions $X_i (k)$ records the horizontal motion of the
anchored crests. The continuation result below determines these trajectories
globally and identifies their exact endpoint sites.

== Anchored continuation by nearest-grid corridors


Local continuation follows from the implicit-function theorem, but it does not by itself show that a crest can be followed for the whole deformation. We therefore join each starting crest to its unique nearest endpoint-grid site by a short corridor. The following lemma and proposition show that, within this corridor, the stationarity equation has exactly one solution for each $k in [0,1]$. Thus the crest can be followed uniquely from its initial position to its endpoint.



#lemma(name: "Cotangent positivity")[
  Let $lambda>1$ and $a,b in (0,pi)$ satisfy $lambda a+b<pi$.
  Then
  #nonum[
    $ cot(a)+lambda cot(b)>0 $.
  ]
] <cotangent-positivity>

#proof[
  If $b<=pi/2$, then $a+b<lambda a+b<pi$ and
  #nonum[
    $ cot(a)+cot(b)=sin(a+b)/(sin(a)sin(b))>0 $,
  ]
  while $lambda cot(b)>=cot(b)$ since $cot(b)>=0$. Hence
  $cot(a)+lambda cot(b)>=cot(a)+cot(b)>0$.

  If $b>pi/2$, put $c=pi-b$. Then $0<c<pi/2$ and $a<c/lambda$.
  Since $cot$ is decreasing,
  #nonum[
    $ cot(a)>cot(c/lambda) $.
  ]
  The strict increase of $tan(u)/u$ on $(0,pi/2)$ gives
  #nonum[
    $ tan(c/lambda)<tan(c)/lambda $,
  ]
  hence
  #nonum[
    $ cot(c/lambda)>lambda cot(c)=-lambda cot(b) $.
  ]
  Combining the two displayed inequalities gives $cot(a)>-lambda cot(b)$.
]

#proposition(name: "Global anchored continuation")[
  
  Let $1<n<d$ be coprime integers, with $n$ odd. For every
  $i in {0,dots,n-1}$, the crest of $F_0$ at $i/n$ continues uniquely to a branch $X_i : [0,1] arrow RR \/ ZZ$.
  
  Each branch is real analytic on $[0,1]$, one-sidedly at the endpoints, and satisfies
  #nonum[
    $ G_k (X_i (k))=0 quad "and" quad H_k (X_i (k))<0. $
  ]
    
  The branch $X_0$ is constant. Every other branch has a strictly monotone lift, the $n$ branches remain distinct and preserve their cyclic order, and
  #nonum[
    $
    X_i (1)=m_i / d,
    quad
    m_i = floor((d i) / n + 1 / 2).
    $
  ]
  This statement concerns only the anchored components of the stationary
  set; additional unanchored stationary points may bifurcate elsewhere.
] <anchored-continuation>

#proof[
  
  Put 
  #nonum[
    $ alpha_i = 2pi i/n $
  ] 
  and
  #nonum[
    $ m_i = floor(d i/n+1/2) $,
  ] 
  and set 
  #nonum[
    $ beta_i = 2pi m_i / d$ .
  ]
  
  A rounding tie would
  give 
  #nonum[
    $ d i/n=q+1/2 $
  ] 
  for some $q in ZZ$, hence $n$ divides $2i$. 
  
  Since $n$ is odd and
  $0<=i<n$, this forces $i=0$, which is not a tie.
  
  Thus
  #nonum[
    $ abs(beta_i - alpha_i )<pi/d $.
  ]

  For $i!=0$, let $sigma_i$ be the sign of $beta_i - alpha_i$ and write
  #nonum[
    $ L_i = abs(beta_i - alpha_i ) $.
  ] 
  Parametrize the short corridor by
  #nonum[
    $ theta=alpha_i + sigma_i t $,
  ] 
  where $0<=t<=L_i$. 
  
  For $0<t<L_i$, set
  #nonum[
    $ a=n t$ and $b=d(L_i - t) $.
  ] 
  
  Then 
  #nonum[
    $ a,b in (0,pi) $
  ] 
  and
  #nonum[
    $ (d / n) a + b = d L_i < pi. $
  ]
  Moreover
  #nonum[
    $
    sin(n theta)=sigma_i sin(a),
    quad
    sin(d theta)=-sigma_i sin(b).
    $
  ]
  Hence the stationarity equation is equivalent to
  #nonum[
    $
    k=k_i (t)
    :=
    (n sin(a)) / (n sin(a) + d sin(b)).
    $
  ]
  This function extends continuously with $k_i (0)=0$ and $k_i (L_i )=1$.

  Let
  #nonum[
    $
    C_i (t)
    =
    (1-k_i (t))n^2 cos(n theta)
    +
    k_i (t)d^2 cos(d theta).
    $
  ]
  For $0<t<L_i$, set $R=(1-k_i (t))n sin(a)$; the stationarity relation
  gives equally $R=k_i (t)d sin(b)$, and $R>0$. Then
  #nonum[
    $
    C_i (t)
    =
    R(n cot(a)+d cot(b))>0
    $
  ]
  by @cotangent-positivity with $lambda=d/n$. 
  
  Differentiating the quotient, with $a'=n$ and $b'=-d$, gives
  #nonum[
    $
    k_i '(t)
    =
    (n d (n cos(a) sin(b) + d sin(a) cos(b)))
    /
    (n sin(a) + d sin(b))^2
    =
    (C_i (t)) / (n sin(a) + d sin(b))
    >0,
    $
  ]
  since the numerator equals $C_i (t)(n sin(a)+d sin(b))$.
  Thus $k_i$ is a bijection from $[0,L_i ]$ to $[0,1]$ and its inverse
  defines the required strictly monotone branch. Any continuation of the
  anchored crest in graph form coincides locally with this curve by the
  implicit-function theorem, hence globally; the branch is therefore unique.
  
  Since
  $H_k (theta/(2pi))=-4pi^2 C_i (t)$, every point of the branch is a
  nondegenerate local maximum.

  The denominator $n sin(a)+d sin(b)$ equals $d sin(d L_i)>0$ at $t=0$ and
  $n sin(n L_i)>0$ at $t=L_i$, where both sines are positive because
  $0<n L_i<d L_i<pi$; it is positive on all of $[0,L_i ]$. The quotient
  defining $k_i$ is therefore real analytic on a neighborhood of $[0,L_i ]$.
  Evaluating the derivative formula at the endpoints, where
  $C_i (0)=n^2$ and $C_i (L_i)=d^2$, gives
  #nonum[
    $
    k_i '(0)
    =
    n^2 / (d sin(d L_i))
    >0,
    quad
    k_i '(L_i)
    =
    d^2 / (n sin(n L_i))
    >0.
    $
  ]
  In particular $C_i >0$ on the closed interval, so the crest condition
  holds up to the endpoints. The analytic inverse-function theorem, applied
  one-sidedly at $t=0$ and $t=L_i$, gives the analyticity of the inverse
  $t_i (k)$, and hence of $X_i (k)$, on $[0,1]$.

  For $i=0$, $alpha_0 = beta_0 = 0$ and $X_0 (k)=0$; its curvature factor is
  $(1-k)n^2 + k d^2 > 0$. 
  
  Finally, every corridor lies within distance $1/(2d)$ of its anchor. 
  
  Adjacent anchors are separated by $1/n>1/d$, so
  the short corridors are pairwise disjoint on the circle. The branches
  therefore remain distinct and preserve cyclic order. 
]

#corollary(name: "Nearest-grid endpoint selection")[
  
  Under the hypotheses of @anchored-continuation, the endpoint selected from
  the anchor $i/n$ is the unique nearest point of the $d$-grid:
  #nonum[
    $
    X_i (1)
    =
    1 / d
    floor((d i) / n + 1 / 2).
    $
  ]
] <nearest-grid-endpoints>

@fig-X-trajectories illustrates the anchored trajectories for
$(n,d)=(5,7)$: the five branches start on the regular $5$-grid, stay in
their disjoint corridors, and end at the selected sites of the $7$-grid.







#figure(
  image(
    "Figures/Crests.svg",
    width: 72%,
  ),
  caption: [
    Anchored crest-position trajectories $X_i (k)$ for $(n,d)=(5,7)$.
    The curves begin at the regular $5$-grid and terminate on selected
    points of the regular $7$-grid. The upper and lower horizontal boundary
    curves represent the same fixed circular branch $X_0 (k)=0$.
  ],
) <fig-X-trajectories>






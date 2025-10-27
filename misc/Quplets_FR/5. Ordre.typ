= Ordre des quplets et symétrie modulaire
#v(12pt)

Alors que chaque quplet $Q(n,d)$ peut sembler unique dans sa structure apparente,  
des motifs plus profonds émergent lorsque l’on considère la relation modulaire entre $d$ et $n$.  
Nous constatons en particulier que l’identité rythmique et les bifurcations d’un quplet  
sont fortement déterminées par la valeur de $d mod n$.

Cette symétrie modulaire nous permet de définir une notion d’*ordre du quplet*.

== Symétrie modulaire autour de $n / 2$
#v(6pt)

Lorsque $n$ est fixé, les valeurs $d mod n$ se répartissent symétriquement autour du point médian $n / 2$.  
Pour chaque paire $(j, n - j)$, les quplets $Q(n,d_1)$ et $Q(n,d_2)$ — où $d_1 mod n = j$ et $d_2 mod n = n - j$ —  
présentent un comportement structurel en miroir :

- Leurs trajectoires géodésiques sont symétriques par réflexion  
- Leurs croisements sont distribués de façon complémentaire  
- Leur structure rythmique est liée par inversion

Cette symétrie constitue une *dualité modulaire* dans l’évolution des quplets.

== Définition de l’ordre d’un quplet
#v(6pt)

Nous définissons l’*ordre* du quplet $Q(n,d)$ par :

$ "ordre" = abs(n/2 - abs(d mod n - n/2)) $

Cette définition implique :

- Le tuplet régulier $T_n$ est d’ordre $0$  
- Les quplets plus éloignés modulaires de $n/2$ sont d’ordre plus élevé  
- Le nombre d’ordres distincts croît avec $n$, jusqu’à $ceil(n / 2)$

== Exemple : 5-quplets
#v(6pt)

Pour $n = 5$, on considère les valeurs $d ∈ [5, 10]$ :

#let tab1 = {
  table(
    columns: 3,
    table.header(
      [*d*], [*d mod 5*], [*ordre*],
    ),
    $5$, $0$, $0$,
    $6$, $1$, $2$,
    $7$, $2$, $1$,
    $8$, $3$, $1$,
    $9$, $4$, $2$,
    $10$, $0$, $0$
  )
}

#figure(
  tab1,
  kind: table,
  caption: [Classification des quplets $Q(5,d)$ selon leur ordre]
) <tab:tab1>

Cette classification révèle une structure finie et symétrique dans l’espace des quplets à $n$ fixé,  
permettant de :

- Prédire et comparer le comportement des croisements  
- Identifier les correspondances entre quplets d’un même ordre  
- Interpréter géométriquement les phénomènes de convergence et divergence rythmiques

== Implication topologique
#v(6pt)


Chaque ordre de quplet peut être interprété comme une *direction de déformation*  
à partir du tuplet uniforme $T_n$.

Les trajectoires géodésiques des quplets d’ordres différents :

- S’étendent dans des sous-espaces distincts du simplexe rythmique  
- Peuvent être transformées approximativement l’une dans l’autre par réflexion ou redimensionnement  
- Représentent des axes de coordonnées dans la topologie émergente de l’espace rythmique

La section suivante explore comment ces géodésiques évoluent dans l’espace géométrique,  
et comment la structure des ordres révèle une géométrie dimensionnelle plus profonde.
== Évolution du quplet $Q_k (n,d)$
#v(6pt)

Nous analysons enfin l’évolution des intervalles composant le quplet $Q_k (n,d)$ en fonction du paramètre de pondération $k$.

#figure(
  image("plots/figure_1.png", width: 80%),
  caption: [
    Trajectoires des composantes du quplet $Q_k (n,d)$ en fonction de $k$ pour $n = 5$, $d = 7$.
  ]
)

Les trajectoires des intervalles présentent des croisements organisés, eux aussi proches de la valeur critique $k = display(n / (n + d))$.

=== Convergence vers deux valeurs critiques
#v(6pt)


Une propriété remarquable est que, pour $k = k_c =display( n / (n + d))$, ainsi que pour $k -> 1$,  
les durées individuelles du quplet $Q_k (n,d)$ convergent vers deux valeurs distinctes que nous notons $alpha$ et $beta$.

La structure du quplet dans ces régimes présente toujours une *symétrie combinatoire* entre ces deux valeurs.

Par exemple, pour $n = 5$, $d = 7$, nous avons une structure $(alpha, beta, alpha, beta, alpha)$ bien visible :

- À $k = k_c$ :  
  $ Q_k_c (5,7) = 1/12 dot (2, 3, 2, 3, 2) $

- Lorsque $k -> 1$ :  
  $ Q_1(5,7) = 1/7 dot (1, 2, 1, 2, 1) $

Dans tous les cas étudiés, le quplet critique présente une *distribution symétrique* de deux durées dans un motif régulier propre au couple $(n,d)$.



=== Continuité structurelle entre $k = k_c$ et $k -> 1$
#v(6pt)

Nous observons que, qualitativement, la structure interne du quplet est *préservée* pour les deux régimes critiques :

- L’ordre relatif des longues et courtes durées est conservé,
- Seuls les rapports numériques entre $alpha$ et $beta$ changent,
- Le motif général reste reconnaissable, révélant une *invariance rythmique partielle* .

Cette propriété permet d’envisager une *géométrie interne du quplet* construite sur la dualité $alpha "/" beta$.

=== Relation entre $Q_k_c (n,d)$ et $Q_(k -> 1)(n,n + d)$
#v(6pt)

Un fait remarquable complète cette observation :  
le quplet obtenu pour $k = k_c$ avec le couple $(n,d)$ est identique au quplet obtenu dans la limite $k -> 1$ pour le couple $(n, n + d)$ :

$ Q_k_c (n,d) = Q_(k -> 1)(n, n + d) $

Cela signifie que la transition du paramètre $k$ dans $(n,d)$  
équivaut structurellement à un changement de métrique dans le système $(n, n + d)$.

Ce lien donne un fondement analytique à une *extension harmonique* du système,  
où l’ajout d’une subdivision ($d -> d + n$) préserve la structure interne du motif généré.

Nous explorerons plus loin les implications de cette propriété dans le contexte de l’entropie rythmique et des structures euclidiennes contraintes.
#Opérateurs et opérandes
a=3
b=4
print(a+b)
#Ici, nous avons utiliser les opérateurs +,- et = aux opérandes a et b (qui sont ici des variables)

#Tests logiques
a==b  #vérifie si aest égal à b
a!=b  #vérifie si a est différent de b
a>=b  #vérifie si a est supérieur ou égal à b
a<=b  #vérifie si a est inférieur ou égal à b
#Les opérateurs utilisés sont ==,!=,>= et <=

#Cependant les opérateurs >,< ,<= et >= ne permettent pas la comparaison entre nombres complexes (sauf == et !=)

#En ce qui concernent les comparaisons alphabétiques, il faudra tenir compte des langues installées

#Les nombres viennent après les chiffres dans R (mais il est généralement deéconseillé de faire une comparaison entre ces derniers)

#Les opérateurs & et && correspondent à "ET" et ceux | et || correspondent au "OU"
age = 25
montant = 98000
autorisation_ouverture = (age >= 18) && (montant > 100000) 
print(autorisation_ouverture)



#Exercice 3.7
5 * c(2, 3, 8, 10)          # multiplication par une constante
c(2, 6, 8) + c(1, 4, 9)     # addition de deux vecteurs
c(0, 3, -1, 4)^2            # élévation à une puissance


8 + 1:10                    # 8 est recyclé 10 fois
c(2, 5) * 1:10              # c(2, 5) est recyclé 5 fois
c(-2, 3, -1, 4)^1:4         # quatre puissances différentes


(x <- matrix(1:4, 2))       # matrice 2 x 2
(y <- matrix(3:6, 2))       # autre matrice 2 x 2
5 * x                       # multiplication par une constante
x + y                       # addition matricielle
x * y                       # produit *élément par élément*
x %*% y                     # produit matriciel
x / y                       # division *élément par élément*
x * c(2, 3)                 # produit par colonne


5 %% 2                      # 5/2 = 2 reste 1
5 %% 1:5                    # remarquer la périodicité
10 %% 1:15                  # x %% y = x si x < y


for (i in 1:50)
{
  ## Affiche la valeur du compteur toutes les 5 itérations.
  if (0 == i %% 5)
    print(i)
}


##La division entière retourne la partie entière de la
## division d'un nombre par un autre.
5 %/% 1:5
10 %/% 1:15


c(TRUE, TRUE, FALSE) & c(TRUE, FALSE, FALSE) #ET logique


c(TRUE, TRUE, FALSE) | c(TRUE, FALSE, FALSE) #OU logique


0:5 & 5:0
0:5 | 5:0
!0:5

x <- 1                      # valeur quelconque
if (x != 0) x + 1           # TRUE pour tout x != 0
if (x) x + 1                # tout à fait équivalent!


for (i in 1:50)
{
  ## Affiche la valeur du compteur toutes les 5 itérations.
  if (!i %% 5)
    print (i)
}

a <- c("Impair", "Pair")
x <- c(2, 3, 6, 8, 9, 11, 12)
x %% 2
(!x %% 2) + 1
a[(!x %% 2) + 1]

5 = 2                       # erreur de syntaxe
5 == 2                      # comparaison


matrix(1:12, 3, 4)
matrix(1:12, ncol = 4, nrow = 3)
matrix(nrow = 3, ncol = 4, data = 1:12)
matrix(nrow = 3, ncol = 4, byrow = FALSE, 1:12)
matrix(nrow = 3, ncol = 4, 1:12, FALSE)


## MANIPULATION DE VECTEURS
x <- c(50, 30, 10, 20, 60, 30, 20, 40) # vecteur non ordonné


seq(from = 1, to = 10)          # équivalent à 1:10
seq_len(10)                     # plus rapide que 'seq'
seq(-10, 10, length = 50)       # incrément automatique
seq(-2, by = 0.5, along = x)    # même longueur que 'x'
seq_along(x)                    # plus rapide que 'seq'


rep(1, 10)                  # utilisation de base
rep(x, 2)                   # répéter un vecteur
rep(x, times = 2, each = 4) # combinaison des arguments
rep(x, times = 1:8)         # nombre de répétitions différent
# pour chaque élément 'x'


## Classement en ordre croissant ou décroissant.
sort(x)                     # classement en ordre croissant
sort(x, decr = TRUE)        # classement en ordre décroissant
sort(c("abc", "B", "Aunt", "Jemima")) # chaînes de caractères
sort(c(TRUE, FALSE))        # FALSE vient avant TRUE


## pour les obtenir en ordre croissant.
order(x)                    # regarder dans le blanc des yeux
x[order(x)]                 # équivalent à 'sort(x)'


## Rang des éléments d'un vecteur dans l'ordre croissant.
rank(x)                     # rang des éléments de 'x'

## Renverser l'ordre d'un vecteur.
rev(x)

## Extraction ou suppression en tête ou en queue de vecteur.
head(x, 3)                  # trois premiers éléments
head(x, -2)                 # tous sauf les deux derniers
tail(x, 3)                  # trois derniers éléments
tail(x, -2)                 # tous sauf les deux premiers


## Expressions équivalentes sans 'head' et 'tail'
x[1:3]                      # trois premiers éléments
x[1:(length(x) - 2)]        # tous sauf les deux derniers
x[(length(x)-2):length(x)]  # trois derniers éléments
rev(rev(x)[1:3])            # avec petits vecteurs seulement
x[c(-1, -2)]                # tous sauf les deux premiers

## Seulement les éléments différents d'un vecteur.
unique(x)


## RECHERCHE D'ÉLÉMENTS DANS UN VECTEUR
which(x >= 30)              # positions des éléments >= 30
which.min(x)                # position du minimum
which.max(x)                # position du maximum
match(20, x)                # position du premier 20 dans 'x'
match(c(20, 30), x)         # aussi pour plusieurs valeurs
60 %in% x                   # 60 appartient à 'x'
70 %in% x                   # 70 n'appartient pas à 'x'


## ARRONDI
(x <- c(-21.2, -pi, -1.5, -0.2, 0, 0.2, 1.7823, 315))
round(x)                    # arrondi à l'entier
round(x, 2)                 # arrondi à la seconde décimale
round(x, -1)                # arrondi aux dizaines
ceiling(x)                  # plus petit entier supérieur
floor(x)                    # plus grand entier inférieur
trunc(x)                    # troncature des décimales


## SOMMAIRES ET STATISTIQUES DESCRIPTIVES
sum(x)                      # somme des éléments
prod(x)                     # produit des éléments
diff(x)                     # x[2] - x[1], x[3] - x[2], etc.
mean(x)                     # moyenne des éléments
mean(x, trim = 0.125)       # moyenne sans minimum et maximum
var(x)                      # variance (sans biais)
(length(x) - 1)/length(x) * var(x) # variance biaisée
sd(x)                       # écart type
max(x)                      # maximum
min(x)                      # minimum
range(x)                    # c(min(x), max(x))
diff(range(x))              # étendue de 'x'
median(x)                   # médiane (50e quantile) empirique
quantile(x)                 # quantiles empiriques
quantile(x, 1:10/10)        # on peut spécifier les quantiles
summary(x)                  # plusieurs des résultats ci-dessus


## SOMMAIRES CUMULATIFS ET COMPARAISONS ÉLÉMENT PAR ÉLÉMENT
(x <- sample(1:20, 6))
(y <- sample(1:20, 6))
cumsum(x)                   # somme cumulative de 'x'
cumprod(y)                  # produit cumulatif de 'y'
rev(cumprod(rev(y)))        # produit cumulatif renversé
cummin(x)                   # minimum cumulatif
cummax(y)                   # maximum cumulatif
pmin(x, y)                  # minimum élément par élément
pmax(x, y)                  # maximum élément par élément


## OPÉRATIONS SUR LES MATRICES
(A <- sample(1:10, 16, replace = TRUE)) # avec remise
dim(A) <- c(4, 4)           # conversion en une matrice 4 x 4
b <- c(10, 5, 3, 1)         # un vecteur quelconque
A                           # la matrice 'A'
t(A)                        # sa transposée
solve(A)                    # son inverse
solve(A, b)                 # la solution de Ax = b
A %*% solve(A, b)           # vérification de la réponse
diag(A)                     # extraction de la diagonale de 'A'
diag(b)                     # matrice diagonale formée avec 'b'
diag(4)                     # matrice identité 4 x 4
(A <- cbind(A, b))          # matrice 4 x 5
nrow(A)                     # nombre de lignes de 'A'
ncol(A)                     # nombre de colonnes de 'A'
rowSums(A)                  # sommes par ligne
colSums(A)                  # sommes par colonne
apply(A, 1, sum)            # équivalent à 'rowSums(A)'
apply(A, 2, sum)            # équivalent à 'colSums(A)'
apply(A, 1, prod)           # produit par ligne avec 'apply'


## PRODUIT EXTÉRIEUR
x <- c(1, 2, 4, 7, 10, 12)
y <- c(2, 3, 6, 7, 9, 11)
outer(x, y)                 # produit extérieur
x %o% y                     # équivalent plus court
outer(x, y, "+")            # « somme extérieure »
outer(x, y, "<=")           # toutes les comparaisons possibles
outer(x, y, pmax)           # idem

## créer le vecteur sans avoir recours à des boucles.
(1:100)[-((1:10) * 10)]              # sans boucle !
rep(1:9, 10) + rep(0:9*10, each = 9) # une autre façon !

## Bon, l'exemple proprement dit...
x <- numeric(0)             # initialisation du contenant 'x'
j <- 0                      # compteur pour la boucle
for (i in 1:100)
{
  if (i %% 10)            # si i n'est pas un multiple de 10
    x[j <- j + 1] <- i  #     stocker sa valeur dans 'x'
  else                    # sinon
    print(i)            #     afficher la valeur à l'écran
}
x                           # vérification



## Même chose que ci-dessus, mais sans le compteur 'j' et les
## valeurs manquantes aux positions 10, 20, ... , 100 sont
## éliminées à la sortie de la boucle.
x <- numeric(0)
for (i in 1:100)
{
  if (i %% 10)
    x[i] <- i
  else
    print(i)
}
x <- x[!is.na(x)]
x


x <- numeric(0)
j <- 0
i <- 1                      # pour entrer dans la boucle [*]
while (i <= 100)
{
  if (i %% 10)
    x[j <- j + 1] <- i
  else
    print(i)
  i <- i + 1              # incrémenter le compteur!
}
x


## qu'il faut utiliser 'repeat'.
x <- numeric(0)
j <- 0
i <- 1
repeat
{
  if (i %% 10)
    x[j <- j + 1] <- i
  else
    print(i)
  if (100 < (i <- i + 1)) # incrément et critère d'arrêt
    break
}
x


## fonction). '.GlobalEnv' est l'environnement de travail.
search()

## Liste de tous les packages installés sur votre système.
library()

## Chargement du package 'MASS', qui contient plusieurs
## fonctions statistiques très utiles.
library("MASS")





#Exercice 3.8
#3.1

#a
rep(c(0, 6), 3) #il s'agit d'aligner trois fois le vecteur uniligne 0 6

#b
seq(1, 10, by = 3)# ce code génère les nombres de 1 à 10 avec un pas de 3

#c
rep(1:3, 4) #il s'agit d'aligner trois fois le vecteur uniligne 1:3

#d
rep(1:3, 1:3)# le chiffre 1 sera aligné une fois, 2 sera aligné deux fois et 3 trois fois

#e
rep(1:3, 3:1) #le chiffre 1 sera aligné 3 fois, 2 sera aligné deux fois et 3 une fois 

#f
seq(1, 10, length = 3) # l'ordinateur génère automatiquement une suite de trois nombres compris entre 1 et 10

#g
rep(1:3, each=4) #chaque élément de la liste 1:3 sera répété quatre fois


#3.2

#a
11:20 / 10 #cette opération divise chaque nombre de la liste par 10

#b
2 * 0:9 + 1 #cette opération multiplie chaque nombre de la liste 0:9 par 2 puis ajoute 1 

#c
rep(-2:2,2) #les éléments de la liste -2 -1 0 1 2 seront recopier deux fois

#d
rep(-2:2,each=2)# chaque élément de la liste -2:2 sera répété deux fois

#e
1:10 * 10 #chaque membre de la liste 1:10 sera multilplié par 10


#3.4
cumprod(1:10) #cette fonction permet de faire le produit des n premiers nombres à la n ième itération




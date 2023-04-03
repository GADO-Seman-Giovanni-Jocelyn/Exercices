## Exercices

## Importation de données
# Type csv
chemin= "C:/Users/ASUS/Desktop/ISEP 2/Traitements statististiques avec R/Cours_R_2023"
File= paste0(chemin,"/Cours_004_Base.csv")
Base =read.csv2(File)
View(Base)

##Type text
Base2 = read.table("C:/Users/ASUS/Desktop/ISEP 2/Traitements statististiques avec R/Cours_R_2023/Cours_004_Base.txt",sep = "\t")
View(Base2)

##Sélection de variables
reg= Base$Region
table(reg)

##Filtrage de données
elevesjeunes = Base[Base$Age > 21,]
View(elevesjeunes)

##Agrégation de données
moyenne_age_par_region <- aggregate(Base$Age, by = list(Base$Region), FUN = mean)


##Statistiques descriptives
moyenne_age <- mean(Base$Age)
ecart_type_age <- sd(Base$Age)

##Manipulation de données avec dplyr et tidyr
library(dplyr)
clients_jeunes <- Base %>%
  filter(Sexe=="M", Work == "1")

##Visualisation de données avec ggplot2
library(ggplot2)
ggplot(Base, aes(x = Age)) + geom_histogram()

ggplot(Base, aes(x = Work)) + geom_bar()

ggplot(Base, aes(x = Revenu, y = Age)) + geom_point()

ggplot(Base, aes(x = "", y = Age)) + geom_boxplot()

##Exportation de données
write.csv(Base, "donnees_manipulees.csv", row.names = FALSE)

##Histogramme
#Exemple d’histogramme en R
donnees = c(2, 5, 3, 6, 4, 7, 5, 8, 6, 9, 7, 10)
hist(donnees, main = "Histogramme des données", xlab = "Valeurs", ylab = "Fréquence")

##Diagramme en boîtes
donnees = c(2, 5, 3, 6, 4, 7, 5, 8, 6, 9, 7, 10)
boxplot(donnees, main = "Diagramme en boîtes des données", ylab = "Valeurs")

##Nuage de points
x = c(1, 2, 3, 4, 5)
y = c(2, 4, 6, 8, 10)
plot(x, y, main = "Nuage de points des données", xlab = "X", ylab = "Y")

##Graphique en barres
donnees = c("A", "B", "C", "D", "E", "F")
frequences = c(10, 20, 15, 5, 12, 8)
barplot(frequences, names.arg = donnees, main = "Graphique en barres des données", xlab = "Données", ylab = "Fréquences")

##Graphique en secteurs
donnees <- c("A", "B", "C", "D", "E", "F")
proportions <- c(0.1, 0.2, 0.15, 0.05, 0.12, 0.08)
pie(proportions, labels = donnees, main = "Graphique en secteurs des données")

##Carte thermique
matrice <- matrix(c(2, 5, 3, 6, 4, 7, 5, 8, 6), ncol = 3)
heatmap(matrice, main = "Carte thermique des données")


##Exercices
#1, 2 et 3.
chemin= "C:/Users/ASUS/Desktop/ISEP 2/Traitements statististiques avec R/Cours_R_2023"
File= paste0(chemin,"/menage.csv")
Base =read.csv2(File)
View(Base)

#4.
#age:
summary(Base$Age)

#occupation
summary(Base$Occupation)

#5.
#Variable class_age
class_age = Base$Age

#Sous base ne contenant que les femmes
femmes= Base[Base$Sexe =="F",]
View(femmes)

#Analyse
tableau = table(Base$Sexe,Base$Occupation)
print(tableau)

tableau2 = table(Base$Sexe,Base$Situation)
print(tableau2)


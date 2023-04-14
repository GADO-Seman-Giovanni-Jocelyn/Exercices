# Résumé des 5 dernières pages.

### Page 2 : R flow Control

## R Booleans (Comparison and Logical Operators)

#Les valeurs booléennes telles que connues sont TRUE (T) et FALSE (F). Tout objet déclaré prenant l'une de ses valeurs appartient à la classe "logical"
# Les opérateurs utilisés pour faire des tests logiques sont == , = , != , < , > , & ,|,! .
# Le test de plusieurs conditions avec & renvoie TRUE si et seulement toutes les conditions sont vraies.
w <- 54
x <- 12
y <- 25
z <- 1
print(w>x & x>y & z>w)

#Celui avec | renvoie TRUE si au moins une condition est vraie.
w <- 54
x <- 12
y <- 25
z <- 1
print(w>x | x>y | z>w)

# L'opérateur ! peut être avec d'autres fonctions intégrées.
x <- 5
print(is.numeric(x) & (x>5 | x==5))


## R if...else
# 
age <- 15
if (age > 18) {
  print("You are eligible to vote.")
} else {
  print("You cannot vote.")
}


## R ifelse() Function
marks <- c(63, 58, 12, 99, 49, 39, 41, 2)
ifelse(marks < 40, "FAIL", "PASS")


## R while Loop
number = 1
sum = 0
while(number <= 10) {
  sum = sum + number
  number = number + 1
}
print(sum)


## R for Loop
numbers = c(2, 3, 12, 14, 5, 19, 23, 64)
for (i in numbers) {
  if( i == 5) {
    break
  }
  print(i)
}


## R break and next
# Break pour arrêter une itération et Next pour continuer


## R repeat Loop
# On utilise l'instruction repeat pour répéter une instuction. Cependant il faut mettre une condition de sortie pour éviter de générer des boucles infinies.
x = 1
repeat {
  print(x)
  if (x > 4) {
    break
  } 
  x = x + 1
}


## R Functions
power <- function(a,b) {
  print(paste("a raised to the power b is: ", a^b))
}
power(3,2)



### Page 3 : R Data Structure

## R Strings
# Dans R les strings sont délimitées par "..." ou '...' . Pour la longueur d'une chaîne de caractère, on peut utiliser la ffonction nchar
# On peut aussi transformer les caractères en majuscules ou en minuscules.

message <- "R Programming"
message_upper <- toupper(message)
cat("Uppercase:", message_upper)

message_lower <- tolower(message)
cat("Lowercase:", message_lower)


## R Vectors
dailyActivities <- c("Eat","Repeat")
cat("Initial Vector:", dailyActivities)
dailyActivities[2] <- "Sleep"
#Ici on a remplacé le deuxième élément du vecteur dailyActivities par "Sleep"

cat("Updated Vector:", dailyActivities)

 
## R Matrix
matrix1 <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3, byrow = FALSE)
print(matrix1)
# Pour créer une matrice, on utilise la fonction matrix. Pour concatener deux matrices on utilise les fonctions cbind et rbind.



## R List
list1 <- list(24, "Sabby", 5.4, "Nepal")
# Pour ajouter un élément à une liste, on utilise la fonction append; pour retirer un élément, on fait une indexation négative
append(list1, 3.14)
print(list1[-4])

#Pour savoir si un élément appartient à une liste, on utilise l'opérateur %in% .

## R Array
array1 <- array(c(1:12), dim = c(2,3,2))
print(array1)
# Nous disposons ici deux deux matrices de deux lignes et trois colonnes chacune


## R Data Frame
dataframe1 <- data.frame (
  Name = c("Juan", "Alcaraz", "Simantha"),
  Age = c(22, 15, 19),
  Vote = c(TRUE, FALSE, TRUE)
)
print(dataframe1)

#Pour combiner deux dataframes, on utilise les fonctions rbind (verticalement) et cbind (horizontalement) .


## R Factors
# Un facteur est un vecteur qui contient des valeurs prédéfinies (qui peuvent se répéter).
students_gender <- factor(c("male", "female", "male", "transgender", "female"))
print(students_gender)

### R  Data Visualization

## R Bar Plot
temperatures <- c(22, 27, 26, 24, 23, 26, 28)
result <- barplot(temperatures, 
main = "Maximum Temperatures in a Week", 
xlab = "Degree Celsius",
ylab = "Day",
names.arg = c("Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"),
col = " blue ",
density = 20,
horiz = TRUE
)
print(result)


## R Histogram
temperatures <- c(67 ,72 ,74 ,62 ,76 ,66 ,65 ,59 ,61 ,69 )
result <- hist(temperatures,
main = "Histogram of Temperature",
xlab = "Temperature in degrees Fahrenheit",
col = " red ",
xlim = c(50,100),
ylim = c(0, 5))
print(result)


## R Pie Chart
expenditure <- c(600, 300, 150, 100, 200)
result <- pie(expenditure,
main = "Monthly Expenditure Breakdown",
labels = c("Housing", "Food", "Cloths", "Entertainment", "Other"),
col = c(" red", " orange", " yellow", " blue", " green")
)
print(result)


## R Boxplot
head(mdeaths)
boxplot(mdeaths,
main="Deaths Boxplot",
ylab="Monthly Deaths from Lung Diseases in the UK",
xlab="No. of Deaths",
col="red ")


## R Strip Chart
stripchart(mdeaths,
main="Monthly Deaths from Lung Diseases in the UK",
xlab="No. of Deaths",
ylab="Deaths",
col="orange ",
method = "jitter")


## R plot() Function
x = seq(-pi,pi,0.1)
y = sin(x)
plot(x,y)


## R Save Plot
#les graphiques peuvent être sauvegardées sous plusieurs formats notamment jpeg, png, pdf 


## Colors in R

# 657 couleurs différentes ont été programmées  sur R. On peut accéder à ces couleurs en les appelant direcetement, ou en utilisant les codes hexadécimaux, ou encore en utilisant les codes RGB.


### R Data manipulation

## R Read and Write CSV Files
# Pour ouvrir un fichier csv, on utilise la fonction read.csv. Pour convertir en fichier csv, on utilise la fonction write.csv.


## R Read and Write xlsx Files
# Pour ouvrir un fichier xlsx, on utilise la fonction read.xlsx. Pour convertir en fichier en xlsx, on utilise la fonction write.xlsx  


## R dataset
# R dispose de données intégrées. Pour y accéder, on utilise la fonction data()


## R min() and max()
# Sur R nous avons les fonctions min et max qui nous permettent de trouver le minimum et le maximum d'une liste.


## R Mean, Median, and Mode

# R nous permet de calculer la moyenne, d'obtenir la médianne.
marks <- c(97, 78, 57, 64, 87)
result <- mean(marks)
result2 <- median(marks)
print(result)
print(result2)

# Pour obtenir le mode, on doit définir une fonction
marks <- c(97, 78, 57,78, 97, 66, 87, 64, 87, 78)
mode = function() {
  return(names(sort(-table(marks)))[1])
}
mode()


## R Percentile
# Pour calculer les percentiles, on utilise la fonction intégrée quantile()


### R Additional Topics
## R Date
# Des fonctions intégrées de R nous permettent d'avoir la date et l'heure exactes notamment Sys.Date(), Sys.time(), now()


## R Objects and Classes
# Les classes de R sont S3 et S4












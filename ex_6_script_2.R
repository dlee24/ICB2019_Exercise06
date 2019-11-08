iris <- read.csv("iris.csv")
message("PART ONE")
#Part one: last two rows in last two columns to terminal
petwid_spec <- data.frame(iris$Petal.Width,iris$Species)
petwid_spec_last2R <- tail(petwid_spec, n = 2L)
petwid_spec_last2R

message("PART TWO")
#part two: get number of observations for each species in data set
library(stringr)

species <- iris[,5]
NumberOfObservations <- ncol(iris)-1
SetosaCount <- (sum(str_count(species, pattern = "setosa")))
    SetosaCount*NumberOfObservations
VirginicaCount <- sum(str_count(species, pattern = "virginica"))
    VirginicaCount*NumberOfObservations
VersicolorCount <- sum(str_count(species, pattern = "versicolor"))
    VersicolorCount*NumberOfObservations

message("PART THREE")
#part three, get rows with SepalWidth>3.5
iris[iris$Sepal.Width > 3.5,]

message("PART FOUR")
#part four, write data for setosa species to comma-delimited file named setosa.csv
SetosaFile <- iris[iris$Species == "setosa",]
write.csv(SetosaFile, file = "setosa.csv")

message("PART FIVE")
#part 5, get mean, min, max petal.length for virginica
VirginicaFile <- iris[iris$Species == "virginica",]
Virginica.Petal.Length <- VirginicaFile$Petal.Length
stats <- data.frame(min(Virginica.Petal.Length), mean(Virginica.Petal.Length), max(Virginica.Petal.Length))
colnames(stats) <- c("min", "mean", "max")
stats

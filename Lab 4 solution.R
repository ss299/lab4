data(iris)
View(iris)

#Get all rows of Species ???versicolor??? in a new data frame. Call this data frame: ???iris.vers???
iris.vers = iris[iris$Species == "versicolor",]
View(iris.vers)

#Get a vector called ???sepal.dif??? with the difference between ???Sepal.Length??? and ???Sepal.Width??? of ???versicolor??? plants.
sepal.dif <- iris.vers$Sepal.Length - iris.vers$Sepal.Width

#Add ???iris.vers??? with the new column ???sepal.dif???.
iris.vers$sepal.dif <- sepal.dif

#filter for all data of Species ???virginica??? with a ???Sepal.Width??? of greater than 3.5.
iris[iris$Species == 'virginica' & iris$Sepal.Width >3.5,]

#get a data frame of  all data of Species ???setosa??? with a ???Sepal.Width??? of greater than 3.5, but without the last column Species in the data frame?
iris[iris$Species == "setosa" & iris$Sepal.Width > 3.5, 1:4]

#Write a function that takes in a species name as an argument and returns the average Sepal Width of that species.
f <- function(sp_name,arg){
  tmpdf <- iris[iris$Species==sp_name,]
  print(paste("Mean of Sepal Width for ",sp_name,": ",mean(tmpdf[,names(tmpdf)==arg])))
}
f("setosa","Sepal.Width")

#What is the average Sepal.Length for 'versicolor' species having a Petal.Length of 4.2 or higher?
mean(iris[iris$Species == 'versicolor' & iris$Petal.Length>=4.2,"Sepal.Length"])

#BONUS VIZ Q
# Visualize species, Sepal.Length and Sepal.Width in a single plot. DO YOU SEE CLUSTERS?

plot(iris$Sepal.Length,iris$Sepal.Width,col = iris$Species,pch = 16)
legend("topright",legend=paste(unique(iris$Species)),pch=rep(c(16,18),each=4),bty="n",ncol=2,cex=0.7,pt.cex=0.7,col = c("black","red","green"))
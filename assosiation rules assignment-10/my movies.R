library(arules)
library(arulesViz)
movies <- read.csv(file = "C:\\Users\\Sony\\Downloads\\assosiation rules assignment-10\\my_movies.csv")
View(movies)
movies <- movies[,c(-1:-5)]
str(movies)
movies <- as.matrix(movies)
#assosiation rules
mov <- apriori(data = movies, parameter = list(support= 0.3, confidence= 0.5))
mov
attributes(mov)
inspect(head(sort(x = mov, decreasing = T, by= "count"),10))
# Sorting rules by confidence
inspect(head(sort(x = mov, decreasing = T, by= "confidence"),10))
# Sorting rules by lift ratio
inspect(head(sort(x = mov, decreasing = T, by= "lift"),10))
inspect(head(sort(x = mov, decreasing = T, by= "support"),10))
plot(mov, method = "scatterplot")
plot(mov, method = "graph")
plot(mov, method = "grouped")



mov <- apriori(data = movies, parameter = list(support=0.2, confidence= 0.5,minlen=1))
mov
inspect(head(sort(x = mov, decreasing = T, by= "count"),10))
inspect(head(sort(x = mov, decreasing = T, by= "confidence"),10))
inspect(head(sort(x = mov, decreasing = T, by= "lift"),10))
inspect(head(sort(x = mov, decreasing = T, by= "support"),10))
plot(mov, method = "scatterplot")
plot(mov, method = "graph")
plot(mov, method = "grouped")


 


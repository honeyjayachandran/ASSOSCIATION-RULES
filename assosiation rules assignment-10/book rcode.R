library(arules)
library(arulesViz)

book <- read.csv(file = "C:\\Users\\Sony\\Downloads\\assosiation rules assignment-10\\book.csv")
View(book)
str(book)

a <- as.matrix(book)
str(a)
attributes(a)

#association rules

bo <- apriori(data = a, parameter = list(support=0.05, confidence=0.5))
bo
# Sorting rules by confidence
inspect(head(sort(x = bo, decreasing = T, by="confidence"),10))
# Sorting rules by lift ratio
inspect(head(sort(x = bo, decreasing = T, by="lift"),10))
plot(bo, method = "scatterplot")
plot(bo, method = "graph")
plot(bo, method = "grouped")



bo1 <- apriori(data = a, parameter = list(support=0.02, confidence=0.6, minlen=2))
bo1
inspect(head(sort(x = bo1, decreasing = T, by="confidence"),10))
inspect(head(sort(x = bo1, decreasing = T, by="lift"),10))
plot(bo1, method = "scatterplot")
plot(bo1, method = "graph")
plot(bo1, method = "grouped")

 



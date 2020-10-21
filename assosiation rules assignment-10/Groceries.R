 library(arules)
library(arulesViz)
groceries <- read.transactions(file = "C:\\Users\\Sony\\Downloads\\assosiation rules assignment-10\\groceries.csv")
View(groceries) #viewing groceries

class(groceries)
itemFrequencyPlot(groceries,topN=20)  #item frquency plot

# Applying apriori algorithm to get relevant rules
rules<-apriori(groceries,parameter = list(support = 0.002,confidence = 0.05,minlen=3))

inspect(head(sort(x = rules, decreasing = T, by= "count"),10))
# Sorting rules by confidence
inspect(head(sort(x = rules, decreasing = T, by= "confidence"),10))
# Sorting rules by lift ratio
inspect(head(sort(x = rules, decreasing = T, by= "lift"),10))

inspect(head(sort(x = rules, decreasing = T, by= "support"),10))
# Visualizing rules
plot(rules,method = "scatterplot")
plot(rules,method = "grouped")
plot(rules,method = "graph")


rules<-apriori(groceries,parameter = list(support = 0.008,confidence = 0.06,minlen=2))
inspect(head(sort(x = rules, decreasing = T, by= "count"),10))
inspect(head(sort(x = rules, decreasing = T, by= "confidence"),10))
inspect(head(sort(x = rules, decreasing = T, by= "lift"),10))
inspect(head(sort(x = rules, decreasing = T, by= "support"),10))
plot(rules,method = "scatterplot")
plot(rules,method = "grouped")
plot(rules,method = "graph")

#support 2% and confidence 5%
gg <- apriori(data = groceries, parameter = list(support= 0.02, confidence= 0.05,minlen=3),
             appearance =list(lhs="root") )
gg

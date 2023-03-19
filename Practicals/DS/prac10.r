# Decision Tree using R:

mydata<-data.frame(iris)
attach(mydata)
install.packages("rpart")
library(rpart)
model<-rpart(Species ~ Sepal.Length + Sepal.Width + Petal.Length , , -- Petal.Width, data=mydata, method="class")
plot(model)
text(model,use.n=TRUE,all=TRUE,cex=0.8)


install.packages("tree")
library(tree)
model1<-tree(Species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, data=mydata, method="class", split="gini")
plot(model1)
text(model1,all=TRUE,cex=0.6)
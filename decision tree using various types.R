#decision tree using various types
#a
mydata<-data.frame(iris)
attach(mydata)
install.packages("rpart")
library(rpart)
model<-rpart(Species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width,data=mydata,
             method="class")
plot(model)
text(model,use.n=TRUE,all=TRUE,cex=0.8)

#b

install.packages("tree")
library(tree)
model1<-tree(Species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, data=mydata,
             method="class", split="gini")
plot(model1)
text(model1,all=TRUE,cex=0.6)

#c
install.packages("party")
library(party)
model2<-ctree(Species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width,
              data=mydata)
plot(model2)
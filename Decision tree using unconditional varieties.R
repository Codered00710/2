#: Decision tree using unconditional varieties.
#a


library(tree)
mydata<-data.frame(iris)
attach(mydata)
model1<-tree(Species ~ Sepal.Length + Sepal.Width + Petal.Length +
               Petal.Width,data=mydata,method="class",control = tree.control(nobs = 150, mincut = 10))
plot(model1)
text(model1,all=TRUE,cex=0.6)

#b
predict(model1,iris)

#c
model2<-ctree(Species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width,data =
                mydata, controls = ctree_control(maxdepth=2))
plot(model2)
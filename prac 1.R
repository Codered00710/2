#a one way anova
ftest<-(read.csv(file.choose(),sep = ",",header=T))
var.test(ftest$sepal.length,ftest$petal.length,alternative = "two.sided")
#b
names(ftest)
#c
summary(ftest)
#d
anv<-aov(formula=sepal.length~sepal.width,data=ftest)
summary(anv)


#two way anova
#a
data2<-(read.csv(file.choose(),sep = ",",header=T))
names(data2)
#b
head(data2)
#c
summary(data2)
#d
anv1<-aov(formula=sepal.length~sepal.width+variety+sepal.width*variety,data=data2)
summary(anv1)
#NO.1
x=3
prob=0.20
#a
peluang=dgeom(x-1,prob,log=FALSE)
peluang
#b
mean(rgeom(n = 1000, prob) == 3)
mean
#c
hist(rgeom(x,prob),main="Histogram of Geometric",xlab="X")
#d
mean1=1/prob
mean1
var1=(1-prob)/prob^2
var1
#e
mean(rgeom(n = 10000, prob))+1
var(rgeom(n=100000, prob))

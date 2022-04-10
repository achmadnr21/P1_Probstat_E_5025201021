#NO.2
n2=20
prob2=0.2
x2=4
#a
peluang2=dbinom(x2,n2,prob2,log=FALSE)
peluang2
#b
hist(rbinom(x2,n2,prob2),xlab="X",ylab="Frekuensi",main="Histogram of Binomial")
#c
mean2=n2*prob2
mean2
var2=n2*prob2*(1-prob2)
var2

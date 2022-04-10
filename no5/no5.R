# No. 5
# Diketahui bilangan acak (random variable) berdistribusi exponential (?? = 3). Tentukan
#   a. Fungsi Probabilitas dari Distribusi Exponensial
#   b. Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random
#   c. Nilai Rataan (??) dan Varian ( ??² ) dari Distribusi Exponensial untuk n = 100 dan ?? = 3
#      Petunjuk:
#       ??? Gunakan set.seed(1)
#       ??? Gunakan fungsi bawaan R
x5=3
#a
peluang5=dexp(x5,rate=1,log=FALSE)
#b
hist(rexp(10,rate=1),main="Histogram of Exponensial")
hist(rexp(100,rate=1),main="Histogram of Exponensial")
hist(rexp(1000,rate=1),main="Histogram of Exponensial")
hist(rexp(10000,rate=1),main="Histogram of Exponensial")
#c
n5=100
mean = 1/x
mean
var = ((mean) * (1/sqrt(n5)))*((mean) * (1/sqrt(n5)))
var

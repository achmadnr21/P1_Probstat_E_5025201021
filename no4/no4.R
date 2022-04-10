# No. 4
# Diketahui nilai x = 2 dan v = 10. Tentukan:
#   a. Fungsi Probabilitas dari Distribusi Chi-Square.
#   b. Histogram dari Distribusi Chi-Square dengan 100 data random.
#   c. Nilai Rataan (??) dan Varian ( ??² ) dari Distribusi Chi-Square.

x4=2
df=10
#a
peluang4=dchisq(x4,df,ncp=0,log=FALSE)
peluang4
#b
hist(rchisq(x4,df,ncp=0),main="Histogram of Chisquare")
#c
mean4=df
mean4
var4=df*2
var4
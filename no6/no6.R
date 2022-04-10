# No. 6
# Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8. Tentukan
#   a. Fungsi Probabilitas dari Distribusi Normal P(X1 ??? x ??? X2), hitung Z-Score Nya dan plot
#      data generate randomnya dalam bentuk grafik. Petunjuk(gunakan fungsi plot()).
#      Keterangan :
#       X1 = Dibawah rata-rata
#       X2 = Diatas rata-rata
#       Contoh data :
#         1,2,4,2,6,3,10,11,5,3,6,8
#         rata-rata = 5.083333
#         X1 = 5
#         X2 = 6
#   b. Generate Histogram dari Distribusi Normal dengan breaks 50 dan format penamaan:
#      NRP_Nama_Probstat_{Nama Kelas}_DNhistogram
#      Contoh :
#         312312312_Rola_Probstat_A_DNhistogram
#   c. Nilai Varian ( ) dari hasil generate random nilai ??² Distribusi Normal
set.seed(0)
sd <- 8 
#standar deviasi
x <- rnorm(100, 50, sd)

rata <- mean(x) 
x1 <- floor(mean(x))
x2 <- ceiling(mean(x)) 

#a
z <- function(input){
  return ((1 / (sd * sqrt(2*22/7))) * exp(1) ^ (-0.5 * ((input - rata) / sd) ^ 2)) #rumus fungsi peluang murni
}

z(x1) 
z(x2) 

plot(x, type="l", col="blue") 

plot(z(x), type="l", col="blue")


sortedx <- sort(x, decreasing = FALSE)
i <- l <- odd <- even <- 0
j <- k <- 1


for(i in 1:100){
  if (i %% 2== 0){
    even[j] <- (sortedx[i])
    j <- j + 1
  }
  else{
    odd[k] <- (sortedx[i])
    k <- k + 1
  }
}

combined <- even
flipped_odd <- sort(odd, decreasing = TRUE)
for(l in 1:50){
  combined[50 + l] <- flipped_odd[l]
}

plot(combined, type="l", col="blue")

#b
hist(x, main="Histogram", breaks=50, col="lightblue", border="white", xlim=c(30,70))

#c
paste("nilai varian= ", sd^2)

# No. 3
# Diketahui data dari sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis
# 4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)
#   a. Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?
#   b. simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini selama
#      setahun (n = 365)
#   c. dan bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan
#   d. Nilai Rataan (??) dan Varian ( ??² ) dari Distribusi Poisson.

lambda3=4.5
x3=6
n3=356
#a
peluang3=dpois(x3,lambda3)
peluang3
#b
hist(rpois(n3,lambda3),main="Histogram of Poisson")
#c.
# lebih banyak kelahiran bayi yang akan lahir dalam
# 1 tahun dibanding yang akan lahir besok
#d
mean3=var3=lambda3
mean3
var3

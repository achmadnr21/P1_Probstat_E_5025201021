# No. 1
# Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan
# seseorang yang menghadiri acara vaksinasi sebelumnya.
#  a. Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi
#     sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ?
#     (distribusi Geometrik)
#  b. mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi
#     geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )
#  c. Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?
#  d. Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama
#  e. Nilai Rataan (??) dan Varian (??²) dari Distribusi Geometrik.


x=3
prob=0.20
#a
peluang=dgeom(x-1,prob,log=FALSE)
peluang
#b
mean(rgeom(n = 1000, prob) == 3)
mean
#c
#peluang lebih besar daripada rata rata yang ada.
#d
hist(rgeom(x,prob),main="Histogram of Geometric",xlab="X")
#e
mean1=1/prob
mean1
var1=(1-prob)/prob^2
var1
#e
mean(rgeom(n = 10000, prob))+1
var(rgeom(n=100000, prob))

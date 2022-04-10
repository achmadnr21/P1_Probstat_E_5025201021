#NO.6

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

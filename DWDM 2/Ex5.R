x <- as.numeric(AirPassengers)
hist(x, breaks=seq(100,700,150), xlim=c(100,700),
     main="AirPassengers", xlab="Passengers")
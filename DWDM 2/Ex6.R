matplot(t(scale(mtcars[,c("mpg","qsec")])),
        type="l", lty=1, col=1:2,
        xaxt="n", xlab="Attribute", ylab="Scaled Value")
axis(1, at=1:2, labels=c("mpg","qsec"))
legend("topright", c("mpg","qsec"), col=1:2, lty=1)
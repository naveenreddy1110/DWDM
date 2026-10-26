points <- c(10,12,15,14,13,16,18,12,15,50)
boxplot(points, main="Tennis Player Points")
print(boxplot.stats(points)$out)
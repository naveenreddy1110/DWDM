install.packages("HSAUR")  # Run once
library(HSAUR)
data(water)

plot(mortality ~ hardness, data=water)
m <- lm(mortality ~ hardness, data=water)
abline(m, col="red")
predict(m, data.frame(hardness=88))
library(RWeka)
data(iris)
set.seed(123)
n <- sample(1:nrow(iris), 105)
train <- iris[n, ]
test <- iris[-n, ]
oneR <- OneR(Species ~ ., data = train)
j48 <- J48(Species ~ ., data = train)
p1 <- predict(oneR, test)
p2 <- predict(j48, test)
a1 <- mean(p1 == test$Species) * 100
a2 <- mean(p2 == test$Species) * 100
print(paste("OneR Accuracy:", round(a1, 2), "%"))
print(paste("J48 Accuracy:", round(a2, 2), "%"))
barplot(c(a1, a2),
        names.arg = c("OneR", "J48"),
        main = "Accuracy Comparison",
        ylab = "Accuracy (%)"
)
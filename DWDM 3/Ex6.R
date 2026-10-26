library(rpart)
data(iris)
set.seed(123)
n <- sample(1:nrow(iris), 105)
train <- iris[n, ]
test <- iris[-n, ]
model <- rpart(Species ~ ., data = train,
               method = "class")
print(model)
pred <- predict(model, test, type = "class")
accuracy <- mean(pred == test$Species) * 100
print(pred)
print(paste("Accuracy:", round(accuracy, 2), "%"))
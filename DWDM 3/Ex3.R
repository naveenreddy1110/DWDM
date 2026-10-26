install.packages("rpart")
library(rpart)
set.seed(10)
id <- sample(1:nrow(iris), 105)
train <- iris[id, ]
test <- iris[-id, ]
model <- rpart(Species ~ ., data = train, method = "class")
pred <- predict(model, test, type = "class")
print(pred)
print(table(Actual = test$Species, Predicted = pred))
plot(model)
text(model, use.n = TRUE)
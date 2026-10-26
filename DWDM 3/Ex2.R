install.packages("e1071")
library(e1071)
set.seed(10)
id <- sample(1:nrow(iris), 105)
train <- iris[id, ]
test <- iris[-id, ]
model <- naiveBayes(Species ~ ., data = train)
pred <- predict(model, test)
print(pred)
print(table(Actual = test$Species, Predicted = pred))
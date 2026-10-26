d <- read.csv("C:/Users/johns/OneDrive/문서/DWDM/LAB/diabetes_sample.csv")
print("First 6 rows:")
head(d)
print("Column names:")
names(d)
m1 <- lm(Outcome ~ Age, data = d)
print("Linear Regression Result:")
summary(m1)
m2 <- lm(Outcome ~ Age + Glucose + BMI + BloodPressure, data = d)
print("Multiple Regression Result:")
summary(m2)
plot(d$Age, d$Outcome,
     main = "Diabetes Trend by Age",
     xlab = "Age",
     ylab = "Diabetes Outcome",
     pch = 19)
abline(m1, col = "red", lwd = 2)
prediction <- predict(m2, newdata = d)
print("Predicted Values:")
print(prediction)
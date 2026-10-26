d <- read.csv("C:/Users/johns/OneDrive/문서/DWDM/LAB/diabetes.csv")

plot(d$Age, d$BloodPressure,
     xlab="Age", ylab="Blood Pressure")

b <- aggregate(BloodPressure ~ Age, d, mean)

barplot(b$BloodPressure, names.arg=b$Age,
        xlab="Age", ylab="Average Blood Pressure")
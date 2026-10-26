library(arules)
t1 <- list(c("M","O","N","K","E","Y"),
           c("D","O","N","K","E","Y"),
           c("M","A","K","E"),
           c("M","U","C","K","Y"),
           c("C","O","K","I","E"))
names(t1) <- paste0("T", 1:5)
data <- as(t1, "transactions")
rules <- apriori(data,
                 parameter = list(supp = 0.4, conf = 0.5))
inspect(rules)
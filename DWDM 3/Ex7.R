library(arules)
items <- list(
  c("Milk", "Bread", "Butter"),
  c("Bread", "Butter"),
  c("Milk", "Bread"),
  c("Milk", "Butter"),
  c("Milk", "Bread", "Butter")
)
trans <- as(items, "transactions")
rules <- apriori(trans,
                 parameter = list(
                   support = 0.4,
                   confidence = 0.6,
                   target = "rules"
                 )
)
inspect(rules)
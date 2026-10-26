library(arules)
items <- list(
  c("M", "O", "N", "K", "E", "Y"),
  c("D", "O", "N", "K", "E", "Y"),
  c("M", "A", "K", "E"),
  c("M", "U", "C", "K", "Y"),
  c("C", "O", "K", "I", "E")
)
trans <- as(items, "transactions")

freq <- apriori(trans,
                parameter = list(
                  support = 0.5,
                  target = "frequent itemsets"
                )
)
inspect(freq)
rules <- apriori(trans,
                 parameter = list(
                   support = 0.5,
                   confidence = 0.8,
                   target = "rules"
                 )
)

inspect(rules)

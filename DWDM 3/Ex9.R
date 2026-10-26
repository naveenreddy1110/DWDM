library(arules)
data("Groceries")
freq <- apriori(Groceries,
                parameter = list(
                  support = 0.01,
                  target = "frequent itemsets"
                )
)
top <- head(sort(freq, by = "support"), 10)
inspect(top)
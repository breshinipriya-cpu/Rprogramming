# 20. create multiple regression model suing Chickweigh dataset with time and diet as predictors
# predict weight and compute model error.

data("ChickWeight")

m <- lm(weight ~ Time + Diet, data = ChickWeight)
p <- predict(m)

mean((ChickWeight$weight - p)^2)
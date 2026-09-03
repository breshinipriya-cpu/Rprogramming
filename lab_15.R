# perfrom EDA on iris dataset: dimensions, summary, standard deviation, quatiles, grouping by
# species, pivot table, categorical grouping with sepal.length categories

data("iris")
dim(iris)
summary(iris)
sapply(iris[,1:4], sd)
quantile(iris$Sepal.Length)
aggregate(.~ Species, iris, mean)
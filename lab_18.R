# 18. create graphs in R: boxplot, histogram, bar plot, line chart, scatter plot

# Data
x <- c(10, 20, 30, 40, 50)
y <- c(5, 15, 25, 35, 45)

# Arrange plots in 2 rows and 3 columns
par(mfrow = c(2, 3))

# 1. Boxplot
boxplot(x,
        main = "Boxplot",
        col = "lightblue")

# 2. Histogram
hist(x,
     main = "Histogram",
     col = "lightgreen")

# 3. Bar Plot
barplot(x,
        main = "Bar Plot",
        col = "orange",
        names.arg = c("A", "B", "C", "D", "E"))

# 4. Line Chart
plot(x,
     type = "l",
     main = "Line Chart",
     col = "blue")

# 5. Scatter Plot
plot(x, y,
     main = "Scatter Plot",
     xlab = "X Values",
     ylab = "Y Values",
     col = "red",
     pch = 19)
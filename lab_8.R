#8. generate random numbers from a normal distribution; count occurrences

set.seed(123)
x <- rnorm(100, mean = 50, sd = 10)

print(x)
print(table(x))
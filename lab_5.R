# 5.create and manipulate factor variables

a = c("short", "medium", "tall", "medium", "tall", "short")

b = factor(a)
print(b)

set.seed(10)

c = sample(LETTERS[1:5], 8, replace = TRUE)
d = factor(c)
print(d)
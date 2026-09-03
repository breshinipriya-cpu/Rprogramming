#13. Combine multiple arrays row-wise

rm(list = ls())

a <- c(1,2,3)
b <- c(4,5,6)
c <- c(7,8,9)
d <- rbind(a, b, c)
print("combined arrays (row-wise):")
print(d)

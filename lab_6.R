#6.create an R list containing vectors, matrices, and function; display contents

a = c(1,2,3,4)
b = matrix(1:6, nrow = 2, ncol = 3)
c = function(x) x^2
mylist = list(Vector = a, Matrix = b, Function = c)
print(mylist)
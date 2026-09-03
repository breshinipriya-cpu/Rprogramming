# Wrtie R programs for basic tasks : factor of a number,
# generate a vector of 10 random integers between -50 and 50, print numbers 1-100 with 
# fizzbuzz logic.

n <- 12L
factors <- integer(0)
for(i in seq_len(n)){
  if(n %% i == 0L){
    factors <- base::c(factors, i)
  }
}

print("Factor of the number :")
print(factors)

set.seed(123)
print("10 random integers :")
print(sample(-50:50, 10, replace = TRUE))

for(i in 1:100){
  if(i %% 15 == 0) print("FizzBuzz")
  else if( i %% 3 == 0) print("Fizz")
  else if( i %% 5 == 0) print("Buzz")
  else print(i)
}
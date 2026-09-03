sum <- function(a,b,c){
  result <- a+b+c
  if(result > 50){
    return("High value")
  }
  else{
    return("low Value")
  }
}

x <- sum(60,20,30)
print(x)
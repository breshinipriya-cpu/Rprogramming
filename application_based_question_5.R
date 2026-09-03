balance <- 10000
transaction_history <- c()

deposite <- function(amount){
  balance <<- balance + amount
  transaction_history <<- c(transaction_history, paste("Deposited Rs.", amount))
  cat("Amount Deposited Successfully.\n")
}

withdraw <- function(amount){
  if(amount <= balance){
    balance <<- balance - amount
    transaction_history <<- c(transaction_history, paste("Withdrawn Rs.",amount))
    cat("Amount withdrawn successfully.\n")
  }
  else{
    cat("Insufficient Balance.\n")
  }
}

check_balance <- function(){
  cat("Current Balance : Rs.",balance, "\n")
}

show_history <- function(){
  cat("\nTransaction History\n")
  print(transaction_history)
}

deposite(5000)
withdraw(2000)
check_balance()
show_history()
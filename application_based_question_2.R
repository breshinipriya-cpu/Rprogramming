
emp_id <- c(101, 102, 103, 104, 105)
name <- c("A", "B", "C", "D", "E")
basic_pay <- c(30000, 45000, 52000, 40000, 60000)
allowance <- c(5000, 7000, 8000, 6000, 10000)

gross_salary <- basic_pay + allowance

employees <- data.frame(emp_id, name, basic_pay, allowance, gross_salary)

cat("Employee Salary Details \n")
print(employees)

cat("\nEmployees earning above Rs. 50000\n")
high_earners <- employees[employees$gross_salary > 50000,]
print(high_earners)

max_index <- which.max(employees$gross_salary)
cat("\nEmployee with highest salary\n")

print(employees[max_index, ])

cat("\nSummary Report\n")
cat("Total Employees : ",nrow(employees), "\n")
cat("Average salary :", mean(employees$gross_salary), "\n")
cat("Maximum salary :", max(employees$gross_salary), "\n")
cat("Minimum salary :", min(employees$gross_salary), "\n")
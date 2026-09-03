student <- data.frame(
  ID = c(101,102,103,104),
  Name = c("A","D","K","P"),
  Age = c(20,21,20,22),
  Department = c("CSE","AI","ECE","IT"),
  CGPA = c(8.5,9.1,8.0,9.3)
)

student

library(reshape2)

longdata <- melt(student,
                 id.vars = c("ID","Name"))

longdata

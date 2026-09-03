# 17. explore titanic dataset : bar chart of survival vs class, modify plot by gender, histogram of age.

data("Titanic")
t <- as.data.frame(Titanic)
barplot(table(t$Class, t$Survived), main="Survival vs Class", beside=TRUE)
barplot(table(t$Sex, t$Survived), main="Survival vs Gender", beside=TRUE)

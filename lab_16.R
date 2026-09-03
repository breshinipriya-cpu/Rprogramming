# 16. explore USArrests dataset: summary statistics, state with largest rape arrests, max and min
# murder rates, correlation among features, states above median assault arrests and bottom 25% for murder,
# visualization with histogram, density, scatterplot, bar graphic


data("USArrests")
summary(USArrests)
which.max(USArrests$Rape)
max(USArrests$Murder)
min(USArrests$Murder)
cor(USArrests)
hist(USArrests$Murder)
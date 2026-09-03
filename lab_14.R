#14. explore and manipulate chickweight dataset(sorting, melting, casting by diet)

data("ChickWeight")
head(ChickWeight)
sorted <- ChickWeight[order(ChickWeight$weight),]
print(sorted)
aggregate(weight ~ Diet, ChickWeight, mean)
# 21. randomly split iris dataset into train/test (80/20), build logistic regression(species ~petal.Length)
# , predict, and evaluate with confusion matrix.

data("iris")

# Keep only setosa and versicolor
iris <- subset(iris, Species %in% c("setosa", "versicolor"))

# Set seed for reproducibility
set.seed(123)

# Randomly select 80% for training
train_index <- sample(1:nrow(iris), size = 0.8 * nrow(iris))

# Create training and testing datasets
train <- iris[train_index, ]
test <- iris[-train_index, ]

# Build logistic regression model
m <- glm(Species ~ Petal.Length,
         data = train,
         family = binomial)

# Predict probabilities on test data
prob <- predict(m, newdata = test, type = "response")

# Convert probabilities to class labels
p <- ifelse(prob > 0.5, "versicolor", "setosa")

# Confusion matrix
table(Predicted = p, Actual = test$Species)
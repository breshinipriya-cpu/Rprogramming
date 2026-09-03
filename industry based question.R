# Create Sample Retail Customer Dataset

Customer_ID <- 1:10

Gender <- c("Male","Female","Male","Female","Male",
            "Female","Male","Female","Male","Female")

Age <- c(24,31,27,42,35,29,40,26,33,38)

City <- c("Chennai","Madurai","Coimbatore","Salem","Trichy",
          "Chennai","Madurai","Salem","Coimbatore","Trichy")

Product_Category <- c("Electronics","Clothing","Groceries","Electronics",
                      "Furniture","Groceries","Electronics","Clothing",
                      "Furniture","Groceries")

Purchase_Amount <- c(620,250,180,890,760,220,980,340,710,260)

Monthly_Income <- c(4800,3500,4200,6800,6100,
                    3900,7200,3600,5800,4100)

Customer_Rating <- c(4.5,3.8,4.0,4.8,4.3,
                     3.9,4.9,4.1,4.4,3.7)

Membership_Status <- c("Premium","Regular","Regular","Premium","Premium",
                       "Regular","Premium","Regular","Premium","Regular")

Store_Type <- c("Urban","Semi-Urban","Urban","Urban","Semi-Urban",
                "Urban","Urban","Rural","Urban","Semi-Urban")

retail_data <- data.frame(
  Customer_ID,
  Gender,
  Age,
  City,
  Product_Category,
  Purchase_Amount,
  Monthly_Income,
  Customer_Rating,
  Membership_Status,
  Store_Type
)

#print(retail_data)

# cat("QUESTION 1\n")
# cat("Measures of Central Tendency\n\n")
# 
# # Mean
# mean_purchase <- mean(retail_data$Purchase_Amount)
# cat("Mean Purchase Amount =", mean_purchase, "\n")
# 
# # Median
# median_purchase <- median(retail_data$Purchase_Amount)
# cat("Median Purchase Amount =", median_purchase, "\n")
# 
# # Mode
# freq <- table(retail_data$Purchase_Amount)
# 
# if(max(freq) == 1){
#   cat("Mode = No mode (all values occur only once)\n")
# } else{
#   cat("Mode =", names(freq[freq == max(freq)]), "\n")
# }
# 
# cat("QUESTION 2\n")
# cat("Measures of Dispersion\n\n")
# 
# purchase_range <- range(retail_data$Purchase_Amount)
# purchase_variance <- var(retail_data$Purchase_Amount)
# purchase_sd <- sd(retail_data$Purchase_Amount)
# purchase_iqr <- IQR(retail_data$Purchase_Amount)
# 
# cat("Range =", purchase_range[1], "to", purchase_range[2], "\n")
# cat("Variance =", purchase_variance, "\n")
# cat("Standard Deviation =", purchase_sd, "\n")
# cat("Interquartile Range =", purchase_iqr, "\n")



# cat("QUESTION 3\n")
# cat("Customer Rating Analysis\n\n")
# 
# # Average Customer Rating by Membership Status
# rating_mean <- aggregate(Customer_Rating ~ Membership_Status,
#                          data = retail_data,
#                          mean)
# 
# print(rating_mean)
# 
# # Boxplot
# boxplot(Customer_Rating ~ Membership_Status,
#         data = retail_data,
#         col = c("lightgreen", "lightblue"),
#         main = "Customer Rating by Membership Status",
#         xlab = "Membership Status",
#         ylab = "Customer Rating")


# cat("QUESTION 4\n")
# cat("Monthly Income vs Purchase Amount\n\n")
# 
# # Correlation
# correlation <- cor(retail_data$Monthly_Income,
#                    retail_data$Purchase_Amount)
# 
# cat("Correlation Coefficient =", round(correlation,3), "\n\n")
# 
# # Scatter Plot
# plot(retail_data$Monthly_Income,
#      retail_data$Purchase_Amount,
#      main="Monthly Income vs Purchase Amount",
#      xlab="Monthly Income",
#      ylab="Purchase Amount",
#      pch=19,
#      col="blue")
# 
# # Regression Line
# abline(lm(Purchase_Amount ~ Monthly_Income,
#           data=retail_data),
#        col="red",
#        lwd=2)

# cat("QUESTION 5\n")
# cat("Independent T-Test\n\n")
# 
# t_test <- t.test(Purchase_Amount ~ Gender,
#                  data = retail_data)
# 
# print(t_test)

# cat("QUESTION 6\n")
# cat("ANOVA Test\n\n")
# 
# # Perform ANOVA
# anova_model <- aov(Customer_Rating ~ Store_Type,
#                    data = retail_data)
# 
# # Display ANOVA Table
# cat("ANOVA Table\n\n")
# print(summary(anova_model))
# 
# cat("QUESTION 7\n")
# cat("Chi-Square Test\n\n")
# 
# membership_table <- table(retail_data$Membership_Status,
#                           retail_data$Product_Category)
# 
# cat("Contingency Table\n\n")
# print(membership_table)
# 
# cat("\nChi-Square Test Result\n\n")
# 
# chi_test <- chisq.test(membership_table)
# 
# print(chi_test)

# cat("QUESTION 8\n")
# cat("Target Customer Segment Analysis\n\n")
# 
# # Average Purchase Amount by Membership Status
# membership_avg <- aggregate(Purchase_Amount ~ Membership_Status,
#                             data = retail_data,
#                             mean)
# 
# cat("Average Purchase Amount by Membership Status\n")
# print(membership_avg)
# 
# # Average Purchase Amount by Product Category
# category_avg <- aggregate(Purchase_Amount ~ Product_Category,
#                           data = retail_data,
#                           mean)
# 
# cat("\nAverage Purchase Amount by Product Category\n")
# print(category_avg)
# 
# # Average Purchase Amount by Store Type
# store_avg <- aggregate(Purchase_Amount ~ Store_Type,
#                        data = retail_data,
#                        mean)
# 
# cat("\nAverage Purchase Amount by Store Type\n")
# print(store_avg)
# 
# # Bar Plot
# barplot(category_avg$Purchase_Amount,
#         names.arg = category_avg$Product_Category,
#         col = "skyblue",
#         main = "Average Purchase Amount by Product Category",
#         ylab = "Average Purchase Amount")

# cat("QUESTION 9\n")
# cat("Factors Influencing Purchase Amount\n\n")
# 
# # Summary Statistics
# summary(retail_data)
# 
# # Correlation Matrix
# correlation_matrix <- cor(retail_data[, c("Purchase_Amount",
#                                           "Monthly_Income",
#                                           "Customer_Rating",
#                                           "Age")])
# 
# cat("\nCorrelation Matrix\n")
# print(round(correlation_matrix, 2))
# 
# # Boxplot
# boxplot(Purchase_Amount ~ Membership_Status,
#         data = retail_data,
#         col = c("orange", "lightgreen"),
#         main = "Purchase Amount by Membership Status",
#         xlab = "Membership Status",
#         ylab = "Purchase Amount")

cat("QUESTION 10\n")
cat("BUSINESS ANALYTICS REPORT\n")
cat("----------------------------------------\n\n")

cat("Average Purchase Amount :",
    mean(retail_data$Purchase_Amount), "\n")

cat("Median Purchase Amount :",
    median(retail_data$Purchase_Amount), "\n")

cat("Standard Deviation :",
    round(sd(retail_data$Purchase_Amount), 2), "\n")

cat("Correlation (Income vs Purchase) :",
    round(cor(retail_data$Monthly_Income,
              retail_data$Purchase_Amount), 2), "\n\n")

cat("Average Customer Rating by Membership\n")
print(aggregate(Customer_Rating ~ Membership_Status,
                data = retail_data,
                mean))

cat("\nAverage Purchase Amount by Store Type\n")
print(aggregate(Purchase_Amount ~ Store_Type,
                data = retail_data,
                mean))

cat("\nRecommendation:\n")
cat("- Focus on Premium Members.\n")
cat("- Promote Electronics and Furniture products.\n")
cat("- Target Urban Stores for loyalty campaigns.\n")
cat("- Provide special offers to Regular Members to improve retention.\n")

# Handling Missing Values in R

feedback_scores <- c(8.5, 9.0, NA, 7.5, NA, 10.0)


sales_data <- data.frame(
  Transaction_ID = c(1001, 1002, 1003, 1004, 1005),
  Sales_Amount = c(250, NA, 400, NA, 600), 
  Customer_Rating = c(4.5, NA, 3.5, 4.0, NA), 
  Product_Category = c("Electronics", "Clothing", NA, "Furniture", "Electronics")
)

print(feedback_scores)
print(sales_data)

print(is.na(feedback_scores))

print(is.na(sales_data))

print(apply(sales_data, 2, function(col) any(is.na(col))))


# Replacing missing values with Mean

# Vector
mean_score <- mean(feedback_scores, na.rm = TRUE)
feedback_scores[is.na(feedback_scores)] <- mean_score
feedback_scores

sales_data

for (col in c("Sales_Amount", "Customer_Rating")) {
  col_mean <- mean(sales_data[[col]], na.rm = TRUE)
  sales_data[[col]][is.na(sales_data[[col]])] <- col_mean
}

sales_data

# Replacing missing values with Median

sales_data <- data.frame(
  Transaction_ID = c(1001, 1002, 1003, 1004, 1005),
  Sales_Amount = c(250, NA, 400, NA, 600), 
  Customer_Rating = c(4.5, NA, 3.5, 4.0, NA), 
  Product_Category = c("Electronics", "Clothing", NA, "Furniture", "Electronics")
)

sales_data

for (col in c("Sales_Amount", "Customer_Rating")) {
  col_median <- median(sales_data[[col]], na.rm = TRUE)
  sales_data[[col]][is.na(sales_data[[col]])] <- col_median
}


sales_data$Product_Category[is.na((sales_data$Product_Category))] <- "Unknown"
sales_data


# Replace the missing values with the max

feedback_2 <- c(7.0, NA, 8.5, 9.0, NA, 6.5)
sales_data_2 <- data.frame(
  Transaction_ID = c(2001, 2002, 2003, 2004, 2005),
  Sales_Amount = c(NA, 320, 450, NA, 700),
  Customer_Rating = c(3.0, 4.0, NA, 2.5, 5.0)
)


max_score <- max(feedback_2, na.rm = TRUE)
feedback_2[is.na(feedback_2)] <- max_score
feedback_2


for (col in c("Sales_Amount", "Customer_Rating")) {
  col_max <- max(sales_data_2[[col]], na.rm = TRUE)
  sales_data_2[[col]][is.na(sales_data_2[[col]])] <- col_max
}

sales_data_2











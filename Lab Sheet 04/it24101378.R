setwd("C:/Users/it24101378/Desktop/it24101378")
getwd

branch_data <- read.table("Exercise.txt", header = TRUE")

#2
#Team -catagorical(nominal)
#Team Attendence - continous(ratio)
#Team salary - continous(ratio)
#Years - continous(ratio)

#3
boxplot(branch_datasalary,main="boxplot of sales",ylab = "Sales")

#4
summary(branch_data$Advertising)
IQR(branch_data$Advertising)

#5
find_outliers <- function(x) {
  Q1 <- quantile(x, 0.25)
  Q3 <- quantile(x, 0.75)
  IQR_val <- IQR(x)
  lower_bound <- Q1 - 1.5 * IQR_val
  upper_bound <- Q3 + 1.5 * IQR_val
  outliers <- x[x < lower_bound | x > upper_bound]
  return(outliers)
}

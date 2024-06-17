age <- c(23, 23, 27, 27, 39, 41, 47, 49, 50, 52, 54, 54, 56, 57, 58, 58, 60, 61)
percent_fat <- c(9.5, 26.5, 7.8, 17.8, 31.4, 25.9, 27.4, 27.2, 31.2, 34.6, 42.5, 28.8, 33.4, 30.2, 34.1, 32.9, 41.2, 35.7)

mean_age <- mean(age)
mean_percent_fat <- mean(percent_fat)

median_age <- median(age)
median_percent_fat <- median(percent_fat)

sd_age <- sd(age)
sd_percent_fat <- sd(percent_fat)

print(paste("Mean Age:", mean_age))
print(paste("Median Age:", median_age))
print(paste("Standard Deviation Age:", sd_age))

print(paste("Mean %Fat:", mean_percent_fat))
print(paste("Median %Fat:", median_percent_fat))
print(paste("Standard Deviation %Fat:", sd_percent_fat))

boxplot(age, main = "Boxplot of Age")
boxplot(percent_fat, main = "Boxplot of %Fat")

plot(age, percent_fat, main = "Scatter Plot", xlab = "Age", ylab = "%Fat")

qqnorm(age, main = "QQ Plot of Age")
qqline(age, col = 2)

qqnorm(percent_fat, main = "QQ Plot of %Fat")
qqline(percent_fat, col = 2)

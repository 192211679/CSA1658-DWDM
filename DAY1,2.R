
ages <- c(13, 15, 16, 16, 19, 20, 20, 21, 22, 22, 25, 25, 25, 25, 30, 33, 
          33, 35, 35, 35, 35, 36, 40, 45, 46, 52, 70)

mean_age <- mean(ages)
median_age <- median(ages)

mode_age <- names(sort(table(ages), decreasing = TRUE))[1]

midrange_age <- (min(ages) + max(ages)) / 2

Q1 <- quantile(ages, 0.25)
Q3 <- quantile(ages, 0.75)

print(paste("Mean:", mean_age))
print(paste("Median:", median_age))
print(paste("Mode:", mode_age))
print(paste("Midrange:", midrange_age))
print(paste("Q1 (First Quartile):", Q1))
print(paste("Q3 (Third Quartile):",Q3))


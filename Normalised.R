value <- 300

min_value <- 200
max_value <- 1000
minmax_normalized <- (value - min_value) / (max_value - min_value)

print(paste("Min-Max Normalized value:", minmax_normalized))

mean_age <- 500 
std_deviation_age <- 282.84
zscore_normalized <- (value - mean_age) / std_deviation_age

print(paste("Z-Score Normalized value:", zscore_normalized))

power <- floor(log10(max(abs(value)))) + 1
decimal_scaled <- value / (10 ^ power)

print(paste("Normalization by Decimal Scaling:", decimal_scaled))


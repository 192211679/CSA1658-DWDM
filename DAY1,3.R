
data <- c(200, 300, 400, 600, 1000)

min_max_normalized <- (data - min(data)) / (max(data) - min(data))

z_score_normalized <- (data - mean(data)) / sd(data)

print("Min-Max Normalization:")
print(min_max_normalized)
print("Z-score Normalization:")
print(z_score_normalized)
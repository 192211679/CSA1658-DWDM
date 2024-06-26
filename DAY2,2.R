prices <- c(1, 1, 5, 5, 5, 5, 5, 8, 8, 10, 10, 10, 10, 12, 14, 14, 14, 15, 15, 15, 15, 15, 15, 18, 18, 18, 18, 18, 18, 18, 18, 20, 20, 20, 20, 20, 20, 20, 21, 21, 21, 21, 25, 25, 25, 25, 25, 28, 28, 30, 30, 30)

# Equal-frequency Partitioning
bins <- cut(prices, breaks = 3, labels = FALSE)
print(bins)

bin_means <- tapply(prices, bins, mean)
print(bin_means)

bin_boundaries <- cut(prices, breaks = 3, labels = FALSE, include.lowest = TRUE)
print(bin_boundaries)

hist(prices, breaks = 3, col = " lightblue ", main = "Histogram of Prices", xlab = "Price", ylab="Frequency")


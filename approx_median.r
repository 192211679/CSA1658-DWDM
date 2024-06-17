data <- data.frame(
  age = c("1-5", "5-15", "15-20", "20-50", "50-80", "80-110"),
  frequency = c(200, 450, 300, 1500, 700, 44)
)

data$cumulative_frequency <- cumsum(data$frequency)

total_frequency <- sum(data$frequency)
median_cf <- total_frequency / 2
median_index <- which(data$cumulative_frequency >= median_cf)[1]

median_interval <- as.numeric(strsplit(data$age[median_index], "-")[[1]])
median_lower_limit <- median_interval[1]
median_upper_limit <- median_interval[2]
median_interval_width <- median_upper_limit - median_lower_limit

if (median_index == 1) {
  median_cumulative_frequency_before <- 0
} else {
  median_cumulative_frequency_before <- data$cumulative_frequency[median_index - 1]
}

median_frequency_within_interval <- data$frequency[median_index]

median <- median_lower_limit + ((median_cf - median_cumulative_frequency_before) / median_frequency_within_interval) * median_interval_width

cat("APPROXIMATE MEDIAN VALUE IS : ",median)
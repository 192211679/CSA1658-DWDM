
intervals <- c("1-5", "5-15", "15-20", "20-50", "50-80", "80-110")
frequencies <- c(200, 450, 300, 1500, 700, 44)


cumulative_freq <- cumsum(frequencies)


median_interval_index <- which.max(cumulative_freq >= sum(frequencies)/2)


median_interval <- intervals[median_interval_index]
lower_bound <- as.numeric(strsplit(median_interval, "-")[[1]][1])
frequency_median <- frequencies[median_interval_index]

median <- lower_bound + ((sum(frequencies)/2 - cumulative_freq[median_interval_index-1]) / frequency_median) * (as.numeric(strsplit(median_interval, "-")[[1]][2]) - lower_bound)
print(median)
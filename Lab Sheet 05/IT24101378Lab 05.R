getwd()
setwd("C:\\Users\\User\\Desktop\\IT24101378")
Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE)
names(Delivery_Times) <- "Time"
times <- as.numeric(Delivery_Times$Time)

breaks <- seq(20, 70, length.out = 10)

hist(times,
     breaks = breaks,
     right = FALSE,
     main = "Histogram of Delivery Times",
     xlab = "Delivery Time",
     ylab = "Frequency",
     col = "lightblue",
     border = "black")

hist_data <- hist(times, breaks = breaks, plot = FALSE, right = FALSE)
midpoints <- hist_data$mids
cum_freq <- cumsum(hist_data$counts)

plot(midpoints, cum_freq, type = "o",
     main = "Cumulative Frequency Polygon (Ogive)",
     xlab = "Delivery Time",
     ylab = "Cumulative Frequency",
     col = "blue")

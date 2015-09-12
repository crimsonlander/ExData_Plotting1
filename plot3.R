source("read_data.R")

png("plot3.png")
par(lwd = 1)
plot(d$datetime, d$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "")
lines(d$datetime, d$Sub_metering_2, type = "l", col = "red")
lines(d$datetime, d$Sub_metering_3, type = "l", col = "blue")
legend("topright", col = c("black", "red", "blue"), lty = 1, legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()
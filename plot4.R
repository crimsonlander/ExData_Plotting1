source("read_data.R")

png("plot4.png")
par(mfcol= c(2,2))
#1
par(lwd = 1.3)
with(d, plot(datetime, Global_active_power, type = "l", ylab = "Global Active Power", xlab = ""))
#2
par(lwd = 1)
plot(d$datetime, d$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "")
lines(d$datetime, d$Sub_metering_2, type = "l", col = "red")
lines(d$datetime, d$Sub_metering_3, type = "l", col = "blue")
legend("topright", col = c("black", "red", "blue"), lty = 1, legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty = "n")
#3
par(lwd = 1.3)
with(d, plot(datetime, Voltage, type = "l"))
#4
par(lwd = 1)
with(d, plot(datetime, Global_reactive_power, type = "l"))
dev.off()
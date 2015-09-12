source("read_data.R")

png("plot2.png")
par(lwd = 1.3)
with(d, plot(datetime, Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = ""))
dev.off()
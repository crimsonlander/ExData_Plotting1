source("read_data.R")

png("plot2.png", bg="transparent")
par(lwd = 1)
with(d, plot(datetime, Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = ""))
dev.off()
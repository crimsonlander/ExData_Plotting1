source("read_data.R")

png("plot1.png", bg="transparent")
hist(d$Global_active_power, breaks = 12, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()
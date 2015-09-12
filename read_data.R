if (!exists("household_power_consumption")) {
  
  # Download data
  if (!file.exists("household_power_consumption.txt")) {
    temp <- tempfile()
    z <- download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", temp, method = "libcurl")
    unzip(temp, "household_power_consumption.txt")
  }
  
  # Read data
  d <-read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = c("?"), colClasses = c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))
  d <- d[d$Date == "1/2/2007" | d$Date == "2/2/2007",]
  
  Sys.setlocale("LC_TIME","en_US.utf8")
  
  d$datetime <- strptime(paste(d$Time, d$Date, sep = " "), "%H:%M:%S %d/%m/%Y", tz = "UTC")
  
  household_power_consumption <- 1
}
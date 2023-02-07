source("readdata.R")

png("plot3.png")

times <- as.POSIXct(paste(data$Date, data$Time), 
	              format = "%d/%m/%Y %H:%M:%OS")
plot(times, data$Sub_metering_1, type = "l", col = "green", xlab = "datetime",
     ylab = "Energy sub metering")
lines(times, data$Sub_metering_2, type = "l", col = "red")
lines(times, data$Sub_metering_3, type = "l", col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
      col = c("green", "red", "blue"), lwd = 1)

dev.off()
source("readdata.R")

png("plot4.png")

times <- as.POSIXct(paste(data$Date, data$Time), 
	              format = "%d/%m/%Y %H:%M:%OS")
par(mfrow = c(2,2))

plot(times, data$Global_active_power, type = "l",
     xlab = "datetime", ylab = "Global active power (kilowatts)")

plot(times, data$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")

plot(times, data$Sub_metering_1, type = "l", col = "green", xlab = "datetime",
     ylab = "Energy sub metering")
lines(times, data$Sub_metering_2, type = "l", col = "red")
lines(times, data$Sub_metering_3, type = "l", col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
      col = c("green", "red", "blue"), lwd = 1)

plot(times, data$Global_reactive_power, type = "l",
     xlab = "datetime", ylab = "Global Reactive Power")

dev.off()
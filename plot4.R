source("readdata.R")

png("plot4.png")

datetime <- as.POSIXct(paste(data$Date, data$Time), 
	              format = "%d/%m/%Y %H:%M:%OS")
par(mfrow = c(2,2))

plot(datetime, data$Global_active_power, type = "l",
     ylab = "Global active power (kilowatts)")

plot(datetime, data$Voltage, type = "l", ylab = "Voltage")

plot(datetime, data$Sub_metering_1, type = "l", col = "green",
     ylab = "Energy sub metering")
lines(datetime, data$Sub_metering_2, type = "l", col = "red")
lines(datetime, data$Sub_metering_3, type = "l", col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
      col = c("green", "red", "blue"), lwd = 1)

plot(datetime, data$Global_reactive_power, type = "l",
     ylab = "Global Reactive Power")

dev.off()
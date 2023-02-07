source("readdata.R")

png("plot2.png")

times <- as.POSIXct(paste(data$Date, data$Time), 
	              format = "%d/%m/%Y %H:%M:%OS")
plot(times, data$Global_active_power, type = "l",
     xlab = "datetime", ylab = "Global active power (kilowatts)")

dev.off()
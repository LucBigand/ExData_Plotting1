source("readdata.R")

png("plot3.png")

times <- as.POSIXct(paste(data$Date, data$Time), 
	              format = "%d/%m/%Y %H:%M:%OS")
plot(times, data$Sub_metering_1, type = "l", col = "green")
lines(times, data$Sub_metering_2, type = "l", col = "red")
lines(times, data$Sub_metering_3, type = "l", col = "blue")

dev.off()
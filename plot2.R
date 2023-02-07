source("readdata.R")

png("plot2.png")

datetime <- as.POSIXct(paste(data$Date, data$Time), 
	              format = "%d/%m/%Y %H:%M:%OS")
plot(datetime, data$Global_active_power, type = "l",
     ylab = "Global active power (kilowatts)")

dev.off()
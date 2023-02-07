source("readdata.R")

png("plot1.png")

hist(data$Global_active_power, main = "Global active power",
     xlab = "Global active power (kilowatts)")

dev.off()
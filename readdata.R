classes <- c(rep("character", 2), rep("numeric", 7))
data <- read.table("../household_power_consumption.txt", sep = ";", 
			  header = TRUE, colClasses = classes, na.strings = "?")
dateCondition <- ((data$Date == "1/2/2007") | (data$Date == "2/2/2007"))
data <- data[dateCondition,]
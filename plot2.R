electric_consumption <- read.table("/Users/ianeheath/Desktop/household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?")
electric_consumption$Date <- as.Date(electric_consumption$Date, format = "%d/%m/%Y")

electric_consumption$DateTime <- strptime(electric_consumption$DateTime, format = "%d/%m/%Y %H:%M:%S")
electric_consumption$DateTime <- paste(electric_consumption$Date, electric_consumption$Time, sep = " ")
used_data <- electric_consumption[electric_consumption$Date >= "2007-02-01" & electric_consumption$Date <= "2007-02-03",]
names(used_data)
str(used_data)
<<<<<<< HEAD
png(filename = "/Users/ianeheath/Desktop/Exploratory_Analysis_Assignment_1/plot2.png")
plot(used_data$DateTime, used_data$Global_active_power, type = "n", xlab = "", ylab = "Global Active Power (kilowatts)")
lines(used_data$DateTime, used_data$Global_active_power)
dev.off()
=======
plot(used_data$DateTime, used_data$Global_active_power)
     
>>>>>>> f3ed92ccdbd4f95b1da3e8c964bf89e1f1914598

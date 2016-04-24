electric_consumption <- read.table("/Users/ianeheath/Desktop/household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?")
electric_consumption$Date <- as.Date(electric_consumption$Date, format = "%d/%m/%Y")

electric_consumption$DateTime <- strptime(electric_consumption$DateTime, format = "%d/%m/%Y %H:%M:%S")
electric_consumption$DateTime <- paste(electric_consumption$Date, electric_consumption$Time, sep = " ")
used_data <- electric_consumption[electric_consumption$Date >= "2007-02-01" & electric_consumption$Date <= "2007-02-03",]
names(used_data)
str(used_data)

#Plot and save plot 2

png(filename = "/Users/ianeheath/Desktop/Exploratory_data_Assignment_1/plot3.png")
plot(used_data$DateTime, used_data$Sub_metering_1, type = "n", xlab = "", ylab = "Energy Sub Metering")
lines(used_data$DateTime, used_data$Sub_metering_1, col = "black")
lines(used_data$DateTime, used_data$Sub_metering_2, col = "red")
lines(used_data$DateTime, used_data$Sub_metering_3, col = "blue")
legend("topright", c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1)
dev.off()
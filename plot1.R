electric_consumption <- read.table("/Users/ianeheath/Desktop/household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?")

electric_consumption$DateTime <- paste(electric_consumption$Date, electric_consumption$Time, sep = " ")
electric_consumption$DateTime <- strptime(electric_consumption$DateTime, format = "%d/%m/%Y %H:%M:%S")
electric_consumption$Date <- as.Date(electric_consumption$Date, format = "%d/%m/%Y")
str(electric_consumption)
used_data <- electric_consumption[electric_consumption$Date >= "2007-02-01" & electric_consumption$Date <= "2007-02-02",]


#creating Global Active Power Histogram
png(filename = "/Users/ianeheath/Desktop/Exploratory_data_Assignment_1/plot1.png")
hist(used_data$Global_active_power, xlab = "Global Active Power (kilowatts)", ylab = "Frequency", main = "Global Active Power", col = "red")
dev.off()

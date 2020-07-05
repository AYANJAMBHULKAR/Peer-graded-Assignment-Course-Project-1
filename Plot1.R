#Peer-graded Assignment: Course Project 1
#read txt file

power_consumption <- read.csv("D:/Coursera/ASSIGNMENT/5/household_power_consumption.txt", sep = ";", stringsAsFactors = FALSE)

#Change classes of Date and Time variables

power_consumption$Date <- as.Date(power_consumption$Date, format = "%d / %m / %Y")
power_consumption$DateTime <- strptime(paste(power_consumption$Date, power_consumption$Time), format = "%Y - %m - %d  %H : %M : %S")

#Choose data from "2007-2-1" to "2007-2-2"

power_consumption <- power_consumption[power_consumption$Date >= "2007-2-1" & power_consumption$Date <= "2007-2-2",]

#Change classes of Data's 3:8 cloumns to numeric

power_consumption[, 3] <- as.numeric(power_consumption[, 3])
power_consumption[, 4] <- as.numeric(power_consumption[, 4])
power_consumption[, 5] <- as.numeric(power_consumption[, 5])
power_consumption[, 6] <- as.numeric(power_consumption[, 6])
power_consumption[, 7] <- as.numeric(power_consumption[, 7])
power_consumption[, 8] <- as.numeric(power_consumption[, 8])

#Plot1

with(power_consumption, hist(Global_active_power, xlab = "Global Active Power (Kilowatts)", col = "red", main = "Global Active Power"))

#Save Plot1 to PNG file

dev.copy(device = png, width = 480, height = 480, file = "Plot1.png")

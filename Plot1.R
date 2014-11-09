power = read.csv2("household_power_consumption.txt", header = TRUE, stringsAsFactors = FALSE)
dim(power)
names(power)
powersub = power[(power$Date == "1/2/2007" | power$Date == "2/2/2007"),]
dim(powersub)
powersub$Global_active_power = as.numeric(powersub$Global_active_power)
par(mar = c(4,4,3,1))
hist(powersub$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", main =  NULL)
title("Global Active Power")
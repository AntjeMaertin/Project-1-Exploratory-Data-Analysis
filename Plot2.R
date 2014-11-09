power = read.csv2("household_power_consumption.txt", header = TRUE, stringsAsFactors = FALSE)
powersub = power[(power$Date == "1/2/2007" | power$Date == "2/2/2007"),]
powersub$Date = as.Date(powersub$Date, format = "%d/%m/%Y")
conc_DT = paste(powersub$Date,powersub$Time,sep=' ')
DT = strptime(conc_DT,"%Y-%m-%d %H:%M:%S")
par(mar = c(2,4,1,1))
plot(DT,powersub$Global_active_power, ylab = "Global Active Power (kilowatts)",type = "l", main = NULL)

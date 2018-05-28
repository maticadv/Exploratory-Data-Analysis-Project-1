## Drawing Plot 2: 
plot(Data$Global_active_power~Data$DateTime, type ="l", ylab="Global Active Power (kilowatts)", xlab="")
## saving graph:
dev.copy(png,"plot2.png", width=480, height=480)
dev.off()

## Drawing plot 3:
with(Data, {
        plot(Sub_metering_1~DateTime, type="l", ylab="Global Active Power (kilowatts)", xlab="")
        lines(Sub_metering_2~DateTime,col='Red')
        lines(Sub_metering_3~DateTime,col='Blue')
})
legend("topright", col=c("black", "red", "blue"), lwd=c(1,1,1), 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
## Saving graph:
dev.copy(png, file="plot3.png", height=480, width=480)
dev.off()

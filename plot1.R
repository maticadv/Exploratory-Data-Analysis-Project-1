## Loading data:
Data <- read.table("C:\\Users\\ADMIN\\Desktop\\Data Scientist Specialization\\Course 4 - Exploratory Data Analysis\\Week 1\\Project Course\\household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")
## Giving format to date
Data$Date <- as.Date(Data$Date, "%d/%m/%Y")
## Using data from 01/02/2007 to 02/02/2007
Data <- subset(Data, Date >= as.Date("2007-2-1") & Date <= as.Date("2007-2-2"))
## Removing NAs:
Data <- Data[complete.cases(Data),]
## Combining Date and Time data:
DateTime <- paste(Data$Date, Data$Time)
## Naming new variable:
DateTime <- setNames(DateTime, "DateTime")
## Removing Date and Time variables: 
Data <- Data[ ,!(names(Data) %in% c("Date","Time"))]
## Adding DateTime variable:
Data <- cbind(DateTime, Data)
## giving format DateTime variable:
Data$DateTime <- as.POSIXct(DateTime)
## Creating the histogram
hist(Data$Global_active_power, main="Global Active Power", xlab = "Global Active Power (kilowatts)", col="red")
## Saving graphic:
dev.copy(png,"plot1.png", width=480, height=480)
dev.off()

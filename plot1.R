# Download File
> download.file('https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip', 'household_power_consumption.zip', 'curl')
# Unzip
> unzip('household_power_consumption.zip')
# Prepare Data
> electricitydata  <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", quote = "", dec = ".", na.strings = "?")
# Create datetime
> datetime <- paste(electricitydata$Date, electricitydata$Time)
> datetime <- strptime(datetime, "%d/%m/%Y %H:%M:%S" )
> electricitydatasubset <- subset(electricitydata, electricitydata$Date %in% c('1/2/2007','2/2/2007'))
#Plot Graph
> global_active_power = as.numeric(as.character(electricitydatasubset$Global_active_power))
> hist(global_active_power, col='red', main='Global Active Power', xlab='Global Active Power (kilowatts)')
> dev.copy(png, 'plot1.png', height=480, width=480)
    dev.off()

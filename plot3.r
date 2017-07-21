plot3 <- function(){
  consData <-  read.table('household_power_consumption.txt',header = TRUE,sep = ';',colClasses = c("character","character",rep("real",7)), na.strings = '?', nrows = 2075259 )
  febData = subset(consData, Date %in% c("1/2/2007", "2/2/2007"))
  febData$DateTime = strptime(paste(febData$Date,febData$Time, sep = " "), format =  "%d/%m/%Y %H:%M:%S" )
  png("plot3.png", width = 480, height = 480)
  with(febData, plot(DateTime, Sub_metering_1,  type="l", col = "black", xlab = '', ylab= 'Energy sub metering'))
  lines(febData$DateTime, febData$Sub_metering_2, col = "red")     
  lines(febData$DateTime, febData$Sub_metering_3, col = "blue")     
  legend('topright', legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"), lty = 1 , col = c('black', 'red', 'blue'))
  dev.off()
} 
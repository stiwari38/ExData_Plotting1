plot2 <- function(){
  consData <-  read.table('household_power_consumption.txt',header = TRUE,sep = ';',colClasses = c("character","character",rep("real",7)), na.strings = '?', nrows = 2075259 )
  febData = subset(consData, Date %in% c("1/2/2007", "2/2/2007"))
  febData$DateTime = strptime(paste(febData$Date,febData$Time, sep = " "), format =  "%d/%m/%Y %H:%M:%S" )
  png("plot2.png", width = 480, height = 480)
  with(febData, plot(DateTime, Global_active_power,  type="l", xlab= '', ylab = "Global Active Power (kilowatts)"))
  dev.off()
} 
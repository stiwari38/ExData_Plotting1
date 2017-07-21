plot1 <- function(){
  consData <-  read.table('household_power_consumption.txt',header = TRUE,sep = ';',colClasses = c("character","character",rep("real",7)), na.strings = '?', nrows = 2075259 )
  febData = subset(consData, Date %in% c("1/2/2007", "2/2/2007"))
  febData$Date = as.Date(febData$Date, format =  "%d/%m/%Y" )
  png("plot1.png", width = 480, height = 480)
  hist(febData$Global_active_power,
       main = "Global Active Power", ylab = "Frequency", xlab = "Global Active Power(killowatts)", col="red")
  dev.off()
} 
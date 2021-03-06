## Date:    11 April 2015
## Course:  Exploratory Data Analysis (exdata-013) 
##
## Plot 4

source("load_data.R")

plot4 = function(data=NULL) {

  if(is.null(data))
  
    data = load_data()
  
  ## Create 480x480px 
  
  png("plot4.png", width=480, height=480)
  
  ## Create par of 2x2
  par(mfrow=c(2,2))
  
  ## 1st sub-plot
  plot(data$Time, data$Global_active_power,
       type="l",
       xlab="",
       ylab="Global Active Power")
  
  ## 2nd sub-plot
  plot(data$Time, data$Voltage, type="l",
       xlab="datetime", ylab="Voltage")
  
  ## 3rd sub-plot
  plot(data$Time, data$Sub_metering_1, type="l", col="black",
       xlab="", ylab="Energy sub metering")
  
  lines(data$Time, data$Sub_metering_2, col="red")
  
  lines(data$Time, data$Sub_metering_3, col="blue")
  
  legend("topright",
         col=c("black", "red", "blue"),
         c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
         lty=1,
         box.lwd=0)
  
  ## 4th sub-plot
  plot(data$Time, data$Global_reactive_power, type="n",
       xlab="datetime", ylab="Global_reactive_power")
  lines(data$Time, data$Global_reactive_power)
  
  dev.off()
  
}

plot4()
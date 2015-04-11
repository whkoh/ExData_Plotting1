## Date:    11 April 2015
## Course:  Exploratory Data Analysis (exdata-013) 
##
## Plot 3

source("load_data.R")

## Create the 480x480 px plot 

plot3 = function(data=NULL) {
  
  if(is.null(data))
  
    data <- load_data()
  
  png("plot3.png", width=480, height=480)
  
  plot(data$Time, data$Sub_metering_1, type="l", col="black",
       xlab="", ylab="Energy sub metering")
  
  lines(data$Time, data$Sub_metering_2, col="red")
  
  lines(data$Time, data$Sub_metering_3, col="blue")
  
  legend("topright",
         col=c("black", "red", "blue"),
         c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
         lty=1)
  
  dev.off()
}

plot3()
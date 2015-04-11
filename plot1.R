## Date:    11 April 2015
## Course:  Exploratory Data Analysis (exdata-013) 
##
## Plot 1

source("load_data.R")

plot1 = function(data=NULL) {
  if(is.null(data))
  
  data = load_data()
  
  ## Plot 480x480 px PNG
  png("plot1.png", width=480, height=480)
  
  hist(data$Global_active_power,
       main="Global Active Power",
       xlab="Global Active Power (kilowatts)",
       ylab="Frequency",
       col="red")
  
  dev.off()
}

plot1()
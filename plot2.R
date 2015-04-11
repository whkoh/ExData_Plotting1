## Date:    11 April 2015
## Course:  Exploratory Data Analysis (exdata-013) 
##
## Plot 2

source("load_data.R")

## Create the 480x480 px plot 

plot2 = function(data=NULL) {
  
  if(is.null(data))
    
  data = load_data()
  
  png("plot2.png", width=480, height=480)
  
  plot(data$Time, data$Global_active_power,
       type="l",
       xlab="",
       ylab="Global Active Power (kilowatts)")
  
  dev.off()
}

plot2()
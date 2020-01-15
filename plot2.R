plot2.function<-function(d){
  ## plot2.function(gp1)
  ##This function is meant to be used after the "import_data.r" function found in the repository.  Call by sending the gp1 variable.
  bp<-('./JHU/EDA/wk1/project/') # set base path
  dev.new()
  windows()
  plot(d$Global_active_power, type="n",main="", xlab="", ylab="Global Active Power (kilowatts)",xaxt="n")
  lines(d$Global_active_power, type="l")
  axis (1,c(0,1440,2880),c("Thu","Fri","Sat"))
  #Save plot to png
  dev.copy(png,paste(bp,'plot2.png',sep=""))
  dev.off()
  
}
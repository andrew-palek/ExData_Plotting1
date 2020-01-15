plot1.function<-function(d){
  ## plot1.function(gp1)
  ##This function is meant to be used after the "import_data.r" function found in the repository.  Call by sending the gp1 variable.
  bp<-('./JHU/EDA/wk1/project/') # set base path
  dev.new()
  windows()
  gap<-hist(d$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency",col="red", ylim=c(0,1200)) #generate chart
  #Save plot to png
  dev.copy(png,paste(bp,'plot1.png',sep=""))
  dev.off()
  
  
}
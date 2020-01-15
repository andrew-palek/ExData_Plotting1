plot3.function<-function(d){
  ## plot3.function(gp1)
  ##This function is meant to be used after the "import_data.r" function found in the repository.  Call by sending the gp1 variable.
  bp<-('./JHU/EDA/wk1/project/') # set base path
  dev.new()
  windows()
  
  plot(d$Sub_metering_1,type="n",main="", xlab="", ylab="Energy sub metering",xaxt="n")
  lines(d$Sub_metering_1, type="l")
  lines(d$Sub_metering_2, type="l", col="red")
  lines(d$Sub_metering_3, type="l", col="blue")
  legend(2075,40,legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1,cex=0.8)
  axis (1,c(0,1440,2880),c("Thu","Fri","Sat"))
  #Save plot to png
  dev.copy(png,paste(bp,'plot3.png',sep=""))
  dev.off()
  
}
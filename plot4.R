plot4.function<-function(d){
  ## plot4.function(gp1)
  ##This function is meant to be used after the "import_data.r" function found in the repository.  Call by sending the gp1 variable.
  
  bp<-('./JHU/EDA/wk1/project/') # set base path
 
   dev.new()
  windows()
  par(mfrow=c(2,2)) # all plots on one page
  
   ## code from plot 2
  plot(d$Global_active_power, type="n",main="", xlab="", ylab="Global Active Power",xaxt="n",cex.lab=0.8)
  lines(d$Global_active_power, type="l")
  axis (1,c(0,1440,2880),c("Thu","Fri","Sat"),cex.axis=0.8)
  
  ## creating new plot
  plot(d$Voltage, type="n",xaxt="n", xlab="datetime", ylab="Voltage",cex.lab=0.8)
  lines(d$Voltage,type="l")
  axis (1,c(0,1440,2880),c("Thu","Fri","Sat"),cex.axis=0.8)
  
  # reusing Plot3 
  plot(d$Sub_metering_1,type="n",main="", xlab="", ylab="Energy sub metering",xaxt="n",cex.lab=0.8)
  lines(d$Sub_metering_1, type="l")
  lines(d$Sub_metering_2, type="l", col="red")
  lines(d$Sub_metering_3, type="l", col="blue")
  legend(1225,40,legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1,cex=0.8,box.lty=0)
  axis (1,c(0,1440,2880),c("Thu","Fri","Sat"),cex.axis=0.8)
  
  
  # creating new plot
  plot(d$Global_reactive_power, type="n",xaxt="n", xlab="datetime",ylab="Global_reactive_power",cex.lab=0.8)
  lines(d$Global_reactive_power, type="l")
  axis (1,c(0,1440,2880),c("Thu","Fri","Sat"),cex.axis=0.8)
  
  #save output to png in base path
  dev.copy(png,paste(bp,'plot4.png',sep=""))
  dev.off()
  
}
hpc<-read.table("household_power_consumption.txt", sep=";",header=TRUE)
hpc2<-hpc[as.Date(hpc$Date,format="%d/%m/%Y") <= "2007-02-02" & as.Date(hpc$Date,format="%d/%m/%Y") >= "2007-02-01",]
hpc2$date_time <- as.POSIXct(paste(hpc2$Date,hpc2$Time), format = "%d/%m/%Y %H:%M:%S")
png(filename="plot3.png", width = 480, height = 480, units = "px")
plot(x=hpc2$date_time,y=as.numeric(hpc2$Sub_metering_1,rm.na=TRUE),col="black", xlab="", ylab="Energy sub metering",type="l")
lines(x=hpc2$date_time,y=as.numeric(hpc2$Sub_metering_2,rm.na=TRUE),col="red", xlab="", ylab="Energy sub metering",type="l")
lines(x=hpc2$date_time,y=as.numeric(hpc2$Sub_metering_3,rm.na=TRUE),col="blue", xlab="", ylab="Energy sub metering",type="l")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1)
dev.off()

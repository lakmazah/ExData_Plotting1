hpc<-read.table("household_power_consumption.txt", sep=";",header=TRUE)
hpc2<-hpc[as.Date(hpc$Date,format="%d/%m/%Y") <= "2007-02-02" & as.Date(hpc$Date,format="%d/%m/%Y") >= "2007-02-01",]
hpc2$date_time <- as.POSIXct(paste(hpc2$Date,hpc2$Time), format = "%d/%m/%Y %H:%M:%S")
png(filename="plot2.png", width = 480, height = 480, units = "px")
plot(x=hpc2$date_time,y=as.numeric(hpc2$Global_active_power,rm.na=TRUE),col="black", xlab="", ylab="Global Active Power (kilowatts)",type="l")
dev.off()

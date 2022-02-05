hpc<-read.table("household_power_consumption.txt", sep=";",header=TRUE)
hpc2<-hpc[as.Date(hpc$Date,format="%d/%m/%Y") <= "2007-02-02" & as.Date(hpc$Date,format="%d/%m/%Y") >= "2007-02-01",]
png(filename="plot1.png",width = 480, height = 480, units = "px")
hist(as.numeric(hpc2$Global_active_power,rm.na=TRUE),col="red", xlab="Global Active Power (kilowatts)",main="Global Active Power")
dev.off()
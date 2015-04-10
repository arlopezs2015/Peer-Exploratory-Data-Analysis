##And finally graph 4 is created
##Plot4
leer_arch<-read.csv2("household_power_consumption.txt",sep=";", stringsAsFactors=FALSE, dec=".")
fecha<-strptime(paste(SubConj$Date, SubConj$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
SubConj<-leer_arch[leer_arch$Date %in% c("1/2/2007","2/2/2007") ,]
GActPow<-as.numeric(SubConj$Global_active_power)
GReactPow<-as.numeric(SubConj$Global_reactive_power)
Voltg<-as.numeric(SubConj$Voltage)
SubMet1<-as.numeric(SubConj$Sub_metering_1)
SubMet2<-as.numeric(SubConj$Sub_metering_2)
SubMet3<-as.numeric(SubConj$Sub_metering_3)

png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2)) 

     plot(fecha,GActPow, type = 'l', ylab = "Global Active Power", xlab = "")
     plot(fecha,Voltg, type = 'l', ylab = "Voltage", xlab = "datetime")
     plot(fecha, SubMet1, type='l', xlab=" ", ylab="Energy sub metering")
     lines(fecha, SubMet2,type='l', col="red")
     lines(fecha, SubMet3,type='l', col="blue")
     legend("topright", col = c("black", "red", "blue"), lty = 1, lwd = 2, bty = "n",
     legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
     plot(fecha, GReactPow,type = "l", ylab = "Global_rective_power", xlab = "datetime")
dev.off()

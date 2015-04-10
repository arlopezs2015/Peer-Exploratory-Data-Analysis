## Once you have geting the data on plot1.R, on create graph 2
##Plot2
leer_arch<-read.csv2("household_power_consumption.txt",sep=";", stringsAsFactors=FALSE, dec=".")
SubConj<-leer_arch[leer_arch$Date %in% c("1/2/2007","2/2/2007") ,]
fecha<-strptime(paste(SubConj$Date, SubConj$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
GActPow<-as.numeric(SubConj$Global_active_power)
png("plot2.png", width=480, height=480)
plot(fecha, GActPow, type='l', xlab=" ", ylab="Global Active Power (kilowatts)")
dev.off()

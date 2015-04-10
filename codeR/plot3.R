##Having created plot1 an plot2, we continue with the graph 3
##Plot3
leer_arch<-read.csv2("household_power_consumption.txt",sep=";", stringsAsFactors=FALSE, dec=".")
SubConj<-leer_arch[leer_arch$Date %in% c("1/2/2007","2/2/2007") ,]
fecha<-strptime(paste(SubConj$Date, SubConj$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
GActPow<-as.numeric(SubConj$Global_active_power)
SubMet1<-as.numeric(SubConj$Sub_metering_1)
SubMet2<-as.numeric(SubConj$Sub_metering_2)
SubMet3<-as.numeric(SubConj$Sub_metering_3)

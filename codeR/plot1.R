##Plot1 get data

if(!file.exists("./data")){dir.create("./data")}
fileurlII<-("http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip")
arch<-file.path(getwd(),"./data/exdata-data-household_power_consumption.zip")	
download.file(fileurlII,arch)
unzip("./data/exdata-data-household_power_consumption.zip",exdir="./data")
setwd("./data")

##Create graphic
leer_arch<-read.csv2("household_power_consumption.txt",sep=";", stringsAsFactors=FALSE, dec=".")
SubConj<-leer_arch[leer_arch$Date %in% c("1/2/2007","2/2/2007") ,]
GActPow<-as.numeric(SubConj$Global_active_power)
png("plot1.png", width=480, height=480)
hist(GActPow, col="green", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()

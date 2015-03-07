### plot4.R 
if (!exists("getandprep")) source("getandprep.R")
getandprep()

png(filename="plot4.png",width=480,height=480)
par(mfcol=c(2,2),mar=c(4,4,2,1),oma=c(0,0,0,0))
with(hpc,{
    plot(datetime,kWact,type="l"
         ,xlab="",ylab="Global Active Power (kilowatts)")
    plot(datetime,Wh1,type="l"
         ,xlab="",ylab="Energy sub metering" )
    lines(datetime,Wh2,col="red")
    lines(datetime,Wh3,col="blue")
    legend("topright",lty=c(1,1,1),bty="n"
         ,col=c("black","red","blue")
         ,legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
    plot(datetime,V,type="l"
         ,xlab="datetime",ylab="Voltage" )
    plot(datetime,kWreact,type="l"
         ,xlab="datetime",ylab="Global_reactive_power")    
    })
dev.off()

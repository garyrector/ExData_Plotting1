### plot3.R 
getandprep()

png(filename="plot3.png",width=480,height=480)
with(hpc,plot(datetime,Wh1,type="l"
     ,xlab="",ylab="Energy sub metering"))
with(hpc,lines(datetime,Wh2,col="red"))
with(hpc,lines(datetime,Wh3,col="blue"))
with(hpc,legend("topright",lty=c(1,1,1)
     ,col=c("black","red","blue")
     ,legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3")))
dev.off()

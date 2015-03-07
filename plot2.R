### plot2.R 
if (!exists("getandprep")) source("getandprep.R")
getandprep()

png(filename="plot2.png",width=480,height=480)
with(hpc,plot(datetime,kWact,type="l"
     ,xlab="",ylab="Global Active Power (kilowatts)" ))
dev.off()

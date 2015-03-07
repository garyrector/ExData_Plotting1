### plot1.R
getandprep()

png(filename="plot1.png",width=480,height=480)
with(hpc,hist(kWact,12,col="red"
     ,main="Global Active Power"
     ,xlab="Global Active Power (kilowatts)"
     ,ylab="Frequency"))
dev.off()

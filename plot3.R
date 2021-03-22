# png3: Energy sub metering
png(filename = "plot3.png",width = 480, height = 480)
plot(df$date_time,df$Sub_metering_1,lty=1,type="l",ylab = "Energy sub metering",xlab = " ")
points(df$date_time,df$Sub_metering_2,lty=1,type="l",col="red")
points(df$date_time,df$Sub_metering_3,lty=1,type="l",col="blue")
legend("topright",col=c("black","red","blue"),legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1)
dev.off()

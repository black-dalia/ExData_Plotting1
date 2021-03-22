#png 4
png("plot4.png",width = 480, heigh=480)
par(mfrow=c(2,2))
plot(df$date_time,df$Global_active_power,lty=1,type="l",ylab = "Global Active Power",xlab = " ")
plot(df$date_time,df$Voltage,lty=1,type="l",xlab="datetime",ylab="Voltage")

plot(df$date_time,df$Sub_metering_1,lty=1,type="l",ylab = "Energy sub metering",xlab = " ")
points(df$date_time,df$Sub_metering_2,lty=1,type="l",col="red")
points(df$date_time,df$Sub_metering_3,lty=1,type="l",col="blue")
legend("topright",bty="n",col=c("black","red","blue"),legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1)
plot(df$date_time,df$Global_reactive_power,lty=1,type="l",xlab="datetime",ylab="Global_reactive_power")
dev.off()

# png2: Global Active Power VS date
png(filename = "plot2.png",width = 480, height = 480)
plot(df$date_time,df$Global_active_power,lty=1,type="l",ylab = "Global Active Power (kilowatts)",xlab = " ")
dev.off()

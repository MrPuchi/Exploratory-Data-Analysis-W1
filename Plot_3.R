# Creating Plot 3
# Juan Zacarias
# 7/22/2018

str(hpc_subset) ## sub_metering_1:3 are numeric

## in order to have a timeline we need to mix date and time into a datetime variable, I used Parse_date_time from lubridate.

datetime <- parse_date_time(paste(hpc_subset$Date, hpc_subset$Time, sep=" "), orders = "dmy HMS")

par(mfrow = c(1,1))

dev.copy(png,"DataC4W1/plot3.png",width=480, height=480)

plot(datetime,hpc_subset$Sub_metering_1,
     type = "l" , ylab = "Energy sub metering", xlab = " ") 
  lines(datetime, hpc_subset$Sub_metering_2, col = "red")
  lines(datetime, hpc_subset$Sub_metering_3, col = "blue")
  legend("topright",lty=1, lwd= 2.5, col=c("black","red","blue"),legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))


dev.off()



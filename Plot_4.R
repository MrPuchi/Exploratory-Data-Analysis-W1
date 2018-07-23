# Creating Plot 4
# Juan Zacarias
# 7/22/2018

str(hpc_subset) ## sub_metering_1:3 are numeric

## in order to have a timeline we need to mix date and time into a datetime variable, I used Parse_date_time from lubridate.

datetime <- parse_date_time(paste(hpc_subset$Date, hpc_subset$Time, sep=" "), orders = "dmy HMS")

dev.copy(png,"DataC4W1/plot4.png",width=480, height=480)

par(mfrow = c(2,2))

  plot(datetime, hpc_subset$Global_active_power,
       type = "l" , ylab = "Global Active Power", xlab = " ") #plot (1,1)

  plot(datetime, hpc_subset$Voltage,
      type = "l" , ylab = "Voltage", xlab = "datetime") #plot (1,2)
  
  plot(datetime,hpc_subset$Sub_metering_1,
       type = "l" , ylab = "Energy sub metering", xlab = " ") 
  lines(datetime, hpc_subset$Sub_metering_2, col = "red")
  lines(datetime, hpc_subset$Sub_metering_3, col = "blue")
  legend("topright",lty=1, lwd= 1.5, col=c("black","red","blue"),legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
         , bty = "n")   #plot (2,1)
  
  plot(datetime, hpc_subset$Global_reactive_power,
       type = "l" , ylab = "Global_reactive_power", xlab = "datetime",) #plot (2,2)

dev.off()

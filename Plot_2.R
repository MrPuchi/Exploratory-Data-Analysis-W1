# Creating Plot 2
# Juan Zacarias
# 7/22/2018

class(hpc_subset$Global_active_power) ## is numeric

## in order to have a timeline we need to mix date and time into a datetime variable, I used Parse_date_time from lubridate.


par(mfrow = c(1,1))
dev.copy(png,"DataC4W1/plot2.png",width=480, height=480)

plot(parse_date_time(paste(hpc_subset$Date, hpc_subset$Time, sep=" "), orders = "dmy HMS"),hpc_subset$Global_active_power,
     type = "l" , ylab = "Global Active Power (kilowatts)", xlab = " ") 


dev.off()


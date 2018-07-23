# Creating Plot 1
# Juan Zacarias
# 7/22/2018

class(hpc_subset$Global_active_power) ## is numeric

par(mfrow = c(1,1))
dev.copy(png,"DataC4W1/plot1.png",width=480, height=480)

hist(hpc_subset$Global_active_power, col = "red", 
     main = "Global Active Power", xlab = "Global Active Power (kilowatts)")


dev.off()



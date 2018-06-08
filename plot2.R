# This script creates the second plot

png(file = "C:\\Users\\Ankita Das\\Documents\\Self Study\\R\\Proj4\\Week1\\plot2.png", bg = "transparent",width = 480, height = 480)
plot(x = epc_dt_filtered$DateTime, y=epc_dt_filtered$Global_active_power, type = "l", col = "black", xlab = "", ylab = "Global Active Power(kilowatts)")
dev.off()
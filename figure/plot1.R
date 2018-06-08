# This script creates the first plot

png(file = "C:\\Users\\Ankita Das\\Documents\\Self Study\\R\\Proj4\\Week1\\plot1.png", bg = "transparent",width = 480, height = 480)
hist(epc_dt_filtered$`Global_active_power`,breaks = 12, xlim = c(0,6), ylim = c(0,1200), col = "red", main = "Global Active Power", xlab = "Global Active Power(kilowatts)")
dev.off()
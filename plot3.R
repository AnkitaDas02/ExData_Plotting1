# This script creates the third plot

png(file = "C:\\Users\\Ankita Das\\Documents\\Self Study\\R\\Proj4\\Week1\\plot3.png", bg = "transparent",width = 480, height = 480)
plot(x = epc_dt_filtered$DateTime, y=epc_dt_filtered$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
lines(x = epc_dt_filtered$DateTime, y = epc_dt_filtered$Sub_metering_2, col = "red")
lines(x = epc_dt_filtered$DateTime, y = epc_dt_filtered$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1, cex = 0.8)
dev.off()

# This script creates the fourth plot

png(file = "C:\\Users\\Ankita Das\\Documents\\Self Study\\R\\Proj4\\Week1\\plot4.png", bg = "transparent",width = 480, height = 480)
par(mfrow=c(2,2))
p1 <- plot(x = epc_dt_filtered$DateTime, y=epc_dt_filtered$Global_active_power, type = "l", col = "black", xlab = "", ylab = "Global Active Power(kilowatts)")
p2 <- plot(x = epc_dt_filtered$DateTime, y=epc_dt_filtered$Voltage, type = "l", col = "black", xlab = "", ylab = "Voltage")
p3 <- plot(x = epc_dt_filtered$DateTime, y=epc_dt_filtered$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
lines(x = epc_dt_filtered$DateTime, y = epc_dt_filtered$Sub_metering_2, col = "red")
lines(x = epc_dt_filtered$DateTime, y = epc_dt_filtered$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1, cex = 0.8)
p4 <- plot(x = epc_dt_filtered$DateTime, y=epc_dt_filtered$Global_reactive_power, type = "l", col = "black", xlab = "", ylab = "Global Reactive Power")
dev.off()
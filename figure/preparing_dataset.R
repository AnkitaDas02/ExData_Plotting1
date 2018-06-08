#Using this script, the data is imported in R from the input text file, and filtered to keep in only Feb 1-2, 2007 data
#A datetime field is also added by concatenating the Date and Time field in the input

install.packages("lubridate")
library("lubridate")
install.packages("dplyr")
library("dplyr")

epc <- read.table ("C:\\Users\\Ankita Das\\Documents\\Self Study\\R\\Proj4\\Week1\\household_power_consumption.txt",
                   header = TRUE, sep = ";",na.strings = "?")
epc$Date <- as.Date(epc$Date,format="%d/%m/%Y")
epc$Time <- format(epc$Time,format="%H:%M:%S")
DateTime <- paste(epc$Date, epc$Time)
DateTime <- strftime(DateTime,format("%Y-%m-%d %H:%M:%S",usetz = FALSE))
epc_dt <- data.frame(DateTime,epc)
epc_dt_filtered <- epc_dt %>% select(DateTime, Date, Time, Global_active_power, Global_reactive_power, 
                                     Voltage, Global_intensity, Sub_metering_1, Sub_metering_2, Sub_metering_3) %>% filter(Date >= as.Date("2007-02-01") & Date <= as.Date("2007-02-02"))
epc_dt_filtered$DateTime <- strptime(epc_dt_filtered$DateTime,format("%Y-%m-%d %H:%M:%S"))

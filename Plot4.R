#household <- read.csv.sql('household_power_consumption.txt', 
 #                         sql = "SELECT * FROM file where Date = '1/2/2007' 
  #                        OR Date = '2/2/2007'", header = TRUE, sep = ";")
png(file = "Plot4.png", bg = "transparent", width = 480, height = 480)
par(mfrow = c(2,2))

#a

plot(seq(1:2880), household$Global_active_power, pch = 2, 
       type = "l", ylab = "Global Active Power", xlab = "", axes = F)
axis(1, at = c(0,1440,2880), labels = c("Thu","Fri","Sat"))
axis(2, at = c(0,2,4,6))

#b

plot(seq(1:2880), household$Voltage, 
     type = "l", xlab = "datetime", ylab = "Voltage", axes = F)
axis(1, at = c(0,1440,2880), labels = c("Thu","Fri","Sat"))
axis(2, at = c(234,236,238,240,242,244,246), labels = c("234", "", "238",
                                                  "", "242", "", "246"))
box()

#c

plot(seq(1:2880), household$Sub_metering_1, pch = 2, 
     type = "l", ylab = "Energy sub metering", xlab = "", axes = F)
points(seq(1:2880), household$Sub_metering_2, pch = 20, type = "l", col = "red")
points(seq(1:2880), household$Sub_metering_3, pch = 20, type = "l", col = "blue")
box()
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
       lty = 1, col = c("black", "red","blue"), bty = "n")
axis(1, at = c(0, 1440, 2880), labels = c("Thu", "Fri", "Sat"))
axis(2, at = c(0,10,20,30))

#d
plot(seq(1:2880), household$Global_reactive_power, pch = 2, 
     type = "l", ylab = "Global_reactive_power", xlab = "datetime", axes = F)
axis(1, at = c(0, 1440, 2880), labels = c("Thu", "Fri", "Sat"))
axis(2, at = c(0.0,0.1,0.2,0.3,0.4,0.5))
box()
dev.off()
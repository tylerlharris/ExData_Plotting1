library(sqldf)
#household <- read.csv.sql('household_power_consumption.txt', 
 #                         sql = "SELECT * FROM file where Date = '1/2/2007' 
  #                        OR Date = '2/2/2007'", header = TRUE, sep = ";")
png(file = "Plot3.png", bg = "transparent", width = 480, height = 480)
plot(seq(1:2880), household$Sub_metering_1, pch = 2, 
     type = "l", ylab = "Energy sub metering", xlab = "", axes = F)
points(seq(1:2880), household$Sub_metering_2, pch = 20, type = "l", col = "red")
points(seq(1:2880), household$Sub_metering_3, pch = 20, type = "l", col = "blue")
box()
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
       lty = 1, col = c("black", "red","blue"))
axis(1, at = c(0, 1440, 2880), labels = c("Thu", "Fri", "Sat"))
axis(2, at = c(0,10,20,30))
dev.off()
#household <- read.csv.sql('household_power_consumption.txt', 
 #                         sql = "SELECT * FROM file where Date = '1/2/2007' 
  #                        OR Date = '2/2/2007'", header = TRUE, sep = ";")
png(file = "Plot2.png", bg = "transparent", width = 480, height = 480)
plot(seq(1:2880), household$Global_active_power, 
      type = "l", ylab = "Global Active Power (kilowatts)", xlab = "", axes = F)
axis(1, at = c(0,1440,2880), labels = c("Thu","Fri","Sat"))
axis(2, at = c(0,2,4,6))
box()
dev.off()

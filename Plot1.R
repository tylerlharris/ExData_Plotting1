#household <- read.csv.sql('household_power_consumption.txt', 
 #                         sql = "SELECT * FROM file where Date = '1/2/2007' 
  #                        OR Date = '2/2/2007'", header = TRUE, sep = ";")
png(file = "plot1.png", bg = "transparent", width = 480, height = 480)
hist(household$Global_active_power, 
     xlab = "Global Active Power (kilowatts)", 
     main = "Global Active Power", ylim = c(0,1200), col = 'red')
dev.off()
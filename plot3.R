source("loaddata.R")
png(filename = "plot3.png", 
    width = 500, 
    height = 500,
    units = "px", 
    bg = "transparent")
plot(DateTime, 
     Sub_metering_1, 
     type = "l",
     col = "black",
     xlab = "", 
     ylab = "Energy sub metering")
lines(DateTime, Sub_metering_2, col = "red")
lines(DateTime, Sub_metering_3, col = "blue")
legend("topright", 
       col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lwd = 1)
dev.off()

source("loaddata.R")
png(filename = "plot2.png", 
    width = 500, 
    height = 500,
    units = "px", 
    bg = "transparent")
plot(DateTime, 
     Global_active_power,
     type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")
dev.off()



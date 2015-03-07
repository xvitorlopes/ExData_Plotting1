source("loaddata.R")
colnames (electric_data_2d)

png(filename = "plot1.png", 
    width = 500, 
    height = 500, 
    units = "px", 
    bg = "transparent")

hist(Global_active_power, 
     col = "red", 
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)",
     breaks = 12, 
     ylim = c(0, 1200))
dev.off()
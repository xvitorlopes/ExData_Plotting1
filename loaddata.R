electric_data <- read.table("household_power_consumption.txt", header= TRUE, sep =";",
                            colClasses = c("character", "character", rep("numeric",7)),
                            na = "?")
class(electric_data)
attributes(electric_data)
colnames(electric_data)
head(electric_data)
electric_data$Date <- strptime(electric_data$Date, format="%d/%m/%Y")
electric_data$Date <- as.Date(electric_data$Date, format="%Y-%m-%d")
dim(electric_data)
attach(electric_data)
head(electric_data[Date == "2007-02-01" | Date == "2007-02-02",])
electric_data_2d <- electric_data[Date == "2007-02-01" | Date == "2007-02-02",]
attach(electric_data_2d)
x <- paste(Date, Time)
x
electric_data_2d$DateTime <- strptime(x, "%Y-%m-%d %H:%M:%S", tz= "America/Los_Angeles")
rownames(electric_data_2d) <- 1:nrow(electric_data_2d)
dim(electric_data_2d)

attach(electric_data_2d)


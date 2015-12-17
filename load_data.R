
data <- read.table("./household_power_consumption.txt",
                   header = TRUE,
                   sep = ";",
                   colClasses = c("character", "character", rep("numeric",7)),
                   na = "?")
dim(data)

subdata <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007", ]
dim(subdata)

datetime <- paste(subdata$Date, subdata$Time)
subdata$DateTime <- strptime(datetime, "%d/%m/%Y %H:%M:%S")
rownames(subdata) <- 1:nrow(subdata)

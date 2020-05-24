# Gill Collier - 24 May 2020
# Coursera: Exploratory Data Analysis - Week 1 Project 1

# This assignment uses data from the UC Irvine Machine Learning Repository, 
# a popular repository for machine learning datasets. In particular, we will 
# be using the "Individual household electric power consumption Data Set" 
# which I have made available on the course web site:
# Dataset: Electric power consumption [20Mb]
# Description: Measurements of electric power consumption in one household 
# with a one-minute sampling rate over a period of almost 4 years. 
# Different electrical quantities and some sub-metering values are 
# available.

# Plot 3
setwd("RStudio Projects/Coursera")
data <- read.table("./data/household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
datasub <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
library(datasets)
datetime <- strptime(paste(datasub$Date, datasub$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

##Create the plot
plot(datetime, as.numeric(datasub$Sub_metering_1), type="l", ylab="Energy Sub metering", xlab="")
lines(datetime, as.numeric(datasub$Sub_metering_2), type="l", col="red")
lines(datetime, as.numeric(datasub$Sub_metering_3), type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, cex=0.75, pt.cex=0.8, col=c("black", "red", "blue"))

##Copy plot to PNG file
dev.copy(png, file = "plot3.png", width=480, height=480) 
dev.off()


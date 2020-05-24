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

# Plot 1
setwd("RStudio Projects/Coursera")
data <- read.table("./data/household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
datasub <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
library(datasets)
##Create the histogram
hist(as.numeric(as.character(datasub$Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")
dev.copy(png, file = "plot1.png", width=480, height=480) ##Copy plot to PNG file
dev.off() ##Close the PNG device


## Exploratory Data Analysis

## Programmming Assignment 1

## plot4.R

## Used to create 4th Plot

## Joe Baweja

# Load the get_data and read_data functions from
#   proj1_utils.R
source("proj1_utils.R")

plot4 <- function() {
  # Download the data
  get_data()
  
  # Get the subset of data 
  electric <- read_data()
  
  # Start the png for the plot
  png("plot4.png", width=480, height=480)
  
  # 2 by 2 set of plots
  par(mfrow=c(2,2))
  
  # 1st Plot
  plot(electric$Time, electric$Global_active_power, type="l",
       xlab="", ylab="Global Active Power")
  
  # 2nd Plot
  plot(electric$Time, electric$Voltage, type="l",
       xlab="datetime", ylab="Voltage")
  
  # 3rd Plot
  plot(electric$Time, electric$Sub_metering_1, type="l", col="black",
       xlab="", ylab="Energy sub metering")
  # Add a line for Sub_metering_2
  lines(electric$Time, electric$Sub_metering_2, col="red")
  
  # Add a line for Sub_metering_2
  lines(electric$Time, electric$Sub_metering_3, col="blue")
  
  # Add the legend to the top right
  legend("topright", col=c("black", "red", "blue"),
         c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
         lty=1, bty="n")
  
  # 4th Plot
  plot(electric$Time, electric$Global_reactive_power, type="n",
       xlab="datetime", ylab="Global_reactive_power")
  lines(electric$Time, electric$Global_reactive_power)  
  
  # Close the png
  dev.off()
}
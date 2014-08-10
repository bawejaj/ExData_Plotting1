## Exploratory Data Analysis

## Programmming Assignment 1

## plot3.R

## Used to create 3rd Plot

## Joe Baweja

# Load the get_data and read_data functions from
#   proj1_utils.R
source("proj1_utils.R")

plot3 <- function() {
  # Download the data
  get_data()
  
  # Get the subset of data 
  electric <- read_data()
  
  # Start the png for the plot
  png("plot3.png", width=480, height=480)
  
  # Plot the data
  plot(electric$Time, electric$Sub_metering_1, type="l", col="black",
       xlab="", ylab="Energy sub metering")
  # Add a line for Sub_metering_2
  lines(electric$Time, electric$Sub_metering_2, col="red")
  
  # Add a line for Sub_metering_2
  lines(electric$Time, electric$Sub_metering_3, col="blue")
  
  # Add the legend to the top right
  legend("topright", col=c("black", "red", "blue"),
         c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
         lty=1)
  
  # Close the png
  dev.off()
}
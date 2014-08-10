## Exploratory Data Analysis

## Programmming Assignment 1

## plot2.R

## Used to create 2nd Plot

## Joe Baweja

# Load the get_data and read_data functions from
#   proj1_utils.R
source("proj1_utils.R")

plot2 <- function() {
  # Download the data
  get_data()
  
  # Get the subset of data 
  electric <- read_data()
  
  # Start the png for the plot
  png("plot2.png", width=480, height=480)
  
  # Plot the data using the hist function
  plot(electric$Time, electric$Global_active_power, 
       type="l", xlab="", ylab="Global Active Power (kilowatts)")
  
  # Close the png
  dev.off()
}
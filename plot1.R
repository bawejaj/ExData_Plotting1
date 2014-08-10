## Exploratory Data Analysis

## Programmming Assignment 1

## plot1.R

## Used to create 1st plot

## Joe Baweja

# Load the get_data and read_data functions from
#   proj1_utils.R
source("proj1_utils.R")

plot1 <- function() {
  # Download the data
  get_data()
  
  # Get the subset of data 
  electric <- read_data()
  
  # Start the png for the plot
  png("plot1.png", width=480, height=480)
  
  # Plot the data using the hist function
  hist(electric$Global_active_power, main="Global Active Power",
       xlab="Global Active Power (kilowatts)", ylab="Frequency", col="red")
  
  # Close the png
  dev.off()
}
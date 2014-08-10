## Exploratory Data Analysis

## Programmming Assignment 1

## proj1_utils.R

## Used to get and read data

## Joe Baweja


get_data <- function() {
  
  # See if the file exists
  if (file.exists("household_power_consumption.txt")) {
    # Don't need to download
    return()
  }
  
  # URL for the UC Irvine DAta
  url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  
  # File name for the zip file
  filename <- "household_power_consumption"
  
  # Download the file
  download.file(url, filename)
  
  # Unzip the file
  unzip(filename)
  
}


read_data <- function() {
  
  # Set the name of the data file
  filename <- "household_power_consumption.txt"
  
  # Read the data from the file
  # Separator is ';' and na is '?'
  df <- read.csv(filename, header=TRUE, sep=";",
                   colClasses=c("character", "character", "numeric",
                                "numeric", "numeric", "numeric",
                                "numeric", "numeric", "numeric"),
                   na="?")
  
  # Convert date and time variables
  df$Time <- strptime(paste(df$Date, df$Time), "%d/%m/%Y %H:%M:%S")
  df$Date <- as.Date(df$Date, "%d/%m/%Y")
  
  # Use subset
  dates <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
  df <- subset(df, Date %in% dates)
  
  # Return the subset
  return(df)
}
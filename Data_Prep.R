# Exploratory Data Analysis Week n.1 Assignment
# Juan Zacarias
# 7/22/2018

# Loading Libraries
library(dplyr)
library(RCurl)
library(zip)
library(lubridate)

# 1.Loading the info

#### First we will check the size of the zip file before downloading it:
urlfile<-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
file_info = getURL(urlfile, nobody=1L, header=1L)
strsplit(file_info, "\r\n")

#### Zipfile size is 20mb, let's proceed to download it and check its uncompressed size before unziping:


download.file(urlfile,"DataC4W1/Fhousehold_power_consumption.zip")

zipfile<-"DataC4W1/Fhousehold_power_consumption.zip"
filesize<-zip_list(zipfile)
filesize$uncompressed_size/2^20

#### File size is 126mb, for my storage it's ok to unzip the file. 
#### I will proceed to unzip and create the dataTable "hpc" by assigning "?" as NA Values, then we will subset for the periods 2007-02-01 and 2007-02-02

unzip(zipfile,exdir="DataC4W1")

hpc_original <- data.table::fread("DataC4W1/household_power_consumption.txt", na.strings = "?")

hpc_subset<- subset(hpc_original, Date == "1/2/2007" | Date == "2/2/2007")

hpc_subset$Date <- as.Date(hpc_subset$Date)
class(hpc_subset$Date)

# 2. Making Plots

#For each plot you should

#Construct the plot and save it to a PNG file with a width of 480 pixels and a height of 480 pixels.
#Name each of the plot files as \color{red}{\verb|plot1.png|}plot1.png, \color{red}{\verb|plot2.png|}plot2.png, etc.
#Create a separate R code file (\color{red}{\verb|plot1.R|}plot1.R, \color{red}{\verb|plot2.R|}plot2.R, etc.) that constructs the corresponding plot, i.e. code in \color{red}{\verb|plot1.R|}plot1.R constructs the \color{red}{\verb|plot1.png|}plot1.png plot. Your code file should include code for reading the data so that the plot can be fully reproduced. You must also include the code that creates the PNG file.
#Add the PNG file and R code file to the top-level folder of your git repository (no need for separate sub-folders)












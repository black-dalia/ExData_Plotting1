setwd("/Users/desireepetrilli/Documents/R/ExData_Plotting1/")
download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip","household_power_consumption.zip")
unzip("household_power_consumption.zip")

#         Make sure your computer has enough memory 
# 2,075,259 rows and 9 columns
# My mac has 16 GB Ram memory, usually has 4GB available
ram_byte<-2075259 * 9 * 8
ram_MB<-ram_byte/2^(20)
if (ram_MB>4*1024){stop("Not enough RAM memory")}


# check the first lines of the table 
readLines("household_power_consumption.txt",n=1L)
# check or install useful packages
if(!"lubridate" %in% installed.packages()[,1]) {install.packages("lubridate")}
library(lubridate)
if(!"dplyr" %in% installed.packages()[,1]) {install.packages("dplyr")}
library(dplyr)
if(!"sqldf" %in% installed.packages()[,1]) {install.packages("sqldf")}
library(sqldf)

# read only the 1st column to see which lines should be extracted 
file<-"household_power_consumption.txt"
df2<-read.csv.sql(file, sep=";", header=T, sql = "select * from file where Date in ('1/2/2007','2/2/2007')")

#You may find it useful to convert the Date and Time variables to Date/Time classes

# transform format of date
df$Date<-dmy(df$Date)
# add POSITct format for date and time
df<-mutate(df,date_time=ymd_hms(paste(Date,Time,sep=" ")))
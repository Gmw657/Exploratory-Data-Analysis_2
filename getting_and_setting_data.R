# set working directory (change this to fit your needs)
setwd("E:/coursera/Exploratory-Data-Analysis_2")

# required packages
 library(dplyr)
 library(ggplot2)
 library(scales)
 library(data.table)

path<-getwd()

#download file
  download.file(url = "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip"
             , destfile = paste(path, "dataFiles.zip", sep = "/"))
#unzip file
  unzip(zipfile = "dataFiles.zip")
  
#reading file
  SCC <- data.table::as.data.table(x = readRDS(file = "Source_Classification_Code.rds"))
  NEI <- data.table::as.data.table(x = readRDS(file = "summarySCC_PM25.rds"))
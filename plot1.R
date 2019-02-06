#set working directory
setwd("E:/coursera/Exploratory-Data-Analysis_2")

#load library
library("data.table")

# load data
source("E:/coursera/Exploratory-Data-Analysis_2/getting_and_setting_data.R")

# Prevents histogram from printing in scientific notation
NEI[, Emissions := lapply(.SD, as.numeric), .SDcols = c("Emissions")]

totalNEI <- NEI[, lapply(.SD, sum, na.rm = TRUE), .SDcols = c("Emissions"), by = year]

barplot(totalNEI[, Emissions]
        , names = totalNEI[, year]
        , xlab = "Years", ylab = "Emissions"
        , main = "Emissions over the Years")
dev.off()
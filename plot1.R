library(dplyr)
library(readr)
# extract power consumption for two first days of February 2007
cols <- append(list(col_character(), col_character()), replicate(7, col_double()))
epc <- 
    read_delim('household_power_consumption.txt', ';', na = c('?'), col_types = cols) %>%
    filter(Date=='1/2/2007' | Date=='2/2/2007')
# plot the data to plot1.png file
png('plot1.png', width = 480, height = 480)
hist(epc$Global_active_power, col='red', main='Global Active Power', xlab = 'Global Active Power (kilowatts)')
dev.off()
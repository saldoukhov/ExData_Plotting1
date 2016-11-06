library(dplyr)
library(readr)
# extract power consumption for two first days of February 2007
# and add datetime column to contain time as well  
cols <- append(list(col_character(), col_character()), replicate(7, col_double()))
epc <- 
    read_delim('household_power_consumption.txt', ';', na = c('?'), col_types = cols) %>%
    filter(Date=='1/2/2007' | Date=='2/2/2007') %>%
    mutate(datetime=as.POSIXct(paste(Date, Time), format='%d/%m/%Y %H:%M:%S'))
# plot the data to plot2.png file
png('plot2.png', width = 480, height = 480)
plot(epc$datetime, epc$Global_active_power, type='l', xlab="", ylab='Global Active Power (kilowatts)')
dev.off()
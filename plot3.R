library(dplyr)
library(readr)
# extract power consumption for two first days of February 2007
# and add datetime column to contain time as well  
cols <- append(list(col_character(), col_character()), replicate(7, col_double()))
epc <- 
    read_delim('household_power_consumption.txt', ';', na = c('?'), col_types = cols) %>%
    filter(Date=='1/2/2007' | Date=='2/2/2007') %>%
    mutate(datetime=as.POSIXct(paste(Date, Time), format='%d/%m/%Y %H:%M:%S'))
# plot the data to plot3.png file
png('plot3.png', width = 480, height = 480)
with (epc, {
    plot(datetime, Sub_metering_1, type='l', xlab="", ylab='Energy sub metering')
    points(datetime, Sub_metering_2, type = 'l', col = 'red')
    points(datetime, Sub_metering_3, type = 'l', col = 'blue')
})
leg.txt = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3')
legend('topright', col = c('black', "red", "blue"), legend = leg.txt, lwd=1, text.width = strwidth('Sub_metering_1'), seg.len=2)
dev.off()
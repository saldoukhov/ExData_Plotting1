source('load_data.R')
# plot the data to plot4.png file
png('plot4.png', width = 480, height = 480)
par(mfrow = c(2, 2))

with(epc, {
    plot(datetime, Global_active_power, type='l', xlab="", ylab='Global Active Power (kilowatts)')
    
    plot(datetime, Voltage, type='l')
    
    plot(datetime, Sub_metering_1, type='l', xlab="", ylab='Energy sub metering')
    points(datetime, Sub_metering_2, type = 'l', col = 'red')
    points(datetime, Sub_metering_3, type = 'l', col = 'blue')
    leg.txt = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3')
    legend('topright', col = c('black', "red", "blue"), legend = leg.txt, lwd=1, text.width = strwidth('Sub_metering_1'), seg.len=2)
    
    plot(datetime, Global_reactive_power, type='l')
})

dev.off()
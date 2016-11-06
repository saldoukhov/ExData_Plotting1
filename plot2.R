source('load_data.R')
# plot the data to plot2.png file
png('plot2.png', width = 480, height = 480)
plot(epc$datetime, epc$Global_active_power, type='l', xlab="", ylab='Global Active Power (kilowatts)')
dev.off()
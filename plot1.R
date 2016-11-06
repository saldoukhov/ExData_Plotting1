source('load_data.R')
# plot the data to plot1.png file
png('plot1.png', width = 480, height = 480)
hist(epc$Global_active_power, col='red', main='Global Active Power', xlab = 'Global Active Power (kilowatts)')
dev.off()
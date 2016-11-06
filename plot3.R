source('load_data.R')
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
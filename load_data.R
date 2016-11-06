library(dplyr)
library(readr)
# extract power consumption for two first days of February 2007
# and add datetime column to contain time as well  
cols <- append(list(col_character(), col_character()), replicate(7, col_double()))
epc <- 
    read_delim('household_power_consumption.txt', ';', na = c('?'), col_types = cols) %>%
    filter(Date=='1/2/2007' | Date=='2/2/2007') %>%
    mutate(datetime=as.POSIXct(paste(Date, Time), format='%d/%m/%Y %H:%M:%S'))

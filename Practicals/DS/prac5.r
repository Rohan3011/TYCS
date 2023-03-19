data(AirPassengers) 

#This tells you that the data series is in a time series format
class(AirPassengers)

#This is the start of the time series
start(AirPassengers) 

#This is the end of the time series
end(AirPassengers) 

#The cycle of this time series is 12 months in a year
frequency(AirPassengers) 

#The number of passengers are distributed across the spectrum
summary(AirPassengers) 

#This will plot the time series
plot(AirPassengers)

# This will fit in a line
abline(reg=lm(AirPassengers~time(AirPassengers))) 

#This will print the cycle across years
cycle(AirPassengers) 

plot(aggregate(AirPassengers,FUN=mean))


#Box plot across months will give us a sense on seasonal effect
boxplot(AirPassengers~cycle(AirPassengers)) 

# ACF is a plot of total correlation between different lag functions.
acf(log(AirPassengers))

acf(diff(log(AirPassengers)))

#time series forecasting
#a
rain <- c(799,1174.8,865.1,1334.6,635.4,918.5,685.5,998.6,784.2,985,882.8,1071)
raints=ts(rain,start=c(1818))
plot(raints)

#b
rainforecast=HoltWinters(raints,beta=F,gamma=F)
rainforecast

#c
plot(rainforecast)
names(rainforecast)
dcwisedata1=read.csv("F:/xangars/More project/ABRL2014/DC_city_Mangalore/DC_City_MangaloreCSV.csv",stringsAsFactors=FALSE)
dcwisedata1 <- dcwisedata1[ ,6]
plot.ts(dcwisedata1)
 sample <- ts(dcwisedata1,start=c(223), end=341, frequency = 1)
plot(sample)
 fitarima <- auto.arima(sample)
 plot(forecast(fitarima, h=12))
 pred1<- data.frame(forecast(fitarima,12))
 write.csv(pred1,"DCwise_autoarima_DC_city_Manglore_ts_fn.csv")
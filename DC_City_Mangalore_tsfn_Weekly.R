setwd("F:/xangars/More project/ABRL2014/DC_city_Mangalore")
dcwisedata1=read.csv("F:/xangars/More project/ABRL2014/DC_city_Mangalore/DC_City_MangaloreCSV_withResult.csv",stringsAsFactors=FALSE)
dcwisedata1 <- dcwisedata1[ ,6]
plot.ts(dcwisedata1)
 sample <- ts(dcwisedata1, frequency = 7, start = c(2, 4))
plot(sample)
 fitarima <- auto.arima(sample)
 plot(forecast(fitarima, h=72))
 pred1<- data.frame(forecast(fitarima,72))
 write.csv(pred1,"DCwise_autoarima_DC_city_Manglore_ts_fn_weekly_more.csv")
#ts(1:10, frequency = 4, start = c(1959, 2)) # 2nd Quarter of 1959
#print( ts(dcwisedata1, frequency = 7, start = c(33, 2)), calendar = TRUE)

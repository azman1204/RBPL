Sys.time() # return current date time
tkh <- "2018-10-21"
str(tkh)
tkh2 <- as.Date(tkh)
str(tkh2)
p <- as.POSIXlt(tkh2)
str(p)
p$year # 118
1900 + p$year # year = bil thn dari 1900
p$mon # 9 - month jan = 0
p$mday # 21

tkh3 <- "2020-11-23 05:10:30"
time1 <- as.POSIXlt(tkh3)
time1$hour # 5
time1$wday # 1 - sun, 2 - monday
time1$yday # 327
time1$isdst
time1$zone
time1$gmtoff

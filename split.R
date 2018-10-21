library(dplyr)
str(airquality)
head(airquality)
s <- split(airquality, airquality$Month) 
str(s)
lapply(s, function(x) {
  colMeans(x[,c('Ozone','Solar.R','Wind')])
})

data <- airquality %>% mutate(grp = 'A')

for(i in 1:nrow(data)) {
  m <- data[i,c('Month')]
  if (m == 5 | m == 6) {
    data[i,c('grp')] = 'A'
  } else {
    data[i,c('grp')] = 'B'
  }
}
head(data,50, 100)
tail(data, 50)
data2 <- split(data, data$grp)
str(data2)
lapply(data2, function(x) {
  colMeans(x[,c('Ozone','Solar.R','Wind')])
})

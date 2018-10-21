# gather dan spread
library(dplyr) 
stocks <- data.frame(time = as.Date('2009-01-01') + 0:9, 
          X = rnorm(10, 0, 1), Y = rnorm(10, 0, 2), Z = rnorm(10, 0, 4)) 
head(stocks)
stocksm <- gather(stocks, stock, price, -time) # price = key, -time = value
stocksm %>% spread(stock, price) 
rs <- stocksm %>% spread(time, price)
head(rs %>% select('2009-01-01','2009-01-02'))
head(stocksm,100)

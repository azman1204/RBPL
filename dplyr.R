install.packages('dplyr')
library(dplyr)
chicago <- readRDS('chicago.rds')
str(chicago)

#SELECT
subset <- select(chicago, tmpd, pm25tmean2)
head(subset)
tail(subset)
subset <- chicago[,c('tmpd','pm25tmean2')]
subset <- select(chicago, -(city:date)) # except col city to date
subset <- select(chicago, -city,-date) # except col city and date
colnames(chicago)

# FILTER
chic.f <- filter(chicago, pm25tmean2 > 30) #chic_f
str(chic.f)
tail(chic.f)
head(chic.f)

# ARRANGE - sort
chicago <- arrange(chicago, desc(date))
tail(chicago)
head(chicago)

# RENAME - rename column
chicago <- rename(chicago, dewpoint = dptp, pm25 = pm25tmean2)

# MUTATE - new column
chicago <- mutate(chicago, pm25detrend = pm25 - mean(pm25, na.rm = TRUE))

# GROUP_BY - summary report
chicago <- mutate(chicago, year = as.POSIXlt(date)$year + 1900)
str(chicago)
year <- group_by(chicago, year)
summarize(year, pm25 = mean(pm25, na.rm = TRUE), o3 = max(o3tmean2, na.rm = TRUE
          ), no2 = median(no2tmean2, na.rm = TRUE))

# %>% - join command
tail(chicago)
s <- chicago %>% select(dewpoint, year) %>% arrange(dewpoint)
tail(s)




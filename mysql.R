# read / write MySQL
install.packages('RMySQL')
library(RMySQL)
con <- dbConnect(RMySQL::MySQL(), dbname = "sakila", host='localhost',
           user='root', password='')
data <- dbGetQuery(con, "SELECT * FROM exam")
str(data)

# write data to DB
mtcars
str(mtcars)
names(mtcars)
data2 <- mtcars[mtcars$cyl > 2,c('mpg','cyl')]
dbWriteTable(con, 'mtcars', data2)

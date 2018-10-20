# read / write MySQL
install.packages('RMySQL')
library(RMySQL)
con <- dbConnect(RMySQL::MySQL(), dbname = "sakila", host='localhost',
           user='root', password='')
data <- dbGetQuery(con, "SELECT * FROM exam")
str(data)

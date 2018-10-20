# read data into data frame
data <- read.csv('data1') # read from file
data2 <- data[,c('nama','kimia','bio')]
write.csv(data2, 'data2', quote = F) # write to file

data2 <- read.table('data1', header = T, sep = ",", nrows = 1)
?read.table
data2$nama

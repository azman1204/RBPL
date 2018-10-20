# read data from excel
# install package
install.packages('xlsx')
#remove.packages('xlsx')
library(xlsx) # import library
data <- read.xlsx('Book1.xlsx', 1)
str(data)
data2 <- data[1:2, c('nama', 'kimia', 'math')]
write.xlsx(data2, 'Book2.xlsx', 'sheet-A')

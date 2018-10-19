# List
# sama spt vector, 1 Dimensi, cuma multiple data type
x <- list(1,"a", TRUE, 1 + 4i)
x[[1]] # value dlm vector
y <- x[1] # y = vector
y[1]

l <- list(1:5, c('a', 'b'))
l <- list(x=1:5, y=c('a', 'b')) # named list
l$x # [[1]]
l[[1]]

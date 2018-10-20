# DATA FRAME
# sama mcm matrix, 2 Dimensi, beza multi data type
x <- data.frame(foo=1:4, bar=c(T,T,T,F))
# subset
x[1,2] # sama mcm matrix
x$foo # 1 2 3 4
x$bar # TRUE  TRUE FALSE FALSE
# row= 2 dan 3, col=foo
x[2:3, c('foo','bar')]
x[x$foo > 2,] # filter row yg foo > 2
x[x$foo > 2 & x$bar == TRUE,]

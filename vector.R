# vector see 14 - 15
x <- c(1L,2L,3L,4L)
x
class(x) # numeric'
typeof(x) # int
str(x) # structure

y <- 1:10
y

z <- c('a', 'b', 'c')
a <- c(1,2,'a','b') # convert num to char
b <- c(1,2,T,F) # convert logical to number (1,0)
c <- c(1, 1.5, 7.2)
d <- c(2L, 2, 3.5)
class(d)
typeof(d)

# subset data
d <- 1:100
d[50]

f <- seq(0, to=100,by = 2) # ctl + space = help popup
f <- seq(to=100, from=1, by=2)
f [20]
f[20:25]
??seq()

x <- list(a = 1:5, b = rnorm(10))
lapply(x, mean)

plot(runif(100, 0, 10))
plot(rnorm(100) * 10)

# split()
x <- c(rnorm(10), runif(10), rnorm(10, 1))
f <- gl(3, 10) # factor of 1,2,3
data <- split(x,f)

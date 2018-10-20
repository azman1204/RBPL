# FUNCTION
# seq_len generate vector 1:len
f <- function(num) {
  for(i in seq_len(num)) {
    cat('Hello, ','world!', '\n')
  }
  hello <- "Hello World..."
  chars <- nchar(hello)
  chars # return chars
}

meaningoflife <- f(5)
print(meaningoflife)

# y = optional, default = 4
# x = wajib
cetak <- function(x, y=4) {
  z <- paste('x=',x,'y=',y) # cat() - terus print ke console
  z # return
}
# 3 teknik berbeza call function
print(cetak(4,5))
print(cetak(y=5,x=4))
print(cetak(5))



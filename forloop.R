# LOOP
for(i in 1:10) {
  print(paste("i = ", i, ".")) # paste = combine
  #print(i)
}

x <- runif(10, 10, 20)
y <- x > 15 # y = a vector valur TRUE / FALSE
for (i in y) {
  if (i == TRUE) {
    print('ok')
  } else {
    print('ko')
  }
}

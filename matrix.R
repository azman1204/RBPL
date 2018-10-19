# matrices
m <- matrix(nrow = 2, ncol = 3) # matrix with no data
dim(m) # dimension, bil row n col
attributes(m)

m <- matrix(1:6, nrow=2, ncol=3) # fillup col first
m <- matrix(1:6, nrow=2, ncol=3, byrow = T) # fillup row first

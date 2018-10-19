# matrices
m <- matrix(nrow = 2, ncol = 3) # matrix with no data
dim(m) # dimension, bil row n col
attributes(m)
# ctl + L = clear console
m <- matrix(1:6, nrow=2, ncol=3) # fillup col first
m <- matrix(1:6, nrow=2, ncol=3, byrow = T) # fillup row first
# update data
m[1,3] <- 13
m[1,2] <- NA

# subset
m[1,2] #   row=1,   col=2
m[2,] #    row=2,   col=all
m[,3] #    row=all  col=3
m[,c(2,3)]#row=all, col=2 dan 3
m[,2:3]   #row=all, col=2 dan 3

#Teknik lain utk create matrix
m <- cbind(1:3, 10:12, 20:22, 1:3) # column bind
m <- rbind(1:3, 10:12)

# matrix yg col ada nama
age <- c(20, 25, 30, 35, NA)
age + 5
# age yg antara 25 dan 40
a <- age >= 25 & age <= 40
# siapakah yg antara julat age di atas
nama[a]
# berapakah bil yg TRUE
length(a[a == TRUE])

length(a)
nama <- c('azman','aisyah','goret','hadzrik', 'Anonymous')
p1 <- rbind(nama, age)
p2 <- cbind(nama,age)
p2[1:2,c('age')]
p2[2:3,c('nama','age')]

is.na(p2)

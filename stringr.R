install.packages('stringr')
library(stringr)

txt <- readLines('http://www.thestar.com.my')
head(txt)
v1 <- str_length(txt) # count bil char dlm sesuatu string
head(v1)
txt[2]
# cari line yg paling banyak char
maxi <- max(v1)
txt[v1 == maxi]
# search certain word
v2 <- str_detect(txt, 'landslide')
length(v2[v2 == TRUE]) # bil line yg ada perkataan "landslide"
txt[v2]

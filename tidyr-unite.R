# tidyr
# seperate()
install.packages('tidyr')
library(tidyr)
library(dplyr)
# SEPARATE
df <- data.frame(x=c(NA, 'a&b','a.d', 'b.c'))
result <- df %>% separate(x, into=c('A','B'), 
  extra='merge',sep="[.]", fill='left')
result
# fill='left' means jika x dpt separate isi left = NA

# unite
rs <- unite(result, 'nama', c('A','B'), sep=' ')
unite(result, 'nama', c('A','B'), sep=' ')
str(result)



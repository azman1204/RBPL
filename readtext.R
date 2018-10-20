txt <- readLines('https://www.thestar.com.my')
head(txt,50)
tail(txt)
str(txt)
txt[txt == '</html>']
# stringr
writeLines(txt, 'thestar.html')
?writeLines

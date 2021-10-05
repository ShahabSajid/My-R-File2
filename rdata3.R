a=b=c=d=34
e = a+b+c+d
e
class(e)
y = as.integer(3)
y
as.integer(TRUE)
z = 1+2i
z
as.character(3.34)
date()
start = as.POSIXct('2017-01-23 2:31')
finish = as.POSIXct('2017-01-23 6:34')
hrs = as.integer(difftime(finish,start,unit = 'hours'))
min = difftime(finish,start,unit='mins')- hrs*60
paste('Duration:',hrs,'hrs',min,'min')


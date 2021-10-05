attach(mtcars)
plot(wt,mpg)
abline(lm(mpg~wt))
title('Regression of MPG on Weight')
hist(mtcars$mpg,breaks = 12,col = 'green')

#Histogram plot Graph:
x = mtcars$mpg
h = hist(x,breaks = 10,col = 'blue',xlab = 'Miles Per Gallon',
         main = 'Histograme with Normal Curve')
xfit = seq(min(x),max(x),length=40)
yfit = dnorm(xfit,mean = mean(x),sd=sd(x))
yfit = yfit*diff(h$mids[1:2])*length(x)
lines(xfit,yfit,col='red',lwd=2)

#kernel Density plots:
d = density(mtcars$mpg)
plot(d,main = 'Kernel Density of Miles Per Gallon')
polygon(d,col = 'red',border = 'yellow')

library(sm)
attach(mtcars)
cyl.f = factor(cyl,levels = c(4,6,8))
labels = c('4 cylinder','6 cylinder','8 cylinder')
sm.density.compare(mpg,cyl,xlab = 'Miles Per Gallon')
title(main = 'MPG Distribution by Car Cylinders')
colfill = c(2:(2+length(levels(cyl.f))))
legend(locator(1),levels(cyl.f),fill = colfill)

#Dot Plots:
dotchart(mtcars$mpg,labels = row.names(mtcars),cex=.7,
         main='Gas Milage for Car Models',
         xlab = 'Miles Per Gallon')


x = mtcars[order(mtcars$mpg),]
y = factor(y)
x$color[y==4]<-'red'
x$color[y==6]<-'blue'
x$color[y==8]<-'darkgreen'
dotchart(x$mpg,labels = row.names(x),cex=.7,groups = y,
  main='Gas Milage for Car Models\ngrouped by cylinder',
   xlab = 'Miles Per Gallon',gcolor = 'black',color = x$color)

#Bar Plot:
counts = table(mtcars$gear)
barplot(counts,main='Car Distribution',xlab = 'Number of Gears',
        horiz = TRUE,
        names.arg = c('3 Gears','4 Gears','5 Gears'))


counts = table(mtcars$vs, mtcars$gear)
barplot(counts,main='Car Distribution by Gears and VS',
        xlab = 'Number of Gears',col = c('darkblue','red'),
        legend = rownames(counts),beside = TRUE)

#Line Charts:
x = c(1:5); y<-x
par(pch=22,col='blue')
par(mfrow=c(2,4))
opts = c('p','l','o','b','c','s','S','h')
for(i in 1:length(opts)){
        heading = paste('type=',opts[i])
        plot(x,y,main=heading)
        lines(x,y,type = opts[i])
} 














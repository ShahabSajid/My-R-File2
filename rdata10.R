#Box plot:

attach(mtcars)
boxplot(mpg~cyl,data=mtcars,main='Car Milage Data',
        xlab = 'Number of Cylinders',ylab = 'Miles Per Gallon')

boxplot(len~supp*dose,data=ToothGrowth,notch = TRUE,
        col = (c('gold','darkgreen','gray','blue','pink','red'))
        ,main='Tooth Growth',
        xlab = 'Suppliment and Dose')



#Other Options:

library(vioplot)
x1 = mtcars$mpg[mtcars$cyl==4]
x2 = mtcars$mpg[mtcars$cyl==6]
x3 = mtcars$mpg[mtcars$cyl==8]
vioplot(x1,x2,x3,names=c('4cyl','6 cyl','8 cyl'),col='gold')
title('Violin Plots of Miles Per Gallon')

#Bag plot-A 2D:
library(aplpack)
attach(mtcars)
bagplot(wt,mpg,xlab='Car Weight',ylabs = 'Miles Per Gallon',
        main = 'Bagplot Example') 

#scatter plot:
plot(wt,mpg,main = 'Scatterplot Example',xlab = 'Car Weight',
     ylab = 'Miles Per Gallon',pch=19)
abline(lm(mpg~wt),col='red')
lines(lowess(wt,mpg),col='blue')

library(car)
scatterplot(mpg~wt | cyl,data = mtcars, xlab='Weight of car',
            ylab='Miles Per Gallon',main ='Enhanced Scatter Plot'
            ,labels=row.names(mtcars))

#Scatter plot Matrices:
pairs(~mpg+disp+drat+wt,data=mtcars,main='Simple Scatterplot Matrix')

library(lattice)
splom(mtcars[c(1,3,5,6)],groups=cyl,data=mtcars,panel=panel.superpose,
      key=list(title='Three Cylinder Options',columns=3,
               points=list(pch=super.sym$pch[1:3],col=super.sym$col[1:3]),
                           text=list(c('4 Cylinder','6 Cylinder',
                                       '8 Cylinder '))))
library(car)
scatterplot.matrix(~mpg+disp+drat+wt|cyl,data=mtcars,
                   main='Three cylinder option')



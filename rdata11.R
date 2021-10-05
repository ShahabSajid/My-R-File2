
library(gclus)
dta = mtcars[c(1,3,5,6)]
dta.r = abs(cor(dta))
dta.col=dmat.color(dta.r)
dta.o=order.single(dta.r)
cpairs(dta,dta.o,panel.colors = dta.col,grp=.5,
       main='Variables Ordered and Colored by Correlation')

#High Density Scatter Plot:
library(hexbin)
x = rnorm(1000)
y = rnorm(1000)
bin = hexbin(x,y,xbins = 50)
plot(bin,main='Hexagonal Binning')


x = rnorm(1000)
y = rnorm(1000)
bin = hexbin(x,y,xbins = 50)
plot(x,y,main='PDF Scatterplot Example',col=rgb(0,100,0,50,
                maxColorValue = 255),pch=16)

#3d Scatter Plots:
library(scatterplot3d)
attach(mtcars)
scatterplot3d(wt,disp,mpg,main='3d Scatterplot')


library(scatterplot3d)
attach(mtcars)
scatterplot3d(wt,disp,mpg,pch=16,highlight.3d=TRUE,
type='h',main='3d Scatterplot')


s3d = scatterplot3d(wt,disp,mpg,pch=16,highlight.3d=TRUE,
              type='h',main='3D Scatterplot')
fit= lm(mpg~wt+disp)
s3d$plane3d(fit)

#Spinning 3D Scatter plot:
library(rgl)
plot3d(wt,disp,mpg,col='red',size=3)


library(Rcmdr)
attach(mtcars)
scatter3d(wt,disp,mpg)





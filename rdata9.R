attach(mtcars)
Orange$Tree = as.numeric(Orange$Tree)
ntrees = max(Orange$Tree)
xrange = range(Orange$age)
yrange = range(Orange$circumference)
plot(xrange,yrange,type='n',xlab='Age(days)',ylab='Circumference(mm)')
colors = rainbow(ntrees)
linetype = c(1:ntrees)
plotchar = seq(18,18+ntrees,1)

for (i in 1:ntrees){
        tree = subset(Orange,Tree==i)
        lines(tree$age,tree$circumference,type='b',lwd=1.5,lty=linetype[i],
              col=colors[i],pch=plotchar[i])
        
        
}
title('Tree Growth','example of line plot')
legend(xrange[1],yrange[2],1:ntrees,cex=0.8,col=colors,pch=plotchar,
       lty=linetype,title = 'Tree')

#Pie chart:
slices = c(10,12,4,16,18)
lbls = c('US','UK','Australia','Germany','France')
pct = round(slices/sum(slices)*100)
lbls = paste(lbls,pct)
lbls = paste(lbls,'%',sep = '')
pie(slices,labels = lbls,col = rainbow(length(lbls)),
    main = 'Pie Chart of Countries')

#3D Pie chart:
library(plotrix)
slices = c(10,12,4,16,18)
lbls = c('US','UK','Australia','Germany','France')
pie3D(slices,labels = lbls,explode=0.1,main = 'Pie Chart of Countries')

#Data set chart:
mytable = table(iris$Species)
lbls = paste(names(mytable),'\n',mytable,sep='')
pie(mytable,labels = lbls,main = 'Pie Chart of Species\n(with sample sizes)')







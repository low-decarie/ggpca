ggbiplot.default <- function(rotated.data,loadings,selected.pc,scale,...)
{
x <- names(rotated.data)[selected.pc[1]+1]
y <- names(rotated.data)[selected.pc[2]+1]
  
mult <- min(
  (max(rotated.data[,y]) - min(rotated.data[,y])/(max(loadings[,y])-min(loadings[,y]))),
  (max(rotated.data[,x]) - min(rotated.data[,x])/(max(loadings[,x])-min(loadings[,x])))
)

loadings <- transform(loadings,
                      v1 = scale * mult * (get(x)),
                      v2 = scale * mult * (get(y))
)

loadings$length <- with(loadings, sqrt(v1^2+v2^2))
loadings <- loadings[order(-loadings$length),]

p <- qplot(data=rotated.data,
           x=get(x),xlab=x,
           y=get(y),ylab=y,
           shape=obsnames)
p <- p + stat_ellipse(aes(group=obsnames))
p <- p + geom_hline(aes(0), size=.2) + geom_vline(aes(0), size=.2)
p <- p + geom_text(data=loadings, 
                   aes(x=v1, y=v2,
                       label=varnames,
                       shape=NULL,
                       linetype=NULL,
                       alpha=length), 
                   size = 3, vjust=0.5,
                   hjust=0, color="red")
p <- p + geom_segment(data=loadings, 
                      aes(x=0, y=0, xend=v1,
                          yend=v2, shape=NULL, 
                          linetype=NULL,
                          alpha=length),
                      arrow=arrow(length=unit(0.2,"cm")),
                      alpha=0.5, color="red")


return(p)}
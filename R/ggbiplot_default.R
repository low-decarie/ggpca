ggbiplot.default <- function(rotated.data,
                             loadings,
                             selected.pc=c(1,2),
                             groups=NULL,
                             scale=1,
                             length.alpha=F,
                             varnames=NULL,
                             numvars=nrow(loadings),
                             ...)
{
  
x <- names(rotated.data)[selected.pc[1]]
y <- names(rotated.data)[selected.pc[2]]
  
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
loadings <- loadings[1:numvars,]


if(!length.alpha){loadings$length <- 1}

if(is.null(groups)){
  rotated.data$obsnames <- row.names(rotated.data)
  p <- qplot(data=rotated.data,
             x=get(x),xlab=x,
             y=get(y),ylab=y,
             label=obsnames,
             geom="text",
#              alpha=0.5,
             ...)
  
}

if(!is.null(groups) & length(unique(groups))<=6){
  groups <- as.factor(groups)
p <- qplot(data=rotated.data,
           x=get(x),xlab=x,
           y=get(y),ylab=y,
           shape=groups,
           ...)
p <- p + stat_ellipse(aes(linetype=groups))
}


if(length(unique(groups))>6){
  p <- qplot(data=rotated.data,
             x=get(x),xlab=x,
             y=get(y),ylab=y,
             colour=groups,
             ...)
  p <- p + stat_ellipse()
}

if(!is.null(varnames)){
  loadings$varnames <- varnames
}

p <- p + geom_hline(aes(0), size=.2) + geom_vline(aes(0), size=.2)
p <- p + geom_text(data=loadings, 
                   aes(x=v1, y=v2,
                       label=varnames,
                       shape=NULL,
                       linetype=NULL), 
                   size = 3, vjust=0.5,
                  color="black",
                   hjust=0)
p <- p + geom_segment(data=loadings, 
                      aes(x=0, y=0, xend=v1,
                          yend=v2, shape=NULL, label=NULL,
                          linetype=NULL,
                          alpha=length),
                      color="black",
                      arrow=arrow(length=unit(0.2,"cm")),
                      alpha=length)

p <- p + scale_alpha(guide="none")


return(p)}
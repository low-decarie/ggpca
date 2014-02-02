#' The length of a string (in characters).
#'
#' @param PC a fitted object from prcomp
#' @param selected.pc name of two principle components
#' @param labels name assigned to each point
#' @param groups groups assigned to each point
#' @param scale scaling for explanatory variable arrows
#' @param ... other arguments to be passed to qplot
#' @return a ggplot object
#' @keywords pca
#' @seealso \code{\link{prcomp}}
#' @export
#' @examples
#'p <- ggbiplot.prcomp(PC=prcomp(iris[,-5]),
#'                    selected.pc=c("PC1","PC2"),
#'                    labels=iris[,5],
#'                    groups=iris[,5],
#'                    main="PCA of iris dataset")
#'print(p)


ggbiplot.prcomp <- function(PC,
                          selected.pc=c("PC1","PC2"),
                          labels,
                          groups,
                          scale=1,
                          ...)
{
  
x=selected.pc[1]
y=selected.pc[2]
rotated.data <- data.frame(obsnames=labels, PC$x)

loadings <- data.frame(varnames=rownames(PC$rotation), t(t(PC$rotation) * PC$sdev))

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

p <- qplot(data=data.frame(PC$x),
           x=get(x),
           y=get(y),
           shape=groups)
p <- p + stat_ellipse(aes(group=groups))
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


return(p)
}
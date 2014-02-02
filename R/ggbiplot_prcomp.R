#' The length of a string (in characters).
#'
#' @param PC a fitted object from prcomp (from stats package)
#' @param selected.pc name of two principle components
#' @param obsnames name assigned to each point
#' @param scale scaling for explanatory variable arrows
#' @param ... other arguments to be passed to qplot
#' @return a ggplot object
#' @keywords pca
#' @seealso \code{\link{prcomp}}
#' @export
#' @examples
#'p <- ggbiplot.prcomp(PC=prcomp(iris[,-5]),
#'                    selected.pc=c("PC1","PC2"),
#'                    obsnames=iris[,5],
#'                    main="PCA of iris dataset")
#'print(p)


ggbiplot.prcomp <- function(PC,
                          selected.pc=c("PC1","PC2"),
                          obsnames,
                          scale=1,
                          ...)
{
  
x=selected.pc[1]
y=selected.pc[2]
rotated.data <- data.frame(obsnames=obsnames, PC$x)

loadings <- data.frame(varnames=rownames(PC$rotation), t(t(PC$rotation) * PC$sdev))

p <- ggbiplot(rotated.data,loadings,x,y,scale,...)

return(p)

}
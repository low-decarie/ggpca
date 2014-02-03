#' ggplot biplot function for prcomp objects
#'
#' @param PC a fitted object from prcomp (from stats package)
#' @param selected.pc number of two principle components
#' @param groups group assigned to each point
#' @param scale scaling for explanatory variable arrows
#' @param ... other arguments to be passed to qplot
#' @return a ggplot object
#' @keywords pca
#' @seealso \code{\link{prcomp}}
#' @export
#' @examples
#'p <- ggbiplot.prcomp(PC=prcomp(iris[,-5]))
#'print(p)
#'#'p <- ggbiplot.prcomp(PC=prcomp(iris[,-5]), iris[,5])
#'print(p)


ggbiplot.prcomp <- function(PC,
                          selected.pc=c(1,2),
                          groups=NULL,
                          scale=1,
                          length.alpha=T,
                          ...)
{

rotated.data <- data.frame(PC$x)

loadings <- data.frame(varnames=rownames(PC$rotation), t(t(PC$rotation) * PC$sdev))

p <- ggbiplot.default(rotated.data,loadings,selected.pc,groups,scale,...)

return(p)

}
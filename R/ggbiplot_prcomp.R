#' ggplot biplot function for prcomp objects
#'
#' @param PC a fitted object from prcomp (from stats package)
#' @param selected.pc number of two principle components
#' @param obsnames name assigned to each point
#' @param scale scaling for explanatory variable arrows
#' @param ... other arguments to be passed to qplot
#' @return a ggplot object
#' @keywords pca
#' @seealso \code{\link{prcomp}}
#' @export
#' @examples
#'p <- ggbiplot.prcomp(PC=prcomp(iris[,-5]),
#'                    selected.pc=c(1,2),
#'                    obsnames=iris[,5],
#'                    main="PCA of iris dataset")
#'print(p)


ggbiplot.prcomp <- function(PC,
                          selected.pc=c(1,2),
                          obsnames,
                          scale=1,
                          ...)
{

rotated.data <- data.frame(obsnames=obsnames, PC$x)

loadings <- data.frame(varnames=rownames(PC$rotation), t(t(PC$rotation) * PC$sdev))

p <- ggbiplot.default(rotated.data,loadings,selected.pc,scale,...)

return(p)

}
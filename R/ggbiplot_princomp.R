#' ggplot biplot function for princomp objects
#'
#' @param PC a fitted object from princomp (from stats package)
#' @param selected.pc number of two principle components
#' @param obsnames name assigned to each point
#' @param scale scaling for explanatory variable arrows
#' @param ... other arguments to be passed to qplot
#' @return a ggplot object
#' @keywords pca
#' @seealso \code{\link{princomp}}
#' @export
#' @examples
#'p <- ggbiplot.princomp(PC=princomp(iris[,-5]),
#'                    selected.pc=c(1,2),
#'                    obsnames=iris[,5],
#'                    main="PCA of iris dataset")
#'print(p)


ggbiplot.princomp <- function(PC,
                            selected.pc=c(1,2),
                            groups=NULL,
                            scale=1,
                            ...)
{
  rotated.data <- data.frame(PC$scores)
  
  raw.loadings <- PC$loadings
  class(raw.loadings) <- "matrix"
  loadings <- data.frame(varnames=rownames(raw.loadings), t(t(raw.loadings) * PC$sdev))
  
  p <- ggbiplot.default(rotated.data,loadings,selected.pc,groups,scale,...)
  
  return(p)

}
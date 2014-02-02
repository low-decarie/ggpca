#' The length of a string (in characters).
#'
#' @param PC a fitted object from princomp (from stats package)
#' @param selected.pc name of two principle components
#' @param obsnames name assigned to each point
#' @param scale scaling for explanatory variable arrows
#' @param ... other arguments to be passed to qplot
#' @return a ggplot object
#' @keywords pca
#' @seealso \code{\link{princomp}}
#' @export
#' @examples
#'p <- ggbiplot.princomp(PC=princomp(iris[,-5]),
#'                    selected.pc=c("Comp.1","Comp.2"),
#'                    obsnames=iris[,5],
#'                    main="PCA of iris dataset")
#'print(p)


ggbiplot.princomp <- function(PC,
                            selected.pc=c("Comp.1","Comp.2"),
                            obsnames,
                            scale=1,
                            ...)
{
  
  x=selected.pc[1]
  y=selected.pc[2]
  rotated.data <- data.frame(obsnames=obsnames, PC$scores)
  
  raw.loadings <- PC$loadings
  class(raw.loadings) <- "matrix"
  loadings <- data.frame(varnames=rownames(raw.loadings), t(t(raw.loadings) * PC$sdev))
  
  p <- ggbiplot(rotated.data,loadings,x,y,scale,...)
  
  return(p)

}
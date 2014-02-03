#' Generic ggplot biplot function
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
#'p <- ggbiplot(PC=prcomp(iris[,-5]),
#'                    selected.pc=c(1,2),
#'                    obsnames=iris[,5],
#'                    main="PCA of iris dataset")
#'print(p)

ggbiplot <- function(PC,
                     selected.pc=c(1,2),
                     obsnames,
                     scale=1,
                     ...) UseMethod("ggbiplot", PC)
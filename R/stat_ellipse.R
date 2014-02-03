#' Generic ggplot biplot function
#'
#' @description Adds 95\% confidence intervals ellipses around groups of values in a ggplot
#' @param mapping The aesthetic mapping, usually constructed with aes or aes_string. Only needs to be set at the layer level if you are overriding the plot defaults.
#' @param data A layer specific dataset - only needed if you want to override the plot defaults.
#' @param stat The statistical transformation to use on the data for this layer.
#' @param position The position adjustment to use for overlappling points on this layer
#' @param ... other arguments passed on to \code{\link{layer}}. This can include aesthetics whose values you want to set, not map. See \code{\link{biplot}} for more details.
#' @note Based on a function by Josef Fruehwald available \href{https://github.com/JoFrhwld/FAAV/blob/master/r/stat-ellipse.R}{here on github}
#' @examples
#'p <- qplot(data=iris,
#'            x=Sepal.Length,
#'            y=Petal.Length,
#'            colour=Species)
#'p <- p + stat_ellipse()
#'print(p)
stat_ellipse <- function(mapping=NULL, data=NULL, geom="path", position="identity", ...) {
  StatEllipse$new(mapping=mapping, data=data, geom=geom, position=position, ...)
}
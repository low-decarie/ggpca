% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/stat_ellipse.R
\name{stat_ellipse}
\alias{stat_ellipse}
\title{Generic ggplot biplot function}
\usage{
stat_ellipse(mapping = NULL, data = NULL, geom = "path",
  position = "identity", ...)
}
\arguments{
\item{mapping}{The aesthetic mapping, usually constructed with aes or aes_string. Only needs to be set at the layer level if you are overriding the plot defaults.}

\item{data}{A layer specific dataset - only needed if you want to override the plot defaults.}

\item{position}{The position adjustment to use for overlappling points on this layer}

\item{...}{other arguments passed on to \code{\link{layer}}. This can include aesthetics whose values you want to set, not map. See \code{\link{biplot}} for more details.}

\item{stat}{The statistical transformation to use on the data for this layer.}
}
\description{
Adds 95\% confidence intervals ellipses around groups of values in a ggplot
}
\note{
Based on a function by Josef Fruehwald available \href{https://github.com/JoFrhwld/FAAV/blob/master/r/stat-ellipse.R}{here on github}
}
\examples{
p <- qplot(data=iris,
           x=Sepal.Length,
           y=Petal.Length,
           colour=Species)
p <- p + stat_ellipse()
print(p)
}


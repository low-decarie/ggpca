\docType{data}
\name{StatEllipse}
\alias{StatEllipse}
\title{Generic ggplot biplot function}
\format{\preformatted{proto object 
 $ calculate_groups:function (., data, scales, ...)   
 $ objname         : chr "ellipse" 
 $ default_geom    :function (.)   
 $ calculate       :function (., data, scales, level = 0.75, segments = 51, ...)   
 $ required_aes    : chr [1:2] "x" "y" 
 parent: proto object 
 .. parent: proto object 
}}
\usage{
StatEllipse
}
\arguments{
  \item{mapping}{The aesthetic mapping, usually constructed
  with aes or aes_string. Only needs to be set at the layer
  level if you are overriding the plot defaults.}

  \item{data}{A layer specific dataset - only needed if you
  want to override the plot defaults.}

  \item{stat}{The statistical transformation to use on the
  data for this layer.}

  \item{position}{The position adjustment to use for
  overlappling points on this layer}

  \item{...}{other arguments passed on to
  \code{\link{layer}}. This can include aesthetics whose
  values you want to set, not map. See \code{\link{biplot}}
  for more details.}
}
\description{
Produces a ggplot biplot from an PCA analysis similar to
biplot.  Currently has methods for princomp and prcomp.
}
\examples{
p <- qplot(data=iris,
           x=Sepal.Length,
           y=Petal.Length,
           colour=Species)
p <- p + stat_ellipse()
print(p)
}
\keyword{datasets}


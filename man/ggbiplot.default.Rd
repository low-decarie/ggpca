\name{ggbiplot.default}
\alias{ggbiplot.default}
\title{ggplot biplot function for princomp objects}
\usage{
\method{ggbiplot}{default}(rotated.data, loadings, selected.pc = c(1, 2),
  groups = NULL, scale = 1, length.alpha = T, ...)
}
\arguments{
  \item{PC}{a fitted object from princomp (from stats
  package)}

  \item{selected.pc}{number of two principle components}

  \item{obsnames}{name assigned to each point}

  \item{scale}{scaling for explanatory variable arrows}

  \item{...}{other arguments to be passed to qplot}
}
\value{
a ggplot object
}
\description{
ggplot biplot function for princomp objects
}
\seealso{
\code{\link{biplot}}
}
\keyword{pca}


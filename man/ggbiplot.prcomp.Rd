\name{ggbiplot.prcomp}
\alias{ggbiplot.prcomp}
\title{ggplot biplot function for prcomp objects}
\usage{
\method{ggbiplot}{prcomp}(PC, selected.pc = c(1, 2), groups = NULL,
  scale = 1, length.alpha = T, ...)
}
\arguments{
  \item{PC}{a fitted object from prcomp (from stats
  package)}

  \item{selected.pc}{number of two principle components}

  \item{groups}{group assigned to each point}

  \item{scale}{scaling for explanatory variable arrows}

  \item{...}{other arguments to be passed to qplot}
}
\value{
a ggplot object
}
\description{
ggplot biplot function for prcomp objects
}
\examples{
p <- ggbiplot.prcomp(PC=prcomp(iris[,-5]))
print(p)
#'p <- ggbiplot.prcomp(PC=prcomp(iris[,-5]), iris[,5])
print(p)
}
\seealso{
\code{\link{prcomp}}
}
\keyword{pca}


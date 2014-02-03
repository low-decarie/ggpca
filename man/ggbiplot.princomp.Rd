\name{ggbiplot.princomp}
\alias{ggbiplot.princomp}
\title{ggplot biplot function for princomp objects}
\usage{
\method{ggbiplot}{princomp}(PC, selected.pc = c(1, 2), obsnames, scale = 1,
  ...)
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
\examples{
p <- ggbiplot.princomp(PC=princomp(iris[,-5]),
                   selected.pc=c(1,2),
                   obsnames=iris[,5],
                   main="PCA of iris dataset")
print(p)
}
\seealso{
\code{\link{princomp}}
}
\keyword{pca}


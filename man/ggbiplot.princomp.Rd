\name{ggbiplot.princomp}
\alias{ggbiplot.princomp}
\title{The length of a string (in characters).}
\usage{
ggbiplot.princomp(PC, selected.pc = c("Comp.1", "Comp.2"), obsnames,
  scale = 1, ...)
}
\arguments{
  \item{PC}{a fitted object from princomp (from stats
  package)}

  \item{selected.pc}{name of two principle components}

  \item{obsnames}{name assigned to each point}

  \item{scale}{scaling for explanatory variable arrows}

  \item{...}{other arguments to be passed to qplot}
}
\value{
a ggplot object
}
\description{
The length of a string (in characters).
}
\examples{
p <- ggbiplot.princomp(PC=princomp(iris[,-5]),
                   selected.pc=c("Comp.1","Comp.2"),
                   obsnames=iris[,5],
                   main="PCA of iris dataset")
print(p)
}
\seealso{
\code{\link{princomp}}
}
\keyword{pca}


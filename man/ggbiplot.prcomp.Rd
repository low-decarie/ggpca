\name{ggbiplot.prcomp}
\alias{ggbiplot.prcomp}
\title{The length of a string (in characters).}
\usage{
ggbiplot.prcomp(PC, selected.pc = c("PC1", "PC2"), labels, groups,
  scale = 1, ...)
}
\arguments{
  \item{PC}{a fitted object from prcomp}

  \item{selected.pc}{name of two principle components}

  \item{labels}{name assigned to each point}

  \item{groups}{groups assigned to each point}

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
p <- ggbiplot.prcomp(PC=prcomp(iris[,-5]),
                   selected.pc=c("PC1","PC2"),
                   labels=iris[,5],
                   groups=iris[,5],
                   main="PCA of iris dataset")
print(p)
}
\seealso{
\code{\link{prcomp}}
}
\keyword{pca}


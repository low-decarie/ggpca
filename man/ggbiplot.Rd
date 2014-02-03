\name{ggbiplot}
\alias{ggbiplot}
\title{Generic ggplot biplot function}
\usage{
ggbiplot(PC, selected.pc = c(1, 2), obsnames, scale = 1, ...)
}
\arguments{
  \item{PC}{a fitted object from prcomp (from stats
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
Generic ggplot biplot function
}
\examples{
p <- ggbiplot(PC=prcomp(iris[,-5]),
                   selected.pc=c(1,2),
                   obsnames=iris[,5],
                   main="PCA of iris dataset")
print(p)
}
\seealso{
\code{\link{prcomp}}
}
\keyword{pca}


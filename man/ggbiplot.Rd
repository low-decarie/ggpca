\name{ggbiplot}
\alias{ggbiplot}
\title{Generic ggplot biplot function}
\usage{
ggbiplot(PC, selected.pc = c(1, 2), groups = NULL, scale = 1,
  length.alpha = T, ...)
}
\arguments{
  \item{PC}{a fitted object from prcomp (from stats
  package)}

  \item{selected.pc}{vector of length 2 number of two
  principle components}

  \item{groups}{vector group assigned to each point}

  \item{length.alpha}{logical wether transparency of
  explanatory variables should vary with length}

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
# Can be used on the results of princomp and prcomp
p <- ggbiplot(PC=princomp(iris[,-5]))
print(p)
# For 6 or less groups, uses shape and linetype
p <- ggbiplot(PC=prcomp(iris[,-5]),
                   selected.pc=c(1,2),
                   groups=iris[,5],
                   main="PCA of iris dataset")
print(p)
# For more than 6 groups, uses colour
p <- ggbiplot(PC=prcomp(iris[,-5]),
                   selected.pc=c(1,2),
                   groups=sample(LETTERS[1:7],nrow(iris), replace=T),
                   main="PCA of iris dataset")
print(p)
}
\seealso{
\code{\link{biplot}}, \code{\link{prcomp}},
\code{\link{princomp}}
}
\keyword{pca}


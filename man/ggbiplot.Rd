\name{ggbiplot}
\alias{ggbiplot}
\title{Generic ggplot biplot function}
\usage{
ggbiplot(PC, selected.pc = c(1, 2), groups = NULL, scale = 1,
  length.alpha = T, ...)
}
\arguments{
  \item{PC}{a fitted object}

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
Produces a ggplot biplot from an PCA analysis similar to
biplot.  Currently has methods for princomp and prcomp.
}
\details{
If \code{groups} acts as stats:::biplot If \code{groups} is
specified and has 6 or less unique values, observations are
presented as different shapes for each group (ggplot
\code{shape} argument) and circled with a 95% confidence
interval ellipses, each group having an ellipsis with a
different \code{linetype}. If \code{groups} is specified
and has more than 6 unique values, observations are
presented with different colours for each group (ggplot
\code{colour} argument) and circled with a 95% confidence
interval ellipses, each group having an ellipsis with a
different \code{colour}.
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


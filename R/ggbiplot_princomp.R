ggbiplot.princomp <- function(PC,
                            selected.pc=c(1,2),
                            groups=NULL,
                            scale=1,
                            varnames=NULL,
                            ...)
{
  rotated.data <- data.frame(PC$scores)
  
  raw.loadings <- PC$loadings
  class(raw.loadings) <- "matrix"
  loadings <- data.frame(varnames=rownames(raw.loadings), t(t(raw.loadings) * PC$sdev))
  
  p <- ggbiplot.default(rotated.data,loadings,selected.pc,groups,scale,...)
  
  return(p)

}
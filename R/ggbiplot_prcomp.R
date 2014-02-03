ggbiplot.prcomp <- function(PC,
                          selected.pc=c(1,2),
                          groups=NULL,
                          scale=1,
                          length.alpha=T,
                          ...)
{

rotated.data <- data.frame(PC$x)

loadings <- data.frame(varnames=rownames(PC$rotation), t(t(PC$rotation) * PC$sdev))

p <- ggbiplot.default(rotated.data,loadings,selected.pc,groups,scale,...)

return(p)

}
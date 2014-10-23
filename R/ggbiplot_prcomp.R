ggbiplot.prcomp <- function(PC,
                          selected.pc=c(1,2),
                          groups=NULL,
                          scale=1,
                          varnames=NULL,
                          ...)
{

rotated.data <- data.frame(PC$x)

if(is.null(varnames)){
  varnames <- 1:length(PC$center)
}

loadings <- data.frame(varnames=varnames, t(t(PC$rotation) * PC$sdev))


p <- ggbiplot.default(rotated.data,loadings,selected.pc,groups,scale,...)

return(p)

}
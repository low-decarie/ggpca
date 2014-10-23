ggpca
=====

ggplot plotting of pca analysis

```R
install.packages("devtools")
require(devtools)
    
devtools:::install_github("ggpca","low-decarie")
```
    
Currently available
* ```ggbiplot``` generic S3 function

* ```ggbiplot.princomp``` biplot for prcomp
* ```ggbiplot.prcomp``` biplot for princomp
* ```ggbiplot.default``` biplot used internaly

---

This is an exercise in creating a package and is obviously a work in progress.
This may not be the proper approach to producing a biplot from a PCA analysis.
Feedback is appreciated.
Plans:
- [ ] allow control of number of predictive variables plotted
- [ ] auto select scale
- [ ] improve documentation
- [ ] add basic plotting method for pca objects (equivalent to plot(princomp(x))
- [ ] create methods for other classes
  - [ ] PCA in FactoMineR
  - [ ] dudi.pca in ade4
  - [ ] acp in amap

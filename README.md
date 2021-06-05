
<!-- README.md is generated from README.Rmd. Please edit that file -->
# OptSurrogateSurv: Quantifying the Feasibility of Shortening Clinical Trial Duration Using Surrogate Markers

<!-- badges: start -->
<!-- badges: end -->
The goal of OptSurrogateSurv is to nonparametrically estimate the PTE (proportion of treatment on the primary outcome explained) by an optimally transformation of surrogate marker measured at an earlier time. The primary outcome measured at a later time is subject to censoring.

## Installation

You can install the released version of OptSurrogateSurv from [CRAN](https://github.com/wx202/OptSurrogateSurv.git) with:

``` r
install.packages("devtools")
library(devtools)
devtools::install_github("wx202/OptSurrogateSurv")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(OptSurrogateSurv)

data("sysdata")
t.0=data.example$t.0
t=data.example$t
xob=data.example$data$xob
s.ob=data.example$data$s.ob
deltaob=data.example$data$deltaob
aob=data.example$data$aob

out=pte.survival(xob,s.ob,deltaob,aob,t,t.0,varind=1,re=10)
out$pte.est
#> [1] 0.8413843
```

## Citation

Wang X, Cai T, Tian L, Bourgeois F, Parast L. Quantifying the Feasibility of Shortening Clinical Trial Duration Using Surrogate Markers. Under revision. <!-- What is special about using `README.Rmd` instead of just `README.md`? You can include R chunks like so: -->

<!-- ```{r cars} -->
<!-- summary(cars) -->
<!-- ``` -->
<!-- You'll still need to render `README.Rmd` regularly, to keep `README.md` up-to-date. `devtools::build_readme()` is handy for this. You could also use GitHub Actions to re-render `README.Rmd` every time you push. An example workflow can be found here: <https://github.com/r-lib/actions/tree/master/examples>. -->
<!-- You can also embed plots, for example: -->
<!-- ```{r pressure, echo = FALSE} -->
<!-- plot(pressure) -->
<!-- ``` -->
<!-- In that case, don't forget to commit and push the resulting figure files, so they display on GitHub and CRAN. -->

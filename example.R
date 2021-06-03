library(devtools)
devtools::install_github("wx202/OptSurrogateSurv")
library(OptSurrogateSurv)


data("sysdata")
t.0=data.example$t.0
t=data.example$t
xob=data.example$data$xob
s.ob=data.example$data$s.ob
deltaob=data.example$data$deltaob
aob=data.example$data$aob

out=pte.survival(xob,s.ob,deltaob,aob,t,t.0,varind=1,re=10)


# git push -f

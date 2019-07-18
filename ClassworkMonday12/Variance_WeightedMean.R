x<-c(1,5,30)
px<-c(0.5,0.45,0.05)
Ex<-sum(x*px)
Wm<-weighted.mean(x,px)
Vx<-sum(x^2*px)-Ex^2
VX<-weighted.mean(x^2,px)-Ex^2

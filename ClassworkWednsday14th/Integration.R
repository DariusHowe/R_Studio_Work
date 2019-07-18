#Integration Intro
fx<-function(x){
  3/4-3/4*x^2
}

#W/ error reading included
ans<-integrate(fx,lower=-0.5,upper=1)

#W/O error reading included
anse<-integrate(fx,lower=-0.5,upper=1)$value

plot(fx, xlim=c(-1.5,1.5), ylim=c(0,1))


#Quiz 2/26/18
#Given f(x) = 1/(sqrt(18*pi)) * exp(-(x-4)^2/18)
fx<-function(x)
{
  1/(sqrt(18*pi)) * exp(-(x-4)^2/18)
}
#Integrate and Evaluate btw -infinite and infinite

Finished<-integrate(fx,lower=-Inf, upper = Inf)$value
#Prove =1
Ans<-c(CheckingToSeeIfValIs1 = 1 , ComputedVal = Finished )
Ans
#Show e(x)=4
fx1<-function(x)
{
  x* 1/(sqrt(18*pi)) * exp(-(x-4)^2/18)
}
lambda<-1/(sqrt(18*pi))
Finished1<-integrate(fx1,lower=-Inf, upper = Inf)$value
Ans1<-c(CheckingToSeeIfValIs = 4 , ComputedVal = Finished1 )
Ans1
#Show V(x)=9
fx2<-function(x)
{
 (1/(sqrt(18*pi))*(x-4)^2 * exp(-(x-4)^2/18))
}
Finished3<-integrate(fx2,lower=-Inf,upper=Inf)$value
Variance<-Finished3
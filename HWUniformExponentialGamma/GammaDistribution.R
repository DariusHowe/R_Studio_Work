#The gamma distribution is often used to model the waiting time until the a'th event in a Poisson process.
#Suppose the average arrival rate of a metro train at the station was four trains per hour (lambda =4)
#Find Probability that atleast 6 trains will come within 2 hours 
lambda<-4

#1.)Average arrival rate is 8 trains in 2 hours
#2.)X~Pois(lambda=8)
ProbAtleast6in2hrs<-1-ppois(6,8)

#3.)Probability that More than two trains come wthin30 min
ProbMore2in30Min<-1-pgamma(2,3,lambda)

#Expected Value equation for Gamma Example
EGamma<-function(x)
{
  x/lambda
}
ExpectFor2<-EGamma(2)
ExpectFor3<-EGamma(3)

#Variance of Gamma Example
VGamma<-function(x)
{
  x/(lambda^2)
}
VarFor2<-VGamma(2)
VarFor3<-VGamma(3)

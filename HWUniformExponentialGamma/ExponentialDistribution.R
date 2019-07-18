#The exponential Distribution is charcterized by a lack of memory property and is often used to model lifetimes of electronic components as well as waiting times for Poisson process
#Ex4.17
#If the Life of a certain type of light bulb has an exponential distribution with a mean of 9 months find
#a)The probability that a randomly selected light bulb lasts between 4 and 13 months
lambda1<- 1/9
originalF<-function(x)
{
  lambda1*exp(-x/9)
}
IntegratedF<-function(x)
{
  -exp(-x/9)
}
ExpectedLife<-pexp(13,1/9) - pexp(4,1/9)
ExpectedLife
Route2<-integrate(originalF,lower=4,upper=13)$value
Route2
#b)The 95th percentile of the distribution
PercentilePlease<-qexp(.95,1/9)
PercentilePlease
#c)The probability that a light bulb that has lasted for 11 months will last more than 26 months
Route1<-pexp(26,lambda1,lower=FALSE)/pexp(11,lambda1,lower=FALSE)
Route1
Route<-1-pexp(15,lambda1)
Route
Route3<-pexp(15,lambda1,lower=FALSE)
Route3

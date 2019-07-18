#Making a universal ish program for calculating the median of a set of n numbers
#Works for Ordered sets of numbers only
n<-c(1:1000)
medianVal<-(
    if((length(n) %% 2)==0)
  {
    high<- (length(n)/2)+1
    low<-(length(n)/2)
    midVal<-((high+low)/2)
    print(midVal)
  }
  else
  {
    mid<-(length(n)/2)
    print(mid)
  }
  )
  

#Checks via median command
TrueMedian<-median(n)

#For unordered sets
nOrganized<-n[order(n)]
medianValOrg<-(
  if((length(nOrganized) %% 2)==0)
  {
    high2<- (length(nOrganized)/2)+1
    low2<-(length(nOrganized)/2)
    midVal2<-((high2+low2)/2)
    print(midVal2)
  }
  else
  {
    mid2<-(length(nOrganized)/2)
    print(mid2)
  }
)

#Check Again
TrueMed<-median(nOrganized)

#Making Median Function for Continuous Variable
y<-function(x)
{
  ((3/4)-3/4*(x^2))
}
#Coefficients
v<-c(3/4,0,-3/4)
#Gives the bounds for the integral
polyroot(v)
WholeThang<-integrate(y,lower=-1,upper=1)$value
#Value means the whole area under the curve =1
#Calculate half-way point of Value
halfThang<-integrate(y,lower=-1,upper=0)$value
OtherThang<-integrate(y,lower=0,upper=1)$value
integrated<-function(x){
  -((x)*(x^2-3))/4
}
NewMedian<-integrated(halfThang)

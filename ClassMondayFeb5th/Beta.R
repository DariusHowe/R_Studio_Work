#Beta Work

#Elements that go into base functions
n<-length(women$height)
x<-mean(women$height)
y<-mean(women$weight)

#Numerator for Beta 1
short<-((women$height-x)*(women$weight-y))

#Denominator for Beta 1
bottom<-((women$height-x)^2)

#Equations for Beta 1
f1<-(sum(short))
f2<-(sum(bottom))

#End Result for Beta 1
fT<-((f1)/(f2))

#Equations for Beta 0
#Gives different b0 each iteration
b0<-((women$weight)-fT*(women$height))

#Gives average B0
b01<-meanWeight-fT*meanHeight



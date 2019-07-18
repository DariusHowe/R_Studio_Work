#Traffic Volume
#AVerage number of vehicles passing a certain point on a road is
#2 every 30 seconds
lambda<-2
#A)Find the Probability that more than 3 cars will pass the point in 30 seconds

ProbMoreThan3In30Seconds<-1-ppois(3,lambda)
#B)What is the Probability that more than 10 cars pass the point in 360 seconds
ProbMoreThan10In360Seconds<-1-pgamma(1,10,12)

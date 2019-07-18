#The Lifetime of a engine 
#Stnd Devi =3.5
#Mean=10
#No more tha 4% of Engines can be replaced
#Find Largest guarantee period the manufacturer should advertise
LeastPeriod<-qnorm(.04,10,3.5)
statement<-c(PeriodShouldBe = LeastPeriod)
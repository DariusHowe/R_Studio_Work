#Three doors Simulation
set.seed(2)

#Actual sample randomized results
actual<-sample(x=1:3,size=10000,replace=TRUE)

#Guessed Picks from door selections to be highest value to win
aguess<-sample(x=1:3,size=10000,replace=TRUE)

equal<-(actual==aguess)

#Tells Probability that one doesnt switch doors after picking the first one
PNoSwitch<-sum(equal)/10000

not.equal<-(actual!=aguess)

#Probability that one does choose to switch doors after picking the first option
PSwitch<-sum(not.equal)/10000



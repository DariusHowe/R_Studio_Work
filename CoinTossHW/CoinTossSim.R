#StartAssignment
coinToss<-expand.grid(coin1=c("H","T"),coin2=c("H","T"),coin3=c("H","T"))
coin1=c("H","T")
coin2=c("H","T")
coin3=c("H","T")

probability<-c(1/8)

coinToss$probability<-probability

#P(All Same)
probSame<-function(coinToss)
{
  1/4
}

#P(Two Heads)
probHeadsWins<-function(coinToss)
{
  1/2
}

#Second Table
Omega<-expand.grid(coin1=0:1,coin2=0:1,coin3=0:1)

#Calculating # of times value in table = 1 in each row (shows # of times heads was landed)
n.heads<-apply(Omega,1,sum)

cbind(Omega,n.heads)

#Tells # of times heads was hit (top row is occurance count, bottom is num times happened)
table(n.heads)

vals<-table(n.heads)/length(n.heads)

#Plotting Prob. Density
plot(vals,ylab="Occurrances based on table" ,xlab="# of Times Heads")
#Creates Table of all possible outcome for each coin's landing on tails(0) or heads(1)
Omega<-expand.grid(coin1=0:1,coin2=0:1,coin3=0:1)

#Calculating # of times value in table = 1 in each row (shows # of times heads was landed)
n.heads<-apply(Omega,1,sum)

cbind(Omega,n.heads)

#Tells # of times heads was hit (top row is occurance count, bottom is num times happened)
table(n.heads)

table(n.heads)/length(n.heads)


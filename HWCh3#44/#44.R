#Table that contains all possible outcomes of coin toss 3 coins
coinToss<-expand.grid(coin1=1:0,coin2=1:0,coin3=1:0)
coin1=c("H","T")
coin2=c("H","T")
coin3=c("H","T")

#Let rand.var. X be # of Tails landed
X<-apply(coinToss,1,sum)
Heads.table<-table(X)
cbind(coinToss,X)

#Calculate Mean of X
heads.mean<-mean(X)
#Calculate Variance of X
heads.variance<-var(X)
#Simulate coin toss 10000
coinSpace<-c("H","T")
coinSim<-sample(coinSpace,3,replace=TRUE)
CoinSim2<-function(n){
  sample(coinSpace,n,replace=TRUE)
}

#Do Same Simulation in terms of 1=H and 0=T
coinS<-c(000,001,010,011,100,101,110,111)
coinSim1<-sample(coinS,3,replace=TRUE)
CoinSim1<-function(n){
  sample(coinS,n,replace=TRUE)
}
#Compute Sample Mean
CoinsMean<-mean(CoinSim1(10000))
#Compute Sample Variance
CoinsVariance<-var(CoinSim1(10000))
#Compare (within 2%?)
Nope
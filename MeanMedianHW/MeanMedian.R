#Entering Data for dataframe
names<-c("Peter","Mary","Ann","June","John","Kevin")
score<-c(100,91,90,83,100,89)
testing<-data.frame(names,score)

#Mean needed info
n<-length(score)
tScore<-sum(score)
meanScore<-(tScore/n)

#Checking To make sure Mean is true
mean(score)

#Median needed info
scoreOrganized<-(testing[order(testing$score),])
row.names(scoreOrganized)<-(scoreOrganized$names)
medianScore<-(
  if((n %% 2)==0)
    {
   middleIndex<-(length(score))/2
    high<-scoreOrganized$score[middleIndex+1]
    low<-scoreOrganized$score[middleIndex]
    print((high+low)/2)
  }
  else
  {
    middleIn<-length(scoreOrganized)/2
    print(scoreOrganized[middleIn])
  }

)

#Checking to make sure median is true
trueMedian<-median(scoreOrganized$score)
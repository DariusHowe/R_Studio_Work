quiz<-data.frame(
  name = c("A","B","C","D","E","F"),
  score = c(68, 72,65,99,84,71)
  )

#Calculate The Mean
mScore<-mean(score)

#Total num of scores in set
n<-length(score)

#formula for stdndevi
#Take Sqrt of the sum of each element in the column score for the dataframe quiz, 
#subtract the mean of the column score,
#square that answer, 
#then divide by the length of the number of scores -1
standDevi<-sqrt(sum((quiz$score - mScore)^2)/(n-1))

#End Result Should Be
sd(score)



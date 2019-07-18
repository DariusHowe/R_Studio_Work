#Number of Questions
nQuest<-c(1:5)

#Number of Options Per Question
nOpt<-c(1:3)

#Possible answer choice prob for each 
ProbEachQuest<-c(1/3)

#4 right means 80%
#80% * prob of each answer gives prob of getting atleast 4 right from guessing
ProbAtleast4Right<-{
  .8 * ProbEachQuest
}
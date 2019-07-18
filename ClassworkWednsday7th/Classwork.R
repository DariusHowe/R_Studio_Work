#Creating a Probability Function
#For if students have the same birthday
m<-seq(10,50,5)

ProbX<-function(m)
{
  c(students=m, 
  ProdAtL2sB=1-prod((365:(365-m+1)/365)))

}

#Changing data for use in a plot
m<-1:60
p<-numeric(60)
for(i in m){
  q=prod((365:(365-i+1))/365)
  p[i]=1-q
  }
#Plotting the data on a dot plot graph

plot(m,
     p,
     col="skyblue3",
     pch=19,
     ylab="P(at Least 2 students with the same birthday)",
     xlab="m= Number of students in the room")

#Dice Problem
Omega<-expand.grid(roll1=1:6,roll2=1:6)
H<-subset(Omega,roll1+roll2==8)
G<-subset(Omega,roll1==4)
PG<-dim(G)[1]/dim(Omega)[1]
HaG<-subset(Omega,roll1==4 & roll2==4)
PHaG<-dim(HaG)[1]/dim(Omega)[1]

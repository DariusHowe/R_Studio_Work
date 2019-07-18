#Binomial
n<-4
x<-1

probXboyoutofN<-dbinom(x,n,.5)

probCheck<-
{
  (.5^n)*n
}

#Geometric
n<-4
x<-1
probXGirlsBefore1Boy<-dgeom(3,.5)

probCheck2<-
{
  .5^(n-x)*.5^(x)
}

#Negative Binomial
z<-2
prob2GirlsBefore2Boys<-dnbinom(z,n-1,.5)

probCheck3<-
{
  .5^(n) * (n-x)^x
}

#HyperGeometric
#10 kids, 5 boys, 5 girls. Want 4 kids total, 2 girls 2 boys
dhyper(z,n,z,n)

probCheck4<-
{
  
}

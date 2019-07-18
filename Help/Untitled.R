x <-c(0:10)
N <- function(x)
{
   .05*x^2 - .42*x + 12.33
}

table(N(x))

A<-c(6000,8600,10000,14000,18000,22000,26000,30000)
S<-function(A)
  {
   3*A^0.3
}
n<-c(0:20)

C<-function(n)
{
  2+n
}

B<-function(n)
{
  25*.4^n
}

A<-function(n)
{
  B(n)=C(n)
}

l<-c(1:22)
P<-function(l){
  -0.2*l^2 + 3.6*l - 9
  
}

r<-c(1:36)
R<-function(r)
{
  (89-3*r)*r
}

f<-c(0:20)
F<-function(f)
{
    37.5/(0.25 + 0.76^f)

}
t<-(0:60)
v<-function(t)
{
  20*(1 - (0.2^t))
}

g<-0:32
G<-function(g)
{
  n*(77-3*(n-1))
}

e<-0:10
E<-function(e)
{
  2500+300*e
}

h<-0:3
H<-function(h)
{
  70/h
}

p<-0:1200
K<-function(p)
{
  400-(325*(exp((-p/50))))
}

m<-5:30
M<-function(m)
{
  (120000*(exp(0.005)-1))/(1 - exp(-0.06*m))
}
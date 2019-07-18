#Uniform Distro is normally used for random number generation
#Set the Parameters
#Example4.14
#Generate a sample of 1000 random values form a continuous distro
a<-1
b<-2
Sim<-runif(2000)

PDF<-function(x)
{
(4/3)*x *(2-x^2)
}

Expected<-sqrt((2 - sqrt(4 - 3 * Sim)))

ExpectedVal<-mean(Expected)
VarVal<-var(Expected)

Figures<-c(ExpectedValue = ExpectedVal, SimulatedVariance = VarVal)

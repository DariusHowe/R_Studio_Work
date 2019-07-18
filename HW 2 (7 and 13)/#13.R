#Temperatures in Celsius
temps<-c(18,20,22,24,26,28)
celsius<-data.frame(
  temps
)
#Fahrenheit = 1.8temp +32
slope<-c(1.8)
fahrenheit<-((slope*temps) +32)
celsius$fahrenheit<-((slope*temps) +32)
print(celsius)

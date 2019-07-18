#Case 1: # of boys
gender<-c(1:0)
probBoy<-1/2
#Binomial Distro
probOneBoyOnly<-(4*probBoy^4)

#Case 2: P(3 girls and 1 Boy)
#Geometric Distro
probThreeGirlsOneBoy<-(probBoy^3*probBoy)

#Case 3:
#Negative Binomial Distro
probTwoandTwo<-(probBoy^4 * 3)

#Case
#HyperGeometric
dhyper()
#Factorial Program
dummie<-"You done Messed Up"

fact<-function(x){
  y<-1
  for(i in 1:x)
    {
    if(x>0)
      {
       if((x %% 1)==0)
      {
      y<-prod(x:1)
      
      }
      
    else if((x%%1) != 0)
    {
      y<-(prod(x:1)*(x-floor(x))*gamma(x-floor(x)))
    }
    }
   
    else if (x==0)
      {
         y<-1
      }
    else if (x<0)
      {
        print(dummie)
      } 
  }
  print(y)
}


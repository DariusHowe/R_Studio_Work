#Importing new package
library(PASWR2)

#Opening dataframe
CARS2004

#Calculating total cars
total.cars<-((cars*1000)/population)

#calculating death rate
death.rate<-((deaths/cars))

#creating a column in the data frame for death rate
CARS2004$deathrate<-death.rate

#creating a column in the data frame for total Cars
CARS2004$CarTotal<-total.cars

#Ordering the dataframe in ascending order based on death rate
OrderCars<-CARS2004[order(death.rate),]

#Hiding data in dataframe so that we can only focus on two columns
OrderCars[2:4]<-NULL

#Creating BoxPlot for death Rate vs Country
barplot(
        OrderCars$deathrate,
        main="Car Death Rate",
        xlab="Country Names",
        ylab="Death Rate")

#Lowest automobile death rate
LowestKiller<-OrderCars$country[1]
#Means that the Country with the least number of automobile deaths is the 
#first element in the dataframe with ascending death rates
#Answer is Malta at .06%

#Unholding data from dataframe and altering what does get witheld
OrderCars<-CARS2004[order(death.rate),]
OrderCars[3]<-NULL
OrderCars[4]<-NULL

#Creating the scatter Plot
plot(
     total.cars,
     population,
     main="Population vs Total Cars",
     xlab="Total Cars",
     ylab="Population",
     pch=4 )
#Relationship is that Most nations have between zero 
#and 500 total Cars with a  population between zero and 20000 individuals

#Square Regression Line 
PopvsCarsModel<-lm(total.cars~population)
#Comes out to 185.916515 Population

#Creating scatter Plot for total.cars vs death.rate
plot(death.rate,total.cars)
#Relationship is averaging less than 500 totals cars and inbetween .1 and .5 for a death rate

#Calculating Spearman Correlation
cor(death.rate, total.cars,method="spearman")
#Coefficient is measuring the strength and direction between Death Rate and Total Cars (saying there isnt a heavy correlation there)

#Plotting Log of Total Cars vs Death Rate
plot(log(death.rate),log(total.cars))
#No true correlation strongly detected

#Determining Square Regression
CarsVsDeath<-lm(death.rate~total.cars)



#Removing Austurias
wheat<-(head(WheatOrder,-1))

#Adding Austurias
wheat2<-(WheatOrder)

#Converting Hectacres to Acres
acre<-c(.40468564224)
WheatAcres<-(
  wheatspain$acres<-wheat.surface*acre
)

#WheatSurfaceSums
WheatSurface.sum<-(
  sum(wheatspain$wheat.surface)
  )
WheatSurface.acre<-(
  sum(wheatspain$acres)
   )

#Adding Row Names
wheatspain2<-(
  wheatspain[, !(names(wheatspain) %in% drops)]
  )

#SortingByCommunity
WheatOrganized<-(wheatspain[order(wheatspain$community),]
  )

#Delimiting communities with less than 40000acres
WheatLess<-with(wheatspain, acres[acres<40000])

#Sum of acres <40000
sum.acres<-(sum(WheatLess))



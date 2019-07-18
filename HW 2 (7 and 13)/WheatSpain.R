#Creating the Data Frame for Chart
wheatspain <- data.frame(
  community = c("Galicia","Asturias","Cantabria","Pais Vasco","Navarra","La Rioja","Aragon","Cataluna","Islas Baleares","Castilla y Leon","Madrid","Castilla La Mancha","C. Valenciana","Region de Murcia","Extremadura","Andalucia","Islas Canarias"),
  wheat.surface = c(18817,65,440,25143,66326,34214,311479,74206,7203,619858,13118,263424,6111,9500,143250,558292,100)
)

#Printing the Data frame
print(wheatspain)

#Max Value
WheatMax <-(
  max(wheatspain$wheat.surface, na.rm=TRUE)
)
  
#Min Value
WheatMin <-(
  min(wheatspain$wheat.surface, na.rm=TRUE)
)

#Range
WheatRange <-(
  WheatMax-WheatMin
)

#Largest Harvest = Castilla y Leon

#OrderAscending
OrderWheat <-(
  wheatspain[order(wheatspain$wheat.surface),]
)

#OrderDescending
WheatOrder<-(
  wheatspain[rev(order(wheatspain$wheat.surface)),]
)




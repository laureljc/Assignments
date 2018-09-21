#variable name
names(Copy_of_Education_table)
#Structure of Data
str(Copy_of_Education_table)
#mean
str(Copy_of_Education_table)
mean(Copy_of_Education_table$`High school graduate`)
mean(Copy_of_Education_table$`Associate's degree, academic`)
mean(Copy_of_Education_table$`Bachelor's degree`)
mean(Copy_of_Education_table$`Master's degree`)
mean(Copy_of_Education_table$`Doctoral degree`)
#median
str(Copy_of_Education_table)
median(Copy_of_Education_table$`High school graduate`)
median(Copy_of_Education_table$`Associate's degree, academic`)
median(Copy_of_Education_table$`Bachelor's degree`)
median(Copy_of_Education_table$`Master's degree`)
median(Copy_of_Education_table$`Doctoral degree`)
#Create mode function
mode<-function(x) {
  unique_val<-unique(x)
  counts<-vector()
  for(i in 1: length(unique_val)){
    counts[i]<- length(which(x==unique_val[i]))
  }
  position<-c(which(counts==max(counts)))
  if(length(unique_val)==length(x))
    mode_x<-'Mode does not exist'
  else
    mode_x<-unique_val[position]
  return(mode_x)
}
#Attach mode to dataset
attach(Ed2)
#Check work
summary(`Doctoral degree`)
mean(`Doctoral degree`)
median(`Doctoral degree`)
#Run mode#if output says "Mode does not exist" then data has no mode
mode(`Doctoral degree`)
mode(`High school graduate`)
mode(`Bachelor's degree`)
mode(`Associate's degree, academic`)
mode(`Master's degree`)
mode(Ed2$`High school graduate`)

#create subset:
edu<-Copy_of_Education_table[(1:14),(15:15)]
#variance:
var(edu)
#range
max(edu)-min(edu)
#standard deviation
a.-c(11680
     )
#Create histogram
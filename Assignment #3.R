#importing the data:
library(readxl)
Copy_of_Education_table <- read_excel("C:/Users/Laurel Cook/Desktop/Copy of Education table.xlsx", 
                                      col_types = c("text", "numeric", "numeric", 
                                                    "numeric", "numeric", "numeric", 
                                                    "numeric", "numeric", "numeric", 
                                                    "numeric", "numeric", "numeric", 
                                                    "numeric", "numeric", "numeric", 
                                                    "numeric", "numeric"))
View(Copy_of_Education_table)


#create subset:
edu<-Copy_of_Education_table[c(1:14),c(14,15,17)]
str(edu)

#getting mean and median:
summary(edu)

# getting mode:
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

mode(edu$`Bachelor's degree`)
mode(edu$`Master's degree`)
mode(edu$`Doctoral degree`)

#pulled package psych package:
install.packages("psych")
library(psych)
describe(edu$`Bachelor's degree`)
describe(edu$`Master's degree`)
describe(edu$`Doctoral degree`)

#variance:
var(edu$`Bachelor's degree`)
var(edu$`Master's degree`)
var(edu$`Doctoral degree`)

#normality:
hist(edu$`Bachelor's degree`)
hist(edu$`Master's degree`)
hist(edu$`Doctoral degree`)

qqnorm(edu$`Bachelor's degree`); qqline(edu$)
qqnorm((edu$`Master's degree`); qqline(edu$)
qqnorm((edu$`Doctoral degree`); qqline(edu$)
       
       
#Bring in Data
dat<-read.csv(file = "https://raw.githubusercontent.com/mattdemography/EDU_7043/master/Data/GSS_2016_AA.csv", stringsAsFactors=F)
names(dat)
str(dat)

#Let's Make some changes in the following variables
summary(dat$NATHEAL) 

dat$PARTYID<-ifelse(dat$NATHEAL==9 | dat$NATHEAL==8 |dat$NATHEAL==0, NA, dat$NATHEAL)
summary(dat$NATHEAL)

#to See how views of the public Varies by Race and Gender.
dat$tmuch<-ifelse(dat$NATHEAL==3, 1, 0)
dat$arigh<-ifelse(dat$NATHEAL==2, 1, 0)
dat$tlit<-ifelse(dat$NATHEAL==1, 1, 0)

#Check the Data
table(dat$tmuch)
table(dat$arigh)
table(dat$tlit)

dat$newheal<-ifelse(dat$tmuch==3, 1, ifelse(dat$arigh, 2, ifelse(dat$tlit, 1, 0)))
table(dat$newheal)

summary(dat$newheal)
sd(dat$newheal)
range(dat$newheal)

#Education
#summary(dat$EDUC)
#dat$EDUC<-ifelse(dat$EDUC==99 | dat$EDUC==98 | dat$EDUC==97, NA, dat$EDUC)
#summary(dat$EDUC) 

#Make Education a Categorical Variable
#dat$nohs<-ifelse(dat$EDUC<=11, 1, 0)
#table(dat$nohs)
#chek data
#head(dat[5:10,c(33,47)])

#dat$high<-ifelse(dat$EDUC==12, 1, 0)
#table(dat$high)

#dat$scol<-ifelse(dat$EDUC>=13 & dat$EDUC<=15, 1, 0)
#table(dat$scol)
#Check Data
#head(dat[5:10,c(33,47:49)]) 

#dat$col<-ifelse(dat$EDUC>=16, 1, 0)
#table(dat$col)
#Check Data
#head(dat[5:10,c(33,47:50)]) 

#summary(dat$new)
#sd(dat$newheal)
#range(dat$newheal)

#SEX
summary(dat$SEX)

#Contingency Table
table(dat$SEX, dat$newheal)
ftable(dat$SEX, dat$newheal)

table(dat$RACE, dat$newheal)
ftable(dat$RACE, dat$newheal)

#Cross Tabulation
library(gmodels)
CrossTable(dat$SEX, dat$newheal, prop.chisq =F)
CrossTable(dat$SEX, dat$newheal, expected=T)

chisq.test(dat$SEX, dat$newheal)

CrossTable(dat$RACE, dat$newheal, prop.chisq = F)
CrossTable(dat$RACE, dat$newheal, expected = T) 

chisq.test(dat$RACE, dat$newheal)

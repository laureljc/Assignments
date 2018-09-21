
# create vectors
x<-c(5,10,15,20,25,30)
y<-c(-1,NA,75,3,5,8)
z<-c(5)
#multiply vectors
x*z
y*z
xz<-c(25,50,75,100,125,150)
yz<-c(-5,NA,375,15,25,40)
# print new vectors
print(xz)
print(yz)
#replace missing y and print
y<-ifelse(is.na(y),(2.5),y)
print(y)
# read document
library(readr)
assignment_1<-read_csv(file="https://raw.githubusercontent.com/mattdemography/EDU_7043/master/Data/Assignment_1.csv")
names(assignment_1)
print(assignment_1)
summary(assignment_1$Murder)
assignment_1$State[1:10]
NewEngMurder<-subset(assignment_1,State=="CT"|State=="ME"|State=="MA"|State=="NH"|State=="RI"|State=="VT")
summary(NewEngMurder)
#bonus Q
summary(assignment_1$Vcrime)

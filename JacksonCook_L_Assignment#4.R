
selfcare<-read.csv("https://raw.githubusercontent.com/mattdemography/EDU_7043/master/Data/GSS_2016_AA.csv",stringsAsFactors = F)
names(selfcare)
str(selfcare)
summary(selfcare$NATEDUC)
selfcare$NATEDUC<-ifelse(selfcare$NATEDUC==9 | selfcare$NATEDUC==8, NA, selfcare$NATEDUC)
summary(selfcare$NATEDUC)
summary(selfcare$NATEDUC)

selfcare$NATDRUG<-ifelse(selfcare$NATDRUG==9 | selfcare$NATDRUG==8, NA, selfcare$NATDRUG)
summary(selfcare$NATDRUG)

summary(selfcare$NATCITY)
selfcare$NATCITY<-ifelse(selfcare$NATCITY==9 | selfcare$NATCIT==8, NA, selfcare$NATCIT)
summary(selfcare$NATCIT)

White<-subset(selfcare, selfcare$RACE==1)
black<-subset(selfcare, selfcare$RACE==2)
otherrace<-subset(selfcare, selfcare$RACE==3)
male<-subset(selfcare, selfcare$SEX==1)
female<-subset(selfcare, selfcare$SEX==2)

summary(male$NATEDUC)
summary(female$NATEDUC)
describe(male$NATEDUC)
describe(female$NATEDUC)
t.test(male$NATEDUC, female$NATEDUC)


summary(male$NATEDUC)
summary(female$NATEDUC)
t.test(male$NATEDUC, female$NATEDUC)


summary(male$NATCITY)
summary(female$NATCITY)
t.test(male$NATCITY, female$NATCITY)

summary(male$NATEDUC)
summary(female$NATEDUC)
describe(male$NATEDUC)
describe(female$NATEDUC)
hist(male$NATEDUC)
hist(female$NATEDUC)
t.test(male$NATEDUC, female$NATEDUC)

summary(male$NATDRUG)
summary(female$NATDRUG)
describe(male$NATDRUG)
describe(female$NATDRUG)
hist(male$NATDRUG)
hist(female$NATDRUG)
t.test(male$NATDRUG, female$NATDRUG)

hh<-aov(male$NATCITY ~ as.factor(male$NATCITY))
summary(hh)

TukeyHSD(hh)


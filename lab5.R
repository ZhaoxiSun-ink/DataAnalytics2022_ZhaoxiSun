library(ISLR)
library(dplyr)
head(Hitters)
dim(Hitters)
is.na(Hitters)
hd<-na.omit(Hitters)
dim(hd)
glimpse(hd)
head(hd)

spm<-lm(Salary~., data=hd)
summary(spm)
cookd<-cooks.distance(spm)
influential<-cookd[(cookd>(3*mean(cookd,na.rm=TRUE)))]
influential

name_influential<-names(influential)
name_influential
outliers<-hd[name_influential,]
hwo<-hd %>% anti_join(outliers)

spm2<-lm(Salary~.,data=hwo)
summary(spm2)

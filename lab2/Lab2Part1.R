library(psych)
library(DescTools)
EPI_data<-read.csv('D:/data/2022spring/dataana/Lab2Part1/EPI_data2010.csv')
View(EPI_data)
#head(EPI_data)
#attach(EPI_data)
#fix(EPI_data)
names(EPI_data)<-as.matrix(EPI_data[1,])
EPI_data<-EPI_data[-1,]
EPI_data[]<-lapply(EPI_data,function(x)
  type.convert(as.character(x)))
#head(EPI_data)
EPI<-EPI_data$EPI
#head(EPI)
DALY<-EPI_data$DALY

#part1a
#EPI part
tf<-is.na(EPI)
E<-EPI[!tf]
EPI<-na.omit(EPI)
summary(EPI)
geometric.mean(EPI)#geometric mean
harmonic.mean(EPI)#harmonic mean
Mode(EPI)#mode
hist(EPI)#histogram
#DALY part
tfd<-is.na(DALY)
D<-DALY[!tfd]
DALY<-na.omit(DALY)
summary(DALY)
geometric.mean(DALY)#geometric mean
harmonic.mean(DALY)#harmonic mean
Mode(DALY)#mode
hist(DALY)#histogram

#part1b
AIR_H<-EPI_data$AIR_H
AIR_H<-na.omit(AIR_H)#omit NA in data
WATER_H<-EPI_data$WATER_H
WATER_H<-na.omit(WATER_H)#omit NA in data
DALYNEW<-c(seq(5,95,5))
AIR_HNEW<-c(seq(5,95,5))
WATER_HNEW<-c(seq(5,95,5))
NEW<-data.frame(DALYNEW,AIR_HNEW,WATER_HNEW)
#EPI regression
boxplot(EPI,DALY,AIR_H,WATER_H)
lmEPI<-lm(EPI~DALY+AIR_H+WATER_H)
lmEPI
summary(lmEPI)
cEPI<-coef(lmEPI)
cEPI#coeff for each variable
pEPI<-predict(lmEPI,NEW,interval="prediction")
pEPI
pcEPI<-predict(lmEPI,NEW,interval="confidence")
pcEPI
#regression for AIR_E
AIR_E<-EPI_data$AIR_E
AIR_E<-na.omit(AIR_E)
boxplot(AIR_E,DALY,AIR_H,WATER_H)
lmAIR_E<-lm(AIR_E~DALY+AIR_H+WATER_H)
lmAIR_E
summary(lmAIR_E)
cAIR_E<-coef(lmAIR_E)
cAIR_E#coeff for each variable
pAIR_E<-predict(lmAIR_E,NEW,interval="prediction")
pAIR_E
pcAIR_E<-predict(lmAIR_E,NEW,interval="confidence")
pcAIR_E
#regression for climate
CLIMATE<-EPI_data$CLIMATE
CLIMATE<-na.omit(CLIMATE)
boxplot(CLIMATE,DALY,AIR_H,WATER_H)
lmCLIMATE<-lm(CLIMATE~DALY+AIR_H+WATER_H)
lmCLIMATE
summary(lmCLIMATE)
cCLIMATE<-coef(lmCLIMATE)
cCLIMATE#coeff for each variable
pCLIMATE<-predict(lmCLIMATE,NEW,interval="prediction")
pCLIMATE
pcCLIMATE<-predict(lmCLIMATE,NEW,interval="confidence")
pcCLIMATE

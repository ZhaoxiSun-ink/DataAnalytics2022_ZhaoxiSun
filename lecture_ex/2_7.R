library(gcookbook)
library(ggplot2)
ggplot(pg_mean,aes(x=group,y=weight))+geom_bar(stat='identity')
BOD
str(BOD)
ggplot(BOD,aes(x=Time,y=demand))+geom_bar(stat='identity')
ggplot(BOD,aes(x=factor(Time),y=demand))+geom_bar(stat='identity')
ggplot(pg_mean, aes(x=group, y=weight)) +geom_bar(stat = "identity", fill="lightblue", colour = "red")
ggplot(BOD, aes(x=factor(Time), y=demand)) +geom_bar(stat = "identity", fill="orange", colour = "red")



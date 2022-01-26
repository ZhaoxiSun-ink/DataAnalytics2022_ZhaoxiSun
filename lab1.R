#help("data.frame")
days <- c('Mon','Tue','Wed','Thur','Fri','Sat','Sun')
temp <- c(28,30.5,32,31.2,29.3,27.9,26.4)
snowed <- c('T','T','F','F','T','T','F')
RPI_Weather <- data.frame(days,temp,snowed)

RPI_Weather
head(RPI_Weather)
str(RPI_Weather)
summary(RPI_Weather)

RPI_Weather[1,]
RPI_Weather[,1]

RPI_Weather[,'snowed']
RPI_Weather[,'days']
RPI_Weather[,'temp']
RPI_Weather[1:5,c("days","temp")]
RPI_Weather$temp
subset(RPI_Weather,subset = snowed==TRUE)

sorted.snowed<-order(RPI_Weather['snowed'])
sorted.snowed
RPI_Weather[sorted.snowed,]

dec.snow<-order(-RPI_Weather$temp)
dec.snow
empty.DataFrame <- data.frame()
v1<-1:10
v1
letters
v2<-letters[1:10]
df<-data.frame(col.name.1=v1,col.name.2=v2)
df
write.csv(df,file='saved_df1.csv')
df2<-read.csv('saved_df1.csv')
df2

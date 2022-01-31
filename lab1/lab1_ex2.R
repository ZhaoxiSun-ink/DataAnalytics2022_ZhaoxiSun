EPI_data<-read.csv(file.choose())
View(EPI_data)
attach(EPI_data)
fix(EPI_data)
EPI<-EPI_data$EPI
EPI_South_Asia <- EPI[EPI_data$EPI_regions == "South Asia"]
summary(EPI_South_Asia)

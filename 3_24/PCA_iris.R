data("iris")
head(iris)
irisdata1 <- iris[,1:4]
irisdata1
head(irisdata1)
components <- princomp(irisdata1, cor = TRUE, score = TRUE)
summary(components)
plot(components)
plot(components, type = "l")
biplot(components)

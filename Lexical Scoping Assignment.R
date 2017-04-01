library(datasets)
data(iris)
iris
vir <- iris[101:150, ]
head(vir)
mean(vir$Sepal.Length)

apply(iris[, 1:4], 2, mean)

library(datasets)
data(mtcars)
mtcars
with(mtcars, tapply(mpg, cyl, mean))
tapply(mtcars$cyl, mtcars$mpg, mean)
sapply(split(mtcars$mpg, mtcars$cyl), mean)
apply(mtcars$mpg, mtcars$cyl, mean)
tapply(mtcars$mpg, mtcars$cyl, mean)

tapply(mtcars$hp, mtcars$cyl, mean)

debug(ls)
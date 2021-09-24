library(tidyverse)
data(mtcars)
str(mtcars)

#select only car models where mpg<20
mtcars_mpg2 <- mtcars[mtcars$mpg < 20,]

#reduce vars to mpg, cyl, disp, hp, gears
mtcars_mpg2 <- mtcars_mpg2[, c(1,2,3,4,10)]

#Added this to source from the hand_functions.R script so we can have
#our sum_special function 
if(!exists("sum_special", mode = "function"))
  source("hand_functions.R")


#tests
sp_out <- sum_special(mtcars_mpg2)

sp_out
sp_out$sp_means




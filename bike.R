library(rio)
library(dplyr)

## The import function in the rio package reads zip files seamlessly.
bike <- import("citibike.zip", fread=TRUE)
gender <- table(bike$gender)

prop.test(gender["1"], sum(gender))
t.test(bike$`birth year`)

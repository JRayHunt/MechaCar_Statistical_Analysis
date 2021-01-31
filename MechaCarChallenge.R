library(tidyverse)
#load csv data
MechaCar_DF <- read.csv('MechaCar_mpg.csv')
#get data to get the six columns
Vehicle_Length = MechaCar_DF$vehicle_length
Vehicle_weight = MechaCar_DF$vehicle_weight
Spoiler_angle = MechaCar_DF$spoiler_angle
Ground_clearance = MechaCar_DF$ground_clearance
AWD = MechaCar_DF$AWD
mpg = MechaCar_DF$mpg
# perform multi linear regression & summarize
# summary(lm(qsec ~ mpg + disp + drat + wt + hp,data=mtcars))
summary(lm(mpg ~ Vehicle_Length + Vehicle_weight + Spoiler_angle + Ground_clearance + AWD, data = MechaCar_DF))
# R-squared = 0.7149
# p-value = 5.35e-11
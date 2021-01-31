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

#Deliverable 2
Suspension_Coil_DF <- read.csv('Suspension_coil.csv')
# Generate summary statistics for psi column
# first get psi
psi = Suspension_Coil_DF$PSI
# summarize_demo <- demo_table2 %>% group_by(condition) %>% summarize(Mean_Mileage=mean(odometer), .groups = 'keep') #create summary table
total_summary <- Suspension_Coil_DF  %>%
  summarize(Mean=mean(psi),Median=median(psi),Variance=var(psi),SD=sd(psi), .groups = 'keep')  #psi
lot_summary <- Suspension_Coil_DF  %>% group_by(Manufacturing_Lot) %>% summarise(Mean=mean(psi),Median=median(psi),Variance=var(psi),SD=sd(psi), .groups = 'keep')  

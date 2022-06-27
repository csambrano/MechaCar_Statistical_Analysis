# Deliverable 1
library(dplyr)
library(tidyverse)
mpg_table <- read.csv(file='C:\\Users\\cyril\\UCD_DA\\Module_Exercise_Files\\Module_15\\MechaCar_Statistical_Analysis\\MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mpg_table)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mpg_table))

# Deliverable 2

suspension_table <- read.csv(file='C:\\Users\\cyril\\UCD_DA\\Module_Exercise_Files\\Module_15\\MechaCar_Statistical_Analysis\\Suspension_Coil.csv',check.names = F,stringsAsFactors = F)
total_summary <- suspension_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
lot_summary <- suspension_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep')

# Deliverable 3


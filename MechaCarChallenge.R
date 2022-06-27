# Deliverable 1
library(dplyr)
library(tidyverse)
mpg_table <- read.csv(file='C:\\Users\\cyril\\UCD_DA\\Module_Exercise_Files\\Module_15\\MechaCar_Statistical_Analysis\\MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mpg_table)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mpg_table))

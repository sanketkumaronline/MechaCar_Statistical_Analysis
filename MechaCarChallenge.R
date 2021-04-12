library(dplyr)
MechaCar_df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors=F)  # Reading the CSV file into DataFrame
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_df) # Multiple Linear Regression on all variables
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_df)) # Summary of Linear Regression

SuspCoil_data <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors=F) # Reading the second CSV file into DataFrame
total_summary <- SuspCoil_data %>% summarise(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI)) # Summary of all the lots
lot_summary <- SuspCoil_data %>% group_by(Manufacturing_Lot) %>% summarise(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI)) # Summary according to lot

t.test(SuspCoil_data$PSI,mu=1500) # T-test accross all the lots
t.test(subset(SuspCoil_data, Manufacturing_Lot=='Lot1')$PSI,mu=1500) # T-test for Lot1
t.test(subset(SuspCoil_data, Manufacturing_Lot=='Lot2')$PSI,mu=1500) # T-test for Lot2
t.test(subset(SuspCoil_data, Manufacturing_Lot=='Lot3')$PSI,mu=1500) # T-test for Lot3
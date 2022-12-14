library(dplyr)

# import CSV file
MechaCar_mpg <- read.csv(file='./Data/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# Perform linear regression using lm() function.
Mecha_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg)
Mecha_lm

# veiw using summary
summary(Mecha_lm)

# view R-squared
summary(Mecha_lm)$r.squared

##### Deliverable 2 #####
# import CSV file
Suspension_Coil <- read.csv(file='./Data/Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

# create a summary table for suspension coils
total_summary <- Suspension_Coil %>%
  summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), Std_Dev=sd(PSI))
total_summary

# view by lots using group_by
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>%
  summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), Std_Dev=sd(PSI))
lot_summary

##### Deliverable 3 ######
t.test(Suspension_Coil$PSI, mu=1500)

# t.test by lots
# Lot 1 
t.test(subset(Suspension_Coil, Manufacturing_Lot=="Lot1")$PSI, mu=1500)

# Lot 2
t.test(subset(Suspension_Coil, Manufacturing_Lot=="Lot2")$PSI, mu=1500)

# Lot 3
t.test(subset(Suspension_Coil, Manufacturing_Lot=="Lot3")$PSI, mu=1500)

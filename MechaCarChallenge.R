#Load libraries
library(dplyr)
library(readr)

#Import MechaCar csv file
mechacar_table <- read.csv(file="Resources/MechaCar_mpg.csv", check.names=F,stringsAsFactors = F)
View(mechacar_table)

#Perform liner regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_table)

#Determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_table))

#Import Suspension_coil csv file
suspension_table <- read_csv(file="Resources/Suspension_Coil.csv")
View(suspension_table)

#Get the mean, median, variance, and standard deviation
suspension_summary <- suspension_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
View(suspension_summary)

#Group each manufacturing lot by the mean, median, variance, and standard deviation
lot_summary <- suspension_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')
View(lot_summary)

#Determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
t.test(suspension_table$PSI, mu=1500)

#Determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch
Lot1 <- subset(suspension_table, Manufacturing_Lot=='Lot1')
Lot2 <- subset(suspension_table, Manufacturing_Lot=='Lot2')
Lot3 <- subset(suspension_table, Manufacturing_Lot=='Lot3')

t.test(Lot1$PSI, mu=1500)
t.test(Lot2$PSI, mu=1500)
t.test(Lot3$PSI, mu=1500)

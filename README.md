# MechaCar_Statistical_Analysis

## Project Overview

AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. In order to help the team in this project I performed a multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes, collected summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots, ran t-tests to determine if the manufacturing lots are statistically different from the mean population and designed a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. 

## Resources

- Data Source: MechaCar_mpg.csv and Suspension_Coil.csv
- Data Tools: ggplot2, tidyverse, and dplyr
- Software: RStudio and R

## Results

### Linear Regression to Predict MPG

![image](https://user-images.githubusercontent.com/91766276/153941802-a41ff45e-374f-454e-8d5f-0e0b1e53a9f0.png)

- *Vehicle Lenght* and *Ground Clearance* are statistically unlikely to provide random amounts of variance to the linear model. In other words, *Vehicle Length* and *Ground Clearance* have a significant impact on miles per gallon on the MechaCar prototype. On the other hand, the p-values for *Vehicle Weight, Spoiler Angle and AWD* indicate that they provide random amounts of variance to the model.
- The **p-value is 5.35e-11** which is much smaller than the assumed significance level of **0.05%**. Therefore, there is sufficient evidence to reject the null hypothesis, which means that the slope of the linear model is not zero.
- The r-squared value for this model is **0.7149** which means that roughly **71%** of the variablilty of the dependent variable **(MPG)** is explained using this linear model. That is to say, the multuple regression model does predicts the MPG of MechaCar prototypes effectively.


### Summary Statistics on Suspension Coils


*(The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch).* 

![image](https://user-images.githubusercontent.com/91766276/153949058-35325195-83bf-4c67-a067-955c641e15bf.png)

- Looking at the total for all manufacturing lots the variance of the suspensioni coils is **62.3** which means that they meet the design specification.

![image](https://user-images.githubusercontent.com/91766276/153950252-a21faea7-8d24-45a9-82e6-da4ebbc8835b.png)

- However, looking at each lot individually, lots 1 and 2 meet the design specification with **0.98** and **7.47** variance respectively but lot 3 is showing a significant higher variance of **170.29** which exceeds the variance requirement.

### T-Tests on Suspension Coils

![image](https://user-images.githubusercontent.com/91766276/153954770-27d17fb3-23c9-440e-939f-b4dd06f9f582.png)

- The mean for all three manufacturing lots is **1498.78** and the p-value is **0.06028** which is higher than the common significance 0.05 percent. Therefore, there is not sufficient evidence to reject the null hypothesis, and the lots' mean is statistically similar to the presumed population mean which is 1500.

![image](https://user-images.githubusercontent.com/91766276/153956345-d277704f-9273-440d-8c8f-30a8023f7d23.png)

- Analizing each lot separetly, Lot 3 is again the one with different results, its **p-value 0.4168** is lower than the common significance 0.05 percent. This to say, there is sufficient evidence to reject the null hypothesis, and the lot's mean is not statistically similar to the presumed population mean which is 1500.
- On the other hand, Lot 1 and Lost 2 have p-values of **1** and **0.6072** respectively. This means there is not sufficient evidence to reject the null hypothesis for any of this two lots and their means are statistically similar to the presumed population mean of 1500.

## Study Design: MechaCar vs Competition

Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating. 
In your description, address the following questions:
What metric or metrics are you going to test?
What is the null hypothesis or alternative hypothesis?
What statistical test would you use to test the hypothesis? And why?
What data is needed to run the statistical test?

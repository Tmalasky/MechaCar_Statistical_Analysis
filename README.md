# MechaCar_Statistical_Analysis
Demo of using RStudio statistical test capabilities.

## Background
A few weeks after starting his new role, Jeremy is approached by upper management about a special project. AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.

Deliverable 1: Linear Regression to Predict MPG
Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes


![Mecha_Car_Linear_Model_Summary](https://user-images.githubusercontent.com/105253626/193361893-e434fad6-b18d-47f3-ad40-68054255c864.png)

Q1- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
- Methodology: Each Pr(>|t|) value in the summary (above) represents the probability that each coefficient contributes a random amount of variance to the linear model.
A1- Using the MechaCar_mpg dataset, vehicle_length and ground_clearance (as well as intercept) are statistically unlikely to provide random amount of variance to the linear model. In other words the vehcicle_length and ground_clearance have a significant impact on mpg.

Deliverable 2: Summary Statistics on Suspension Coils
Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots

Deliverable 3: T-Test on Suspension Coils
Run t-tests to determine if the manufacturing lots are statistically different from the mean population

Deliverable 4: Design a Study Comparing the MechaCar to the Competition
Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

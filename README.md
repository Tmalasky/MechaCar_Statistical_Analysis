# MechaCar_Statistical_Analysis
Demo of using RStudio statistical test capabilities.

## Background
A few weeks after starting his new role, Jeremy is approached by upper management about a special project. AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.

Deliverable 1: Linear Regression to Predict MPG
Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes


![Mecha_Car_Linear_Model_Summary](https://user-images.githubusercontent.com/105253626/193361893-e434fad6-b18d-47f3-ad40-68054255c864.png)

- Q1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
- Methodology: Each Pr(>|t|) value in the summary (above) represents the probability that each coefficient contributes a random amount of variance to the linear model.

- A1. Using the MechaCar_mpg dataset, vehicle_length and ground_clearance (as well as intercept) are statistically unlikely to provide random amount of variance to the linear model. In other words the vehcicle_length and ground_clearance have a significant impact on mpg.

- Q2. Is the slope of the linear model considered to be zero? Why or why not?

- Methodology: Examine the Pr(>|t|) value in the summary above for the (Intercept).

- A2. The intercept is statistically significant (less than the 0.05) and not zero. This would indicate that the intercept term explains a significant amount of variability in the dependent variable when all independent variables are equal to zero. It could mean that the significant features (such as vehcicle_weight and ground_clearence) may need scaling or transforming to hrlp improve the predicitive power of the model; or there are other variables that can help explain the variability of our dependent variable (mpg) that have not been included in our model.

- Q3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

-  Methodology: Examine the Multiple R-squared value to indicate how well the regression model approximates real-world data points.In most cases, the value will range between 0 and 1 and can be used as probability metric to determine the likelihood that future data points will fit the model.

- A3. The Multiple R-squared value is 0.71 (while the p-value remained significant (very small) indicating the model does an adequate job of predicting mpg.

Deliverable 2: Summary Statistics on Suspension Coils
Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots

![Screen Shot 2022-09-30 at 6 17 58 PM](https://user-images.githubusercontent.com/105253626/193365152-0267148f-9591-459c-9395-8936a31447d2.png)

![Screen Shot 2022-09-30 at 6 43 07 PM](https://user-images.githubusercontent.com/105253626/193366145-3458606b-d3c2-4aa4-ba83-4d16ae235b42.png)

- Q1. The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

- Methodology: Examine the mean, median and variance in total (total_summary) to determine if the variance is within the 100 pounds per square inch.

- A1. In total the specification are met with variance of 62.29 (less than 100).
- A2. By Lots, Lots 1 & 2 are within specifications; however Lot 3 has a variance that exceeds specifications (100 PSI).

Deliverable 3: T-Test on Suspension Coils
Run t-tests to determine if the manufacturing lots are statistically different from the mean population

- Q1.Are all manufacturing lots (and each lot individually) statistically different from the popluation ,eam of 1,500 pounds per square inch.
- Methodology (all manufacturing lots): Perform a t.test using PSI and muof 1500 and evaluate the resulting p-value for significance using a .05 level of significance.

![Screen Shot 2022-09-30 at 6 58 34 PM](https://user-images.githubusercontent.com/105253626/193367618-312abd43-562f-41dc-b093-b71f8a173d36.png)

- All Lots are not significantly different from the population mean (with a p-value of 0.060).

- Methodology (by lots usig subsets): Perform a t.test using subsets to examine the resulting p-value for significance.

- Lot 1 is not significantly different from the population mean(with a p-value of 1)

![Screen Shot 2022-09-30 at 6 58 52 PM](https://user-images.githubusercontent.com/105253626/193367795-8a8e2a2d-77b2-401f-87de-5cac674bbc05.png)

- Lot 2 is not significantly different from the population mean (with a p-value of 0.61)
 
 ![Screen Shot 2022-09-30 at 6 59 14 PM](https://user-images.githubusercontent.com/105253626/193367883-16da732a-681a-4440-b9ab-f79254c442d4.png)
 
- Lot 3 is significantly different from the population mean (with a p-value of 0.042)

![Screen Shot 2022-09-30 at 6 59 29 PM](https://user-images.githubusercontent.com/105253626/193367966-5a550187-f751-4aff-9bc7-7c01adc35c2e.png)


Deliverable 4: Design a Study Comparing the MechaCar to the Competition
- An additional metric )not in the MechaCar_mpg dataset) is horsepower (or a surrogate measure liek engine size or number of cylinders). Manufactors often note a smaller engine size (8 vs 6 vs 4) result in imporved mpg.
- The Null hypothesis would be there is no statistical difference while the Alternative hypothesis would be there is a difference.

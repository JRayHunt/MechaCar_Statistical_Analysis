# MechaCar_Statistical_Analysis
Review the production data for insights that may help the manufacturing team improve the prouction issues for AutosRUs’ newest prototype the MechaCar.

## Summary
### Deliverable 1: Linear Regression to Predict MPG
Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
1. Vehicle length and ground clearance (as well as intercept)  have coefficients that demonstrate they provide a non-random amount of variance to the mpg values in the dataset. We know this because their p-values are significantly smaller than 0.05%, vehicle lenght p-value is 2.60e-12 and ground clearance p-value is 5.21e-08.
2. Is the slope of the linear model considered to be zero? No, because if you add up the coefficients for each variable it does not equal zero. Slope would equal about 14.
3. Does this linear model predict mpg of MechaCar prototypes effectively? Our r-squared value is significant at 0.7149 therevore this model is good at predicting mpg. However, because intercept is a  significant coefficient value there is a likelihood that the model is overfitted to the data and we are missing some valuable variables.

### Deliverable 2: Summary Statistics on Suspension Coils
Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots

### Deliverable 3: T-Test on Suspension Coils
Run t-tests to determine if the manufacturing lots are statistically different from the mean population

### Deliverable 4: Design a Study Comparing the MechaCar to the Competition
Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

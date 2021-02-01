# MechaCar_Statistical_Analysis
Review the production data for insights that may help the manufacturing team improve the prouction issues for AutosRUs’ newest prototype the MechaCar.

# Summary
## Linear Regression to Predict MPG
Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
1. Vehicle length and ground clearance (as well as intercept)  have coefficients that demonstrate they provide a non-random amount of variance to the mpg values in the dataset. We know this because their p-values are significantly smaller than 0.05%, vehicle lenght p-value is 2.60e-12 and ground clearance p-value is 5.21e-08.
2. Is the slope of the linear model considered to be zero? No, because if you add up the coefficients for each variable it does not equal zero. Slope would equal about 14.
3. Does this linear model predict mpg of MechaCar prototypes effectively? Our r-squared value is significant at 0.7149 therevore this model is good at predicting mpg. However, because intercept is a  significant coefficient value there is a likelihood that the model is overfitted to the data and we are missing some valuable variables.
## Linear Regression Results
![image1](/Resources/image1.PNG)

# Summary Statistics on Suspension Coils
Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots

According to our analysis the variance suspsension coils does not exceed 100 psi for all manufactionring lots total nor does it exceed 100psi for any lots individually
#### Total Summary 
![totalsummary](/Resources/totalsummary.PNG)
#### Lot Summary
![lotsummary](/Resources/lotsummary.PNG)

## T-Tests on Suspension Coils
We ran t-tests to determine if the manufacturing lots are statistically different from the mean population and they are not. We know this because the
p-value in our first test is 0.1328, well above or significance level and we do not have sufficient evidence to reject the null hypothesis. We would state that the two means are statistically similar.
#### T-test results:
First t-test for sample table versus population:
![t-test1](/Resources/t-test1.PNG)

For the next t-tests analysis we ran t-test for every individual manufacturing lot against the population to determine if they are statistically different. For only lot 2, with a p-value of 0.05797, is it even close to failing the null hypothesis. But looking at the t-test results for lot 1 and lot 3 with p-values of 0.06302 and 0.1776 respectively, we can confidently say that we cannot fail the null hypothesis and there is no statistical difference between the individual lots and the total population. All manufacturing lots are statistically similar to the total population.

The individual mfglot vs pop t-tests:
![mfg1](/Resources/mfg1.PNG)
![mfg2](/Resources/mfg2.PNG)
![mfg3](/Resources/mfg3.PNG)

## Study Design: MechaCar vs Competition
Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

What metric or metrics are you going to test?
highway fuel efficiency 

The null hypothesis is that there is no statistical difference between the highway fuel efficiency (mpg) amongst similar vehicles models from different car manufacturers. And that any difference is due to random chance.
The alternate hypothesis is that there are statistical differences between highway fuel efficiency amongst car mafufacturers.

We would start by gathering data from multiple car manufacturers for a single model/type of vehicle like a mid-size crossover.

Next, we would perform multiple t-tests on sample data for each manufacturers highway fuel efficiency compared to the total population. This would allow us to understand if our data sets were statistically different. 

Alternatively, we could use a two-way ANOVA test using multiople variables from different manufactures such as vehicle mileage, maintenance history and utilizations (city or highway miles).

Assuming they are not statistically different we would move forward with those datasets in our analysis.

Using data from each car manufacturer we would then need a coefficient matrix to understand if we had all of the variables (body length, car weight and horsepower) that contributed to statistical differences in highway fuel efficiency. 

After obtaining all of the variables that have a high correlation to highway fuel efficiency we could then run multi-linear regression to test a model to predict how a manufacturers changing those variables would increase fuel efficiency. We would want a model with a high r-squared value to feel confident.

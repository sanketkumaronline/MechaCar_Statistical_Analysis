# MechaCar Statistical Analysis

## Linear Regression to Predict MPG

![Liner Regression Summary](./Images/summary-lm.PNG)

Vehicle Length *(vehicle_length)* and Ground Clearance *(ground_clearance)* provide a non-random variance to the *mpg* values in the dataset as their Pr(>|t|) values are very small. I.e., 2.60e-12 and 5.21e-08. Hence, these two variables have very low probability of contributing a random amount of variance. In other words Vehicle Length and Ground Clearance have significant impact on mpg of the vehicle. Also, the Vehicle Weight (vehicle_weight) has Pr(>|t|) of 0.076 which is close to 0.05.  Therefore, Vehicle Weight can also provide some non-random variance but the impact is not as significant as above mentioned variables.

The *p*-value of linear regression analysis is 5.35e-11 which is much lower than out assumed significance level of 0.05. Therefore, there is enough evidence to reject the null hypothesis which state that "The slope of the linear model is zero, or m = 0". This means the slope of lienal model is not zero.  

Since the *r-squared (r2) value* (aka coefficient of determination) for the linear regression is 0.7149, it shows that there is high likelihood that future data points will fit the linear model. In other words, this linear model does predict mpg of MechaCar prototypes effectively.


## Summary Statistics on Suspension Coils

### Total Summary
![Total Summary](./Images/total-summary.PNG)

### Lot Summary
![Lot Summary](./Images/lot-summary.PNG)

The variance for all lots combined is 62.29 which is withing the 100 pounds per square inch limit specified in the design specification. However, looking at the variance for individual lots, the variance for *Lot3* is 170.28. This is more than the maximum variance of 100 psi specified in the design specification. 

Therefore, the current manufacturing data meet this design specification for all manufacturing lots in total. However, considering all lots individually, Lot3 does not meet the design specification.    

## T-Tests on Suspension Coils

1. When running a T-Test (t.test() fuction) for determining if PSI across all manufacturing lots with the statistically different from the population mean of 1,500 PSI, we get p-value of 0.06028 and t-value of -1.8931. Since p-value is close to significance value of 0.05, we can assume that we have enough evidence to reject the null hypothesis. *This means that there is a statistical difference between the PSI across all manufacturing lots and the population mean of 1500. Although the difference is not large.* The relatively large t-value also supports this conclusion.

    ![T-Test for All Lots](./Images/all-ttest.PNG)



2. When running a T-Test for determining if mean PSI for **Lot1** is statistically different from the population mean of 1,500 PSI, we get p-value of 1 and t-value of 0. *This means that mean of PSI for Lot1 is exactly the same as the population mean of 1500.*

    ![Lot1 T-Test](./Images/lot1-ttest.PNG)

3. When performing a T-Test for determining if mean PSI for **Lot2** is statistically different from the population mean of 1,500 PSI, we get p-value of 0.6072 and t-value of 0.51745. Since p-value is greater than significance value of 0.05, we don't have enough evidence to reject the null hypothesis. *This means that there is no statistical difference between the mean of PSI for Lot2 and the population mean of 1500.* The relatively small t-value also supports this conclusion.

    ![Lot2 T-Test](./Images/lot2-ttest.PNG)

4. When performing a T-Test for determining if mean PSI for **Lot3** is statistically different from the population mean of 1,500 PSI, we get p-value of -2.0916 and t-value of 0.04168. Since p-value is less than significance value of 0.05, we have enough evidence to reject the null hypothesis. *This means that there is a statistical difference between the mean of PSI for Lot2 and the population mean of 1500.* The large t-value also supports this conclusion.

    ![Lot3 T-Test](./Images/lot3-ttest.PNG)

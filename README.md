# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

<img width="503" alt="Screen Shot 2022-05-21 at 2 04 43 PM" src="https://user-images.githubusercontent.com/92544151/169665557-70cca477-ad9c-43ae-bbaf-17d8f4409842.png">

The image shows that the p-values (Pr(>|t|)) for vehicle length and ground clearance are below the significance level of 0.05. This means that the two variables provide **non-random** amount of variance. The p-value for the multiple regression line is 5.35e-11. This is also below the significance level of 0.05, indicating that the relationship between the variables is **non-random**, and the slope of the linear model is not equal to zero. 

The "multiple r-squared" value is 0.7149. This suggests that the variables used, vehicle_length, vehicle_weight, spoiler_angle, ground_clearance and AWD can explain 71.49% of variations in the model. Even though this value is high, the lack of statistically significant variables (only 2 out of 5) is evidence of overfitting - even though the model performs well for this dataset, it might not be good for future use with new datasets. 

## Summary Statistics on Suspension Coils

total_summary dataframe (summary statistics for the whole dataset):

<img width="333" alt="Screen Shot 2022-05-21 at 2 24 44 PM" src="https://user-images.githubusercontent.com/92544151/169669601-7165f18d-c801-4f93-9579-677dfe201f6e.png">

lot_summary dataframe (summary statistics for each lot):

<img width="490" alt="Screen Shot 2022-05-21 at 2 27 57 PM" src="https://user-images.githubusercontent.com/92544151/169669619-310b12bd-8088-427a-985b-fe87aa8ae26a.png">

The design specifications dictate that the variance of suspension coils must not exceed 100 pounds per square inch (psi). On first glance, the variance for the whole dataset seems to be below 100 psi (62.29 psi in total_summary dataframe). When grouping by the lot number though, it can be seen that the variance for lot3 exceeds the limit in design specifications (170.27 psi). 

## T-Tests on Suspension Coils

One Sample t-test for complete dataset:

<img width="418" alt="Screen Shot 2022-05-21 at 2 30 06 PM" src="https://user-images.githubusercontent.com/92544151/169669795-02d4492c-cf8f-47cf-a8d5-80a108a170db.png">

The p-value for the psi on all lots combined is 0.06 when compared to the population mean, which is greater than the significance level of 0.05. This means that the results are not statistically significant (cannot reject the null hypothesis) and the means are similar. 

One Sample t-test for lot1, lot2 and lot 3:

<img width="420" alt="Screen Shot 2022-05-21 at 2 33 58 PM" src="https://user-images.githubusercontent.com/92544151/169669960-2e5f7005-e85d-4f12-ac01-39e1299e21f1.png">

<img width="416" alt="Screen Shot 2022-05-21 at 2 34 08 PM" src="https://user-images.githubusercontent.com/92544151/169669977-6ec516f2-c1fa-4a04-8c45-be3ebef564e5.png">

<img width="418" alt="Screen Shot 2022-05-21 at 2 34 22 PM" src="https://user-images.githubusercontent.com/92544151/169669976-c639850d-a02f-4d2a-a52c-efba3ff70019.png">

The p-values for lot1, lot2 and lot3 are 1, 0.6072 and 0.04168 respectively. The former two values are greater than 0.05 and thus their means are statistically similar to the population mean of 1500. The latter p-value (0.04168) is statistically significant and it can be said that the mean for lot3 is statistically different than 1500. 

## Study Design: MechaCar vs Competition

Statistical study that can quantify how the MechaCar performs against the competition.

### Metrics of interest: 

Fuel efficiency in city vs highway - miles per gallon 

Safety rating 

### Hypotheses:

Null hypothesis: There is no statistically significant difference in distribution means for fuel efficiency and safety rating between MechaCar and competition. 
Alternate hypothesis: There is a statistically significant difference in fuel efficiency and safety rating between MechaCar and competition.

Significance level: 0.05

### Statistical test: 

One Way Analysis of Variance (ANOVA) Test

We can test the means of a single dependent variable across a single independent variable with multiple groups (fuel efficiency or safety rating in this case).

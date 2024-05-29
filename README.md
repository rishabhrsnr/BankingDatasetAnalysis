
# Banking Dataset Analysis

## Project Overview
This project analyzes a banking dataset containing 45,211 observations and 17 columns. The objective is to answer several key questions related to the data.

## Objectives
- Analyze the connection between education and balance.
- Determine which profession has taken out the greatest loan by analyzing the association between profession and debt.
- Identify and analyze outliers in the balance.
- Compare the average balance of married individuals with primary and secondary education.
- Identify which form of education has the greatest balance in the account.

## Dataset Description
The dataset contains the following columns:
- Age
- Job
- Marital
- Education
- Default
- Balance
- Housing
- Loan
- Contact
- Day
- Month
- Duration
- Campaign
- Pdays
- Previous
- Poutcome
- Deposit

## Analysis
### Loan Amount Box Plot
The box plot describes the balance columns in the dataset. The maximum balance is 102,127 and the minimum is -8,019, with a median balance of 448.

### Frequency of Jobs
This table shows the number of people in each job profile, with 'blue-collar' and 'management' having the highest number of people.

### Balance and Duration Based on Job
Calculated the average values of balance and duration according to job profiles, visualized using bar plots.

### Regression Analysis
Performed regression analysis to study the relationship between age and balance.

### Hypothesis Testing
Conducted 1-sample and 2-sample t-tests to compare the average balances and durations based on different education levels.

## Results
- Significant positive correlation between age and balance.
- Different professions exhibit varying levels of loan amounts and balances.
- Hypothesis tests indicate that the average balance of married individuals with primary education differs from those with secondary education.

## Conclusion
This analysis provides insights into the banking data, revealing trends and relationships that can inform business decisions and strategies.

## References
- [GGTTEST: Student's t-test plot](https://www.rdocumentation.org/packages/gginference/versions/0.1.3/topics/ggttest)
- [Dealing with color in GGPLOT2](https://r-graph-gallery.com/ggplot2-color.html)
- [Subsetting Data](https://www.statmethods.net/management/subset.html)

## Contact Information
For any questions or feedback, please reach out to me at:
- Email: bansal.ris@northeastern.edu
- LinkedIn: [Rishabh Bansal](https://www.linkedin.com/in/rishabhrsnr)

# Covid-19-Case-Study
### Objective :
The objective of this project is to analyze and interpret COVID-19 data across various countries and continents, focusing on vaccination rates, infection likelihood, death rates, and the impact of the pandemic over time. The analysis aims to identify key trends and insights that can inform public health strategies and provide a clearer understanding of the pandemic's global impact. Using SQL for data manipulation and querying, this project aims to generate detailed reports and visualizations that emphasize key elements of the COVID-19 pandemic.

### Objectives:
The primary objectives of this case study are:
* Vaccination and Death Rate Analysis: Examine year-wise vaccination and death rates to assess the effectiveness of vaccination efforts.
* Vaccination Coverage: Identify and rank countries by the percentage of their fully vaccinated population.
* Infection Likelihood: Compare COVID-19 cases to population size to determine the likelihood of infection in various countries.
* Continent-Wise Impact: Analyze COVID-19's spread and impact across continents, focusing on cases, deaths, and vaccination progress.
* Death Rate Analysis: Identify locations with the highest death rates relative to their population and compare them with global averages.
* Global Comparison: Highlight countries with death rates above the global average to inform targeted public health interventions.

### Case study :
This case study consists of two distinct datasets:  
The first dataset Case_detail consists of Covid-19 pandemic case records in different countries.  
The second dataset Vacc_detail contains the Vaccination records and the Death records.  
The Case_detail dataset contains records of COVID-19 cases, including the total number of cases, new cases, total deaths, and new deaths across various countries. The Vacc_detail dataset provides information on vaccination rates, the number of people vaccinated, and associated death records. 

### Data Preparation
Date Formatting: One of the challenges faced during the analysis was the non-standard date format in the raw data. The dates were originally in "dd-mm-yy" format, which was not compatible with SQL's date format ("YYYY-MM-DD"). The dates were converted to the appropriate format using Excel before being imported into MySQL.


### Year-wise Vaccination Percentage:
-> In 2020 many covid 19 vaccine clinical trials are in process.
-> On 2 December 2020, the United Kingdom gave temporary regulatory approval for the Pfizer–BioNTech vaccine, becoming the first country to approve the vaccine.
-> Till Dec 2022 more than 63% of vaccines have been done around the world!


![image](https://user-images.githubusercontent.com/82544165/208044361-702fd9d5-109e-43ff-b08e-b349ccd6b913.png)



### Fully Vaccination Rate Based On The Highly Populated Countries:
-> The country in dark red has a high vaccination rate, which includes China, India, the United States, etc.
-> The country in light red has moderate vaccination rates, which includes Egypt, Nigeria, etc.
-> The country is lighter shade has a Lower vaccination rate, which includes Senegal, Cameroon, etc.

![image](https://user-images.githubusercontent.com/82544165/208041875-42467b2c-9257-499d-9fc5-6b5fae14e6ae.png)

### Infection Rates:
->The country in dark green has a high infection rate, which includes Cyprus, San Marino, the United States, India, Brazil, Russia, etc.
-> The country in light green has moderate infection rates which include Poland, Taiwan, etc.
-> The country in the yellow shade has a Lower infection rate, which includes Niger, Yemen, etc.

![image](https://user-images.githubusercontent.com/82544165/208042042-543f9d49-74b8-4d6b-b534-3e2c216cf3fc.png)

### Continent Wise Report:
-> Continent wise Asis has Highest Population, Moderate covid cases, and deaths because Asians are almost fully vaccinated.
-> North America has low vaccination rates which is the reason for high cases and deaths.
-> Africa’s COVID-19 mortality rate is, ironically, lower than that of more advanced countries with better health systems.
-> Oceania has the lowest population rate, so naturally cases, death rates, and vaccination rates are almost low.

![image](https://user-images.githubusercontent.com/82544165/208042238-5f8778f5-97a5-46f5-9625-2a0ce4befd10.png)

### Location Wise Death Rate:
-> The country in dark red has a high death rate, which includes Peru, Bugaria etc.
-> The country in light red has moderate death rates, which includes Canada, Libya etc.
-> The country is lighter shade has a Lower Death rate, which includes Congo, Algeria etc.
![image](https://user-images.githubusercontent.com/82544165/208042425-6be79420-a70f-48a1-ab35-25162264f742.png)

### Country-Wise Higher Death Rate Than The Global Death Rate
-> This bubble graph represents Country wise higher death rate than global death rate.
-> Bigger bubble refers those countries which has higher death rate than global death rate, i.e Peru.
->  Gibraltar rank 10th among the top 10 countries which has higher death rate than global death rate.

![image](https://user-images.githubusercontent.com/82544165/208043840-cdd9466f-2f6e-4c42-a5b5-ede94fb73a1d.png)

### Conclusion 
This case study highlights the critical role of data analysis in understanding the spread and impact of the COVID-19 pandemic. By examining case records and vaccination data, this analysis provides valuable insights into how different regions have been affected and the effectiveness of public health measures. The findings underscore the importance of continued monitoring and analysis as the pandemic evolves, guiding efforts to mitigate its impact and protect public health.


                                                          
                                                                             Thank You!

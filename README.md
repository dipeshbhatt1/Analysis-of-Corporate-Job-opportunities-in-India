# <img src="Media Files/job_search.jpg" width="30" height="47"> Analysis of Corporate Job opportunities in India <img src="Media Files/job_vacancy.jpg" width="65" height="50">
<img src="Media Files/jobs.jpg" width="330" height="220"> <img src="Media Files/one_stop_solution.jpg" width="470" height="220">
 <br>

## 📝 Description
* This repository represents **"An in-depth analysis of current job opportunities in the corporate sector in India"**
* The analysis has been done through aggregations on MySQL and Visualisation on PowerBI
* With the help of this project we can get useful incites on the companies and industries hiring most aggressively, the best locations, and the skills most sought after by recruiters.

## ⏳ Dataset 
* Data of over 500 job openings was extracted from instahyre.com
* After performing data cleaning and modification on the raw data we were able to create 4 separate datasets namely jobs, companies, locations, and skills
* Download the datasets:
  https://github.com/dipeshbhatt1/Analysis-of-Corporate-Job-opportunities-in-India/tree/main/Datasets

## 🏽‍ Download Dashboard file:
- Download the model file from the following Link
- https://github.com/dipeshbhatt1/Price-Prediction-of-Pre-Owned-Cars/blob/main/Python%20Codes%20(in%20ipynb)/C-analysis-and-model.ipynb

## :desktop_computer:	Installation

### :hammer_and_wrench: Requirements
```bash
  * Python 3.7+
  * IDE (Jupyter Notebook, VS Code, Spyder, etc)
  * selenium and other python libraries like numpy and pandas
  * Web Driver (Chrome, Firefox, Edge, Safari, etc)
  * MySQL Workbench
  * Microsoft PowerBI Desktop
```
    
## :gear: Setup
1. Install the latest version of Python:
    https://www.python.org/downloads/
2. If pip is not installed, you can follow the instructions:
    https://pip.pypa.io/en/stable/installing/
3. Install Jupyter using command prompt:
```bash
    pip install jupyter
```
4. Install Python libraries viz. pandas, seaborn, selenium, time, one by one using the command prompt, for instance:
```bash
    pip install pandas
```
5. Once you have these all, launch the Jupyter Notebook using the command prompt:
```bash
    jupyter notebook
```
6. Install MySQL Workbench:
   https://dev.mysql.com/downloads/workbench/
7. Install Microsoft PowerBI Desktop:
   https://powerbi.microsoft.com/en-us/desktop/ or through Microsoft Store
9. Now you can start working on the project using the given Python codes and datasets

## <img src="Media Files/steps3.png" width="45" height="40"> Steps Involved

1. **Objective:** To perform an in-depth analysis on the current job opportunities in the corporate sector in India for the purpose of providing smart solutions to job seekers as well as consultancies
2. **Data Collection:** Data of 500 job-openings was scrapped through instahyre.com using selenium
3. **Data Cleaning & Modification:** Initially the raw data had multiple locations in just one column, a similar situation was with skills too. This was because for a particular job opening the employer may provide more than one location option to candidates, and these days a single skill is not enough to enter a job in the corporate sector. So, two separate datasets for location and skills were created using the explode() function in pandas. After applying techniques like Data Cleaning (imputation, and removing duplicate records), EDA, and Feature Generation, a total of 4 datasets were generated, which were used to perform aggregations on MySQL and visualization was done on PowerBI by creating attractive dashboards. In the whole analysis the main features or details involves are mentioned below:
```bash
    designation
    job location
    industry hiring for
    desired skills
    desired experience
    name of the company (employer)
    establishment year of the company
    company size
    ratings for the company by employees on various factors
```
4. **Data Analysis and Visualisation:** All the four datasets were imported on MySQL Workbench, created relations using primary key-foreign key combinations, and some inciteful aggregations were performed (screenshot of schema and aggregations may be referred). Then the same datasets were also imported on PowerBI Desktop, relationships were created among each other and then 3 different dashboards were created (refer screenshots)
5. **Key Incites and Conclusions:** All the key incites and conclusions drawn are mentioned after the screenshots hereunder.

 ## Screenshots

<img src="Screenshots/Average Price of cars graph.jpg" width="350" height="300"> <img src="Screenshots/Correlation between mileage and price.jpg" width="350" height="300">
<br>
<img src="Screenshots/Pie chart showing the percentage of cars of different fuel types.jpg" width="350" height="250"> <img src="Screenshots/Correlation among continuous features.jpg" width="350" height="250">
<br>
<img src="Screenshots/Number of cars of different brands.jpg" width="350" height="300"> <img src="Screenshots/Pie chart showing the percentage of cars of different body-types.jpg" width="350" height="250">
<br>
<img src="Screenshots/Car body-type vs average Price (in lakh Rs.).jpg" width="350" height="300"> <img src="Screenshots/Outlier Analysis of Mileage (in kmpl).jpg" width="350" height="300">
<br>
<img src="Screenshots/Accuracy score.jpg" width="300" height="300"> <img src="Screenshots/Predicting the price.jpg" width="400" height="300">

<br>

## <img src="https://user-images.githubusercontent.com/108053296/185756908-fbb62168-d923-48f2-992f-b8e2fde848fe.gif" width="48" height="48" > Conclusion
   
   1. Average price of MG cars is the highest among all brands.
   2. Average price of SUV cars is the highest among all available body types.
   3. Most commonly available car Brand is Maruti Suzuki.
   4. Most commonly available body type is Hatchback followed by SUV.
   5. There are some outliers present in the Mileage column roughly below 15 kmpl and above 25 kmpl.
   6. Some obvious patterns are also visible such as model year and km driven, mileage and price, km driven and price, all are negatively correlated with each other.
   7. The model shows more than 83% accuracy rate which is good enough to proceed with.
   8. Based on a general understanding of a person about the resale value of a pre-owned car, the model is giving a meaningful prediction of price (as per the price prediction of a Tata SUV-Manual-Petrol car)


## Contributing
Contributions are always welcome! Especially if you can help me with creating a UI for this model to make it useful for masses.

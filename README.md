# <img src="Media Files/job_search.jpg" width="30" height="47"> Analysis of Corporate Job opportunities in India <img src="Media Files/job_vacancy.jpg" width="65" height="50">
<img src="Media Files/jobs.jpg" width="330" height="220"> <img src="Media Files/one_stop_solution.jpg" width="470" height="220">
 <br>

## 📝 Description
* This repository represents **"An in-depth analysis of current job opportunities in the corporate sector in India"**
* The analysis has been done through aggregations on MySQL and Visualisation on PowerBI
* With the help of this project we can get useful incites on the companies and industries hiring most aggressively, the best locations, and the skills most sought after by recruiters.

## ⏳ Dataset 
* Data of over 500 job openings was extracted from instahyre.com
* After performing data cleaning and modification we were able to create 4 separate datasets namely jobs, companies, locations, and skills.
* Download the datasets for custom training:
  https://github.com/dipeshbhatt1/Price-Prediction-of-Pre-Owned-Cars/tree/main/Datasets

## 🏽‍ Download Model File
- Download the model file from following Link
- https://github.com/dipeshbhatt1/Price-Prediction-of-Pre-Owned-Cars/blob/main/Python%20Codes%20(in%20ipynb)/C-analysis-and-model.ipynb

## :desktop_computer:	Installation

### :hammer_and_wrench: Requirements
```bash
  * Python 3.7+
  * IDE (Jupyter Notebook, VS Code, Spyder, etc)
  * selenium
  * Web Driver (Chrome, Firefox, Edge, Safari, etc)
  * scikit-learn
  * Other python libraries like numpy and pandas
```
    
## :gear: Setup
1. Install latest version of python:
    https://www.python.org/downloads/
2. If pip is not installed, you can follow the instructions:
    https://pip.pypa.io/en/stable/installing/
3. Install jupyter using command prompt:
```bash
    pip install jupyter
```
4. Install python libraries viz. numpy, pandas, seaborn, matplotlib, selenium, sklearn and time, one-by-one using command prompt:
```bash
    pip install numpy
```
5. Once you have these all, launch the Jupyter Notebook using command prompt:
```bash
    jupyter notebook
```
6. Now you can start working on the project using the given dataset and python codes

## <img src="Media Files/steps3.png" width="45" height="40"> Steps Involved

1. **Objective:** To build a Machine Learning model (Linear Regression) that can predict prices (label) of used cars based on various features
2. **Data Collection:** For this, a reasonable and large enough dataset was required. Now, instead of looking for some old data or sample data available on internet, I decided to scrape website of a service provider already working in this field. So, I came across spinny.com which has a simple yet cool UI. Finally, the data was scrapped from this website.
3. **Data Cleaning & Feature Engineering:** Initially the dataset had all the data in just 7 columns, the data had null values, duplicates and noise too. After applying techniques like Data Cleaning (imputation, outlier detection, and removing duplicate records), EDA, and Feature Generation, total 14 meaningful features were generated, which can be used for drawing insites through aggregations and visualistion. Then, I applied some final techniques, to prepare final data for training the model, like Feature Selection, Feature Encoding, Feature Scaling. The final dataset has the following independent features:
```bash
    brand
    body type
    fuel type
    transmission
    model (year)
    km driven (in thousands)
    mileage (in kmpl)
    seating capacity (units)
    ground clearance (in mm)
    boot space (in litres)
    fuel tank capacity (in litres)
    max power (in bhp)
```
4. **Data Analysis and Visualisation:** Meanwhile data analysis through groupby, pivot table and aggregate funtions was also done and the data was visualised (screenshots may be referred).
5. **Training:** The final dataset was then split into training and testing datasets and trained through Linear Regression.
6. **Testing:** The predicted values for the label (price) were then generated. The accuracy came out to be 85% using R2 score metric and 84% using Adjusted R2 score method.
7. **Predicting (Applying the Model):** As a test case, predicting the price of a used car using hypothetical features seems to be quite reasonable and meaningful. The model now can be used by a user who may be buyer/seller to predict prices of pre-owned cars.

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

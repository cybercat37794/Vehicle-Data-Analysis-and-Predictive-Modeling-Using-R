# Vehicle Data Analysis and Predictive Modeling Using R

## Project Overview
This project involves the analysis of a vehicle dataset using the R programming language and RStudio. The main goal is to perform data preprocessing, exploratory data analysis (EDA), and apply machine learning techniques to gain insights into vehicle pricing trends, market segmentation, and other key factors that influence vehicle pricing.

Key tasks include:
- Data import, cleaning, and summarization
- Handling missing values
- Encoding categorical data
- Visualizations of relationships between features
- Clustering analysis to identify patterns in the dataset
- Predictive modeling to understand the factors influencing car prices

---

## Table of Contents
- [Installation](#installation)
- [Project Tasks](#project-tasks)
- [Technologies Used](#technologies-used)
- [File Structure](#file-structure)
- [How to Run the Code](#how-to-run-the-code)
- [Results and Insights](#results-and-insights)
- [License](#license)

---

## Installation

To run this project, ensure you have the following installed:

- **R**: Install R from [CRAN](https://cran.r-project.org/).
- **RStudio**: Install RStudio from [here](https://www.rstudio.com/products/rstudio/download/).
- **Required R Libraries**: The following libraries are required for this project:
  - `dplyr`
  - `ggplot2`
  - `tidyr`
  - `cluster`
  - `factoextra`
  - `DBSCAN`
  - `corrplot`
  
  Install the necessary libraries by running the following command in RStudio:
  ```r
  install.packages(c("dplyr", "ggplot2", "tidyr", "cluster", "factoextra", "DBSCAN", "corrplot"))

  Project Tasks
1. Data Import and Summary
Imported the vehicle dataset and performed a quick summary to understand its structure and key statistics.
2. Exploratory Data Analysis (EDA)
Displayed the first 3 and last 6 rows of the dataset to understand the data distribution.
Performed basic summary statistics for key attributes like Selling_Price, Fuel_Type, Kms_Driven, etc.
3. Average Kms_Driven for Each Car_Type
Calculated the average kilometers driven (Kms_Driven) for each type of car (Car_Name).
4. Average Selling_Price of Cars by Year
Calculated the average selling price for cars grouped by their manufacturing year (Year).
5. Unique Combinations of Key Variables
Found the unique combinations of Car_Name, Fuel_Type, Seller_Type, and Transmission in the dataset.
6. Count of Combinations in Ascending and Descending Order
Counted the occurrences of unique combinations and displayed them in both ascending and descending order.
7. Handling Missing Values
Identified columns with missing values and performed imputation by replacing missing values with the most frequent value for that column.
8. Categorical Data Encoding
Coded categorical variables (Fuel_Type, Seller_Type, Transmission) as numerical values to prepare the data for analysis.
9. Clustering
Applied K-means, Hierarchical, and DBSCAN clustering algorithms to segment the vehicles based on key features like Selling_Price, Kms_Driven, and Present_Price.
Visualized the clustering results with scatter plots and color-coded points based on cluster assignment.
10. Correlation Analysis
Created a correlation plot to identify relationships between variables and assess multicollinearity.
11. Data Visualizations
Created various plots such as scatter plots, box plots, and bar plots to explore the relationships between variables like Selling_Price, Fuel_Type, Transmission, and Owner.
Technologies Used
R Programming Language
RStudio
Data Manipulation: dplyr, tidyr
Data Visualization: ggplot2, plotly
Clustering Algorithms: k-means, Hierarchical Clustering, DBSCAN
Statistical Analysis: corrplot
Data Cleaning: Handling missing values, encoding categorical data, and removing duplicates

/Vehicle-Data-Analysis
│
├── data/
│   └── vehicle_data.csv           # Vehicle dataset (CSV file)
│
├── analysis/
│   ├── data_preprocessing.R       # R script for data cleaning and preprocessing
│   ├── exploratory_analysis.R     # R script for EDA and visualizations
│   ├── clustering_analysis.R      # R script for clustering
│   └── predictive_analysis.R      # R script for predictive modeling and feature engineering
│
├── README.md                      # Project overview and instructions
└── LICENSE                        # License file (if applicable)

1. How to Run the Code
git clone [https://github.com/your-username/vehicle-data-analysis.git](https://github.com/cybercat37794/Vehicle-Data-Analysis-and-Predictive-Modeling-Using-R/tree/main)

2. Open the project folder in RStudio.

3. Install the required R libraries by running the following command in the RStudio console:

install.packages(c("dplyr", "ggplot2", "tidyr", "cluster", "factoextra", "DBSCAN", "corrplot"))

4. Open and run the R scripts in the analysis/ folder:

data_preprocessing.R for data cleaning.
exploratory_analysis.R for exploratory data analysis and visualizations.
clustering_analysis.R for clustering.
predictive_analysis.R for predictive modeling and feature engineering.
Results and Insights
The analysis led to the following key insights:

Car Price Trends: The analysis uncovered trends in car pricing, with key factors such as the car’s age, fuel type, and transmission type having a significant impact on its price.
Clustering: K-means and DBSCAN clustering algorithms revealed distinct clusters in the dataset based on vehicle attributes like Selling_Price and Kms_Driven.
Feature Importance: Features such as the vehicle's age, fuel type, transmission, and kilometers driven played crucial roles in determining the vehicle’s selling price.
License
This project is licensed under the MIT License - see the LICENSE file for details.

---

This README provides a comprehensive overview of your project, from setup to execution. It also details the tasks and methodology used in your analysis, giving potential recruiters or collaborators clear insights into your work.





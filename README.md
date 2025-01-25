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

---

## Installation

To run this project, ensure you have the following installed:

- **R**: Install R
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

## Technologies Used
- R Programming Language
- RStudio
- Data Manipulation: dplyr, tidyr
- Data Visualization: ggplot2, plotly
- Clustering Algorithms: k-means, Hierarchical Clustering, DBSCAN
- Statistical Analysis: corrplot
- Data Cleaning: Handling missing values, encoding categorical data, and removing duplicates


## File Structure
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


## How to Run the Code
git clone [https://github.com/your-cybercat37794/vehicle-data-analysis.git](https://github.com/cybercat37794/Vehicle-Data-Analysis-and-Predictive-Modeling-Using-R/tree/main)

2. Open the project folder in RStudio.

3. Install the required R libraries by running the following command in the RStudio console:
```r
install.packages(c("dplyr", "ggplot2", "tidyr", "cluster", "factoextra", "DBSCAN", "corrplot"))
```

# Results and Insights
The analysis revealed the following insights:

- Car Price Trends: The analysis uncovered trends in car pricing, with key factors such as the car’s age, fuel type, and transmission type having a significant impact on its price.
- Clustering: K-means and DBSCAN clustering algorithms revealed distinct clusters in the dataset based on vehicle attributes like Selling_Price and Kms_Driven.
- Feature Importance: Features such as the vehicle's age, fuel type, transmission, and kilometers driven played crucial roles in determining the vehicle’s selling price.

---





# 1
##################################################################

# Loading the dataset in load_dataset
load_dataset <- read.csv("H:/University of Windsor/2nd Term (Winter 25)/COMP 8157 ADVANCED DATABASE TOPICS SEC 1/Lab Task 1/Vehicle.csv")

# head of the dataset
head(load_dataset)

# Summary of the dataset
summary(load_dataset)

# 2
##################################################################

# structure of the dataset
str(load_dataset)

# dimention of the dataset
dim(load_dataset)

# total number of rows
nrow(load_dataset)

# total number of columns
ncol(load_dataset)

# 3
##################################################################

# column names
colnames(load_dataset)

# first 3 rows
head(load_dataset, 3)

# last 6 rows
tail(load_dataset, 6)

# 4
##################################################################

# installing package
# install.packages("dplyr")

# loading the dplyr package
library(dplyr)

# calculating the average Kms_Driven for each Car_Name
average_kms <- load_dataset %>%
  group_by(Car_Name) %>%
  summarize(average_kms_driven = mean(Kms_Driven, na.rm = TRUE))

print(average_kms)

# 5
##################################################################
# calculating the average Selling_Price for each year
average_price_by_year <- load_dataset %>%
  group_by(Year) %>%
  summarize(Average_Selling_Price = mean(Selling_Price, na.rm = TRUE))

print(average_price_by_year)


# 6
##################################################################

# unique combinations of Car_Name, Fuel_Type, Seller_Type, and Transmission
unique_combinations <- load_dataset %>%
  select(Car_Name, Fuel_Type, Seller_Type, Transmission) %>%
  distinct()

print(unique_combinations)

# 7
##################################################################

ascending_combinations <- load_dataset %>%
  group_by(Car_Name, Fuel_Type, Seller_Type, Transmission) %>%
  summarize(Count = n(), .groups = "drop") %>%
  arrange(Count)  # Ascending order

# counting and sorting combinations in descending order
descending_combinations <- load_dataset %>%
  group_by(Car_Name, Fuel_Type, Seller_Type, Transmission) %>%
  summarize(Count = n(), .groups = "drop") %>%
  arrange(desc(Count))  # Descending order

print("Ascending Order:")
print(ascending_combinations)

print("Descending Order:")
print(descending_combinations)

# 8
##################################################################
# total number of missing values
sum(is.na(load_dataset))

# 9
##################################################################
# missing values in each column
colSums(is.na(load_dataset))

# 11
##################################################################
# duplicate rows count
sum(duplicated(load_dataset))

# duplicate rows remove
load_dataset_unique <- unique(load_dataset)

head(load_dataset_unique)

# duplicate row count after removing duplicates
sum(duplicated(load_dataset_unique))

# 12
##################################################################
# replaceing with numeric values
load_dataset_unique$Fuel_Type <- recode(load_dataset_unique$Fuel_Type, "Petrol" = 0, "Diesel" = 1, "CNG" = 2)

# conversion output for Fuel_Type
head(load_dataset_unique$Fuel_Type)

# "Dealer" with 0 and "Individual" with 1 in the Seller_Type column
load_dataset_unique$Seller_Type <- recode(load_dataset_unique$Seller_Type, "Dealer" = 0, "Individual" = 1)

# conversion output for Seller_Type
head(load_dataset_unique$Seller_Type)


# replacing "Manual" with 0 and "Automatic" with 1 in the Transmission column
load_dataset_unique$Transmission <- recode(load_dataset_unique$Transmission, "Manual" = 0, "Automatic" = 1)

head(load_dataset_unique$Transmission)


# 13
##################################################################
# current year
current_year <- format(Sys.Date(), "%Y")

# adding age colum in the dataset
load_dataset_unique$Age <- as.numeric(current_year) - load_dataset_unique$Year

head(load_dataset_unique)

# 14
##################################################################
# creating new dataset with selected columns
new_dataset_unique <- load_dataset_unique[, c("Car_Name", "Selling_Price", "Present_Price", "Kms_Driven")]

head(new_dataset_unique)


# 15
##################################################################

# random shuffle
shuffled_dataset <- new_dataset_unique[sample(nrow(new_dataset_unique)), ]

head(shuffled_dataset)


# 16
##################################################################

install.packages("ggplot2")

library(ggplot2)

# creating the scatter plot of Selling_Price vs Present_Price
ggplot(load_dataset_unique, aes(x = Present_Price, y = Selling_Price, color = factor(Transmission))) + geom_point(shape = 17, size = 3) + scale_color_manual(values = c("0" = "red", "1" = "blue")) + labs(title = "Selling Price vs Present Price", x = "Present Price", y = "Selling Price", color = "Transmission Type") + theme_minimal()

# 17
##################################################################

# box plot with facets by Fuel_Type
ggplot(load_dataset_unique, aes(x = factor(Fuel_Type), y = Selling_Price, fill = factor(Transmission))) + geom_boxplot() + facet_wrap(~ Fuel_Type) +  labs(title = "Selling Price vs Transmission and Fuel Type", x = "Fuel Type Petrol = 0, Diesel = 1, cng = 2", y = "Selling Price", fill = "Transmission Type M = 0, A = 1") + theme_minimal()

# 18
##################################################################

# K-means clustering 
set.seed(123)  
kmeans_result <- kmeans(load_dataset_unique[, c("Selling_Price", "Kms_Driven")], centers = 4)

load_dataset_unique$Cluster <- as.factor(kmeans_result$cluster)

# creating scatter plot of Selling_Price vs Kms_Driven with k-means clusters
ggplot(load_dataset_unique, aes(x = Kms_Driven, y = Selling_Price, color = Cluster)) + geom_point(size = 3) + labs(title = "Selling Price vs Kms Driven with K-means Clustering", x = "KMs Driven", y = "Selling Price", color = "Cluster") + theme_minimal() 

# 19
##################################################################

# hierarchical clustering
distance_matrix <- dist(load_dataset_unique[, c("Selling_Price", "Present_Price")])  # Compute distance matrix
hclust_result <- hclust(distance_matrix)  # Perform hierarchical clustering


load_dataset_unique$Cluster <- cutree(hclust_result, k = 3)

load_dataset_unique$Cluster <- as.factor(load_dataset_unique$Cluster)


# scatter plot of Selling_Price vs Present_Price with hierarchical clusters
ggplot(load_dataset_unique, aes(x = Present_Price, y = Selling_Price, color = Cluster)) +
  geom_point(size = 3) + labs(title = "Selling Price vs Present Price with Hierarchical Clustering", x = "Present Price", y = "Selling Price", color = "Cluster") + theme_minimal()

# 20
##################################################################

# getting the current year
current_year <- format(Sys.Date(), "%Y")

# adding the 'Age' column to the dataset
load_dataset_unique$Age <- as.numeric(current_year) - load_dataset_unique$Year

# new column in the dataset
head(load_dataset_unique)


# ggplot2 package
library(ggplot2)

# Gather data into a long format
library(tidyr)
load_dataset_unique_long <- load_dataset_unique %>%
  select(Age, Year, Transmission, Seller_Type, Fuel_Type, Owner) %>%
  pivot_longer(cols = c(Age, Year, Transmission, Seller_Type, Fuel_Type, Owner), names_to = "Variable", values_to = "Value")

# bar plot for all the specified fields
ggplot(load_dataset_unique_long, aes(x = Value, fill = Variable)) + geom_bar() + facet_wrap(~ Variable, scales = "free_x") +  # Facet the plots by 'Variable' column
  scale_fill_manual(values = c("Age" = "lightblue", "Year" = "lightgreen", "Transmission" = "orange", "Seller_Type" = "purple", "Fuel_Type" = "pink", "Owner" = "yellow")) + labs(title = "Bar Plot of Various Dataset Fields", x = "Categories", y = "Count", fill = "Variable") + theme_minimal()

# 21
##################################################################

install.packages("corrplot")
install.packages("ggplot2")

library(corrplot)
library(ggplot2)


# subset the dataset 
numeric_data <- load_dataset_unique[, sapply(load_dataset_unique, is.numeric)]

# calculating the correlation matrix
cor_matrix <- cor(numeric_data)

print(cor_matrix)


# correlation matrix
corrplot(cor_matrix, method = "color", type = "upper", col = colorRampPalette(c("blue", "white", "red"))(100), addCoef.col = "black", number.cex = 0.7, title = "Correlation Matrix")

# 22
##################################################################
install.packages("ggplot2")
install.packages("dbscan")

library(ggplot2)
library(dbscan)

# DBSCAN clustering on the Selling_Price and Kms_Driven columns
dbscan_result <- dbscan(numeric_data[, c("Selling_Price", "Kms_Driven")], eps = 1, minPts = 5)

# DBSCAN cluster results to the dataset
numeric_data$Cluster <- as.factor(dbscan_result$cluster)

# first few rows of the updated dataset
head(numeric_data)

# scatter plot of Selling_Price vs Kms_Driven with DBSCAN clusters
ggplot(numeric_data, aes(x = Kms_Driven, y = Selling_Price, color = Cluster)) + geom_point(size = 3) + labs(title = "Selling Price vs Kms Driven with DBSCAN Clustering", x = "Kms Driven", y = "Selling Price", color = "Cluster") + theme_minimal()



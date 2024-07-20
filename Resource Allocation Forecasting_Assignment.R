# Loading the Necessary Library
library(tidyverse)

#Creating a sample data for resource allocation forecasting 
#Creating a sample data for resource allocation forecasting 
data <- data.frame(
  Activity = c("Research", "Development", "Marketing", "User_Training", "  Support"),
  Staff_Hours = c(70, 150, 90, 60, 150),
  Material_Cost = c(2000, 5000, 3000, 1000, 1500),
  Complexity_Level = c(4, 5, 3, 2, 2),
  Resources_Used_Units = c(5, 15, 10, 3, 4)
)

# Creating the Linear Regression Model
model <- lm(Resources_Used_Units ~ Staff_Hours + Material_Cost + Complexity_Level, data = data)

summary(model)

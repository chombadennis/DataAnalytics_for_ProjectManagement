# Loading the Necessary Library
library(tidyverse)

#Creating a sample data for resource allocation forecasting 
data <- data.frame(
  Activity = c("Plannng", "Execution", "Promotion", "Feedback", "Evaluation"),
  Staff_Hours = c(50, 120, 80, 40, 30),
  Material_Cost = c(1000, 3000, 2000, 500, 800),
  Complexity_Level = c(2, 5, 3, 1, 2),
  Resources_Used_Units = c(5, 15, 10, 3, 4)
)

# Creating the Linear Regression Model
model <- lm(Resources_Used_Units ~ Staff_Hours + Material_Cost + Complexity_Level, data = data)

# New data for prediction
new_data <- data.frame(
  Staff_Hours = c(60, 100, 90),
  Material_Cost = c(1500, 2500, 1800),
  Complexity_Level = c(3, 4, 2)
)

# Predicting resource needs for the new activities
Predicted_Resources <- predict(model, newdata = new_data)

# Outputting the predicted resource need
print(Predicted_Resources)


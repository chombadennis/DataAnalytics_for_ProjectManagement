# Load necessary libraries
library(dplyr, ggplot)

# Sample data representing vendor Performance
vendor_data <- data.frame(
  VendorID = c('V001', 'V002', 'V003', 'V004', 'V005'),
  DeliveryPunctuality = c(90, 80,95,70,85), # in percentage
  QualityRating = c(4.5, 4.0, 4.8, 3.5, 4.2), #out of 5
  CostEffectiveness = c(4.2, 3.8, 4.7, 3.9, 4.1) #out of 5
)

# Analyzing Vendor Performance
# We can calculate the overall performance score for each vendor
vendor_data$PerformanceScore <- rowMeans(vendor_data[, 2:4])

# Displaying the results
Vendor_Performance <- vendor_data %>% 
  arrange(desc(PerformanceScore))
print(Vendor_Performance)
# Load necessary libraries
library(dplyr, ggplot)

# Sample data representing vendor Performance
vendor_data <- data.frame(
  VendorID = c('V006', 'V007', 'V008', 'V009', 'V010'),
  DeliveryPunctuality = c(85, 75, 92, 68, 88), # in percentage
  QualityRating = c(4.6, 3.9, 4.8, 3.6, 4.5), #out of 5
  CostEffectiveness = c(4.3, 4.0, 4.6, 3.8, 4.4) #out of 5
)

# Analyzing Vendor Performance
# We can calculate the overall performance score for each vendor
vendor_data$PerformanceScore <- rowMeans(vendor_data[, 2:4])

# Displaying the results
Vendor_Performance <- vendor_data %>% 
  arrange(desc(PerformanceScore))
print(Vendor_Performance)
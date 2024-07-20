# Load necessary libraries
# install.packages("forecast", dependencies = TRUE)
library(forecast)

# Sample data representing C.H.F.Project milestones
milestones <- c('Vendor Selection', 'Health Screening Setup', 'Community Outreach', 'Final Training Session', 'Event Day Coordination')
completion_times <- c(15, 20, 25, 18, 12) # Completion times in days

# Convert completion times to a time series to a time series object
completion_ts <- ts(completion_times)

# Fit an ARIMA model to the time series data
model <- auto.arima(completion_ts)

# Forecast future completion times for additional milestones
forecasted_completion <- forecast(model, h = 2) # Forecasting for the next 2 milestones

#Output the forecasted completion times
print(forecasted_completion)
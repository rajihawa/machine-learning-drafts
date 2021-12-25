# Data Preprocessing

# Importing dataset
dataset <- read.csv(paste(getwd(), "preprocessing", "Data.csv", sep = "/"))

# Taking care of missing data

# ? Using custom average functions
# dataset$Age <- ifelse(test = is.na(dataset$Age),
#  yes = ave(dataset$Age, FUN = function(x) mean(x, na.rm = TRUE)),
#  no = dataset$Age)

# ? Using mean average directly
dataset$Age <- ifelse(test = is.na(dataset$Age),
 yes = mean(dataset$Age, na.rm = TRUE),
 no = dataset$Age)

dataset$Salary <- ifelse(test = is.na(dataset$Salary),
 yes = mean(dataset$Salary, na.rm = TRUE),
 no = dataset$Salary)
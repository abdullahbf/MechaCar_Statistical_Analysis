# Import the dplyr library
library(dplyr)

# Import the .csv file 
file <- file.choose()
df <- read.csv(file,stringsAsFactors = F,check.names = F)

# Perform linear regression using lm() function
regression <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = df)

# Get summary statistics for regression
summary(regression)

# Import Suspension_Coil.csv
file <- file.choose()
suspension_df <- read.csv(file,stringsAsFactors = F,check.names = F)

# Summary statistics for suspension_df
total_summary <- suspension_df %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI),
                                             .groups = 'keep')

# Lot summary
lot_summary <- suspension_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI),
                                                                           .groups = 'keep')
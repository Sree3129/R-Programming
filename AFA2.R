### Logistic Regression model ###

library(writexl)
library(readxl)
COLUMBIA_DF <- read_excel("C:\\Users\\gupta\\Downloads\\23294-ESE-AFA\\Columbia space shuttle data.xlsx")
model_1 <- glm(COLUMBIA_DF$`Damage to O-ring`~COLUMBIA_DF$`Launch Temperature`,family = binomial)
summary(model_1)
COLUMBIA_DF$predicted_probabilities <-predict(model_1,type="response") 
COLUMBIA_DF$predicted_class <- ifelse(COLUMBIA_DF$predicted_probabilities > 0.5, 1, 0)
COLUMBIA_DF$`Damage to O-ring`
Estimate: 15.2968
#The intercept represents the log-odds of O-ring damage when the Launch Temperature is zero
#  Launch Temperature Coefficient:
# Estimate: -0.2360
# This coefficient is negative, meaning that as the Launch Temperature increases, the likelihood of O-ring damage decreases.
# For every 1-degree increase in launch temperature, the log-odds of O-ring damage decreases by 0.236


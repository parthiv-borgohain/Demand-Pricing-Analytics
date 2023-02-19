library(readxl)

# Q1
WalmartData = read_excel("HW1 Walmart.xls")
View(WalmartData)
dim(WalmartData)
summary(WalmartData)

# Creating appropriate log variables
logSales = log(WalmartData$Sales)
logPromotionIndex = log(WalmartData$`Promotion Index`)
logFeatureAdvertising = log(WalmartData$`FeatureAdvertising Index`)

# Defining first model
LogModel1 = lm(logSales ~ logPromotionIndex + WalmartData$Walmart)
LogModel1
summary(LogModel1)

# Defining second model
LogModel2 = lm(logSales ~ logPromotionIndex + WalmartData$Walmart + logFeatureAdvertising + WalmartData$Holiday)
LogModel2
summary(LogModel2)


# Defining third model
LogModel3 = lm(logSales ~ logPromotionIndex + WalmartData$Walmart + logFeatureAdvertising + WalmartData$Holiday + logPromotionIndex:WalmartData$Walmart)
LogModel3
summary(LogModel3)


# Q2
OVData = read.csv("HW1 Omitted_Variable_Price-Demand_Dataset.csv")
View(OVData)
dim(OVData)
summary(OVData)

# Defining all variables
Demand = OVData$D
Price = OVData$P
IV1 = OVData$IV1
IV2 = OVData$IV2

# Displaying a correlation matrix to find out if the IVs are related to Demand, Price
cor_matrix = cor(OVData)
cor_matrix

# Conducting Stage IV regressions for both IVs
# Stage 1 Regression
Regr11 = lm(Price ~ IV1 + IV2)
Regr11
summary(Regr11)

Pred_Price1 = predict(Regr11)
Pred_Price1

Residuals = residuals(Regr11)
Residuals

# Stage 2 Regression
Regr12 = lm(Demand ~ Pred_Price1)
Regr12
summary(Regr12)

# Checking for potential endogeneity issue
EndoRegr = lm(Demand ~ Price + Residuals)
EndoRegr
summary(EndoRegr)



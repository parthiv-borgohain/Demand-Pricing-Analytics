Project as part of Demand and Pricing Analytics coursework for Spring Semester of UT Austin's MSBA Program

# Demand Forecasting for a Meal Delivery Company

### I. Introduction

This project aims to develop an accurate demand forecasting model for a meal delivery company to optimize inventory management and staffing strategies while improving customer satisfaction and profitability. The food delivery service industry is expected to grow to $320 billion by 2029, creating a significant impact on the economy and individual households. Accurate demand forecasting helps minimize food waste, improve supply decisions, optimize tradeoffs, reduce costs, streamline delivery plans, and enhance customer satisfaction.

### II. Data

The project uses four datasets: Meal Information, Fulfillment Center Information, Training Data, and Testing Data. The data includes various metrics such as the number of orders, checkout price, center id, city code, region code, center type, cuisine, and category, to forecast demand accurately.

### III. Methodology

A. Exploratory Data Analysis

The initial data analysis revealed unique insights into customer preferences and business strategies. Italian cuisine was the most ordered, followed by Thai and Indian. Beverages were the most popular category, whereas biryani was the least popular, indicating high demand for beverages. Further analysis will help the client account for these relationships in their operations.

B. Baseline Models

The project used two baseline models: Linear Regression and Decision Tree, to establish a starting point for further analysis and refinement of models. The Decision Tree model performed better, indicating that the data is highly non-linear and demonstrates a complex relationship between dependent and independent variables.

C. Data Preprocessing

The data was split into training and validation sets, and numeric features were scaled to minimize the distance between features. One-hot encoding converted categorical features such as city code, category, and cuisine into a format that can be processed in models.

### IV. Results

The project's model predicts the meal delivery company's demand with an accuracy of 80%, resulting in optimal inventory management, staffing strategies, and cost savings. The model improves cash flow predictions and contributes to more precise product pricing, enhancing customer satisfaction and profitability.

### V. Conclusion

Demand forecasting is essential to optimize inventory management, reduce costs, streamline delivery plans, and enhance customer satisfaction in the food delivery service industry. This project demonstrates how accurate forecasting can improve business operations and contribute to overall profitability.

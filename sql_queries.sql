-- Total Revenue
SELECT 
    SUM(Revenue) AS Total_Revenue
FROM ecommerce_data;

-- Total Orders
SELECT 
    SUM(Orders) AS Total_Orders
FROM ecommerce_data;

-- Average Order Value
SELECT 
    ROUND(AVG(AOV), 2) AS Average_Order_Value
FROM ecommerce_data;

-- Monthly Revenue Trend
SELECT 
    Month,
    SUM(Revenue) AS Monthly_Revenue
FROM ecommerce_data
GROUP BY Month
ORDER BY Month;

-- Monthly Growth %
SELECT 
    Month,
    GrowthPercent
FROM ecommerce_data
ORDER BY Month;

-- Top Revenue Months
SELECT 
    Month,
    SUM(Revenue) AS Revenue
FROM ecommerce_data
GROUP BY Month
ORDER BY Revenue DESC
LIMIT 5;

create database cleaned_adidas_sales;
use cleaned_adidas_sales;
select*from cleaned_adidas_sales;

CREATE TABLE cleaned_adidas_sales (
    Retailer VARCHAR(255),
    Retailer_ID INT,
    Invoice_Date DATE,
    Region VARCHAR(100),
    State VARCHAR(100),
    City VARCHAR(100),
    Product VARCHAR(255),
    Price_per_Unit DECIMAL(10,2),
    Units_Sold INT,
    Total_Sales DECIMAL(15,2),
    Operating_Profit DECIMAL(15,2),
    Operating_Margin DECIMAL(10,5),
    Sales_Method VARCHAR(50),
    Avg_Revenue_Per_Order DECIMAL(15,2)
);
drop table cleaned_adidas_sales;

-- Essential Financial KPIs
-- This query calculates the cumulative financial health


SELECT 
    SUM(`Total Sales`) AS Total_Revenue,
    AVG(`Total Sales`) AS Average_Revenue_Per_Order,
    SUM(`Operating Profit`) AS Total_Operating_Profit
FROM cleaned_adidas_sales adidas_sales;

-- Best-Selling Products by Volume
-- This query identifies "fast-moving inventory items" to assist the Store Manager and Inventory Planner 

SELECT 
Product, 
    SUM(`Units Sold`) AS Total_Units_Sold
FROM cleaned_adidas_sales
GROUP BY Product
ORDER BY Total_Units_Sold DESC;

-- Geographic Sales Distribution
-- Use this query to evaluate the financial health of different retail nodes across cities and stat


SELECT 
    Region, 
    State, 
    City, 
    SUM('Total Sales') AS Regional_Revenue
FROM cleaned_adidas_sales
GROUP BY Region, State, City
ORDER BY Regional_Revenue DESC;

-- Analysis (Revenue by Month)
-- This query is necessary to quantify the historical data spikes

SELECT 
    DATE_FORMAT(`Invoice Date`, '%Y-%m') AS Month, 
    SUM(`Total Sales`) AS Monthly_Revenue
FROM cleaned_adidas_sales
GROUP BY Month
ORDER BY Month;


-- Identify which channel (In-store, Online, Outlet) is the most profitable to inform targeted marketing strategies


SELECT 
    `Sales Method`, 
    SUM(`Total Sales`) AS Total_Revenue,
    AVG(`Operating Margin`) AS Average_Margin
FROM cleaned_adidas_sales
GROUP BY `Sales Method`
ORDER BY Total_Revenue DESC;
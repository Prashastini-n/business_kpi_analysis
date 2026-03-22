-- BUSINESS KPI ANALYSIS - SQL QUERIES

-- 1. Top 10 Profitable Products
SELECT "Product Name", SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY "Product Name"
ORDER BY Total_Profit DESC
LIMIT 10;

-- 2. Category-wise Profitability
SELECT Category, SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY Category
ORDER BY Total_Profit DESC;

-- 3. Monthly Sales Trend
SELECT 
  substr("Order Date", 7, 4) || '-' || 
  printf('%02d', substr("Order Date", 1, instr("Order Date", '/') - 1)) AS Month,
  SUM(Sales) AS Monthly_Sales
FROM superstore
GROUP BY Month
ORDER BY Month;

-- 4. Discount Impact by Region
SELECT Region,
       AVG(Discount) AS Avg_Discount,
       SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY Region;

-- 5. Loss-Making Sub-Categories
SELECT "Sub-Category", SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY "Sub-Category"
ORDER BY Total_Profit ASC
LIMIT 5;

-- Top 10 Customers

SELECT TOP 10
CustomerName,
SUM(Sales) AS TotalSales
FROM Sales
GROUP BY CustomerName
ORDER BY TotalSales DESC;

-- Sales by Region

SELECT
Region,
SUM(Sales) AS Sales
FROM Sales
GROUP BY Region;

-- Profit by Category

SELECT
Category,
SUM(Profit) Profit
FROM Sales
GROUP BY Category;

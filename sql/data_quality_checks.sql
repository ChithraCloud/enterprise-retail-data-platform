1️⃣ Total Records  
SELECT COUNT(*) AS TotalRecords
FROM Sales;

2️⃣ Date Range
SELECT
MIN(OrderDate) AS FirstOrder,
MAX(OrderDate) AS LastOrder
FROM Sales;

3️⃣ Distinct Customers
SELECT COUNT(DISTINCT CustomerID) AS Customers
FROM Sales;

4️⃣ Distinct Products
SELECT COUNT(DISTINCT ProductID) AS Products
FROM Sales;

5️⃣ Total Sales
SELECT
SUM(Sales) AS TotalSales
FROM Sales;

6️⃣ Total Profit
SELECT
SUM(Profit) AS TotalProfit
FROM Sales;

7️⃣ Check NULL Values
SELECT
COUNT(*) AS MissingPostalCodes
FROM Sales
WHERE PostalCode IS NULL;

8️⃣ Top 10 Products
SELECT TOP 10
ProductName,
SUM(Sales) AS TotalSales
FROM Sales
GROUP BY ProductName
ORDER BY TotalSales DESC;

9️⃣ Top 10 Customers
SELECT TOP 10
CustomerName,
SUM(Sales) AS TotalSales
FROM Sales
GROUP BY CustomerName
ORDER BY TotalSales DESC;

🔟 Region-wise Sales
SELECT
Region,
SUM(Sales) AS TotalSales
FROM Sales
GROUP BY Region
ORDER BY TotalSales DESC;


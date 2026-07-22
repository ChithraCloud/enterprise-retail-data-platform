--1️⃣ Total Sales  
SELECT
SUM(Sales) AS TotalSales
FROM Sales;

--2. Sales by Region
SELECT
Region,
SUM(Sales) AS TotalSales
FROM Sales
GROUP BY Region
ORDER BY TotalSales DESC;

--3️⃣ Sales by Category
SELECT
Category,
SUM(Sales) AS TotalSales
FROM Sales
GROUP BY Category
ORDER BY TotalSales DESC;

--4️⃣ Sales by State
SELECT TOP 10
State,
SUM(Sales) AS TotalSales
FROM Sales
GROUP BY State
ORDER BY TotalSales DESC;

--5️⃣ Top Customers
SELECT TOP 10
Customer_Name,
SUM(Sales) AS TotalSales
FROM Sales
GROUP BY Customer_Name
ORDER BY TotalSales DESC;

--6️⃣ Top Products
SELECT TOP 10
Product_Name,
SUM(Sales) AS TotalSales
FROM Sales
GROUP BY Product_Name
ORDER BY TotalSales DESC;

--7️⃣ Monthly Sales Trend
SELECT
YEAR(Order_Date) AS SalesYear,
MONTH(Order_Date) AS SalesMonth,
SUM(Sales) AS TotalSales
FROM Sales
GROUP BY YEAR(Order_Date), MONTH(Order_Date)
ORDER BY SalesYear, SalesMonth;

--8️⃣ Customer Count
SELECT
COUNT(DISTINCT Customer_ID) AS TotalCustomers
FROM Sales;

--9️⃣ Product Count
SELECT
COUNT(DISTINCT Product_ID) AS TotalProducts
FROM Sales;

--🔟 Orders by Ship Mode
SELECT
Ship_Mode,
COUNT(*) AS Orders
FROM Sales
GROUP BY Ship_Mode
ORDER BY Orders DESC;


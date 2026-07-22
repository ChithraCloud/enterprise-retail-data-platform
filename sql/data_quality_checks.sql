/* ==========================================
   Data Quality Checks
   Project: Enterprise Retail Data Platform
   Author: Chithra Linganathan
========================================== */

-------------------------------------------------
-- 1. Total Records
-------------------------------------------------
SELECT COUNT(*) AS TotalRecords
FROM Sales;

-------------------------------------------------
-- 2. Check for NULL Values
-------------------------------------------------
SELECT
    SUM(CASE WHEN Order_ID IS NULL THEN 1 ELSE 0 END) AS Null_OrderID,
    SUM(CASE WHEN Customer_ID IS NULL THEN 1 ELSE 0 END) AS Null_CustomerID,
    SUM(CASE WHEN Customer_Name IS NULL THEN 1 ELSE 0 END) AS Null_CustomerName,
    SUM(CASE WHEN Product_ID IS NULL THEN 1 ELSE 0 END) AS Null_ProductID,
    SUM(CASE WHEN Product_Name IS NULL THEN 1 ELSE 0 END) AS Null_ProductName,
    SUM(CASE WHEN Sales IS NULL THEN 1 ELSE 0 END) AS Null_Sales,
    SUM(CASE WHEN Postal_Code IS NULL THEN 1 ELSE 0 END) AS Null_PostalCode
FROM Sales;

-------------------------------------------------
-- 3. Duplicate Order IDs
-------------------------------------------------
SELECT
    Order_ID,
    COUNT(*) AS DuplicateCount
FROM Sales
GROUP BY Order_ID
HAVING COUNT(*) > 1;

-------------------------------------------------
-- 4. Negative Sales
-------------------------------------------------
SELECT *
FROM Sales
WHERE Sales < 0;

-------------------------------------------------
-- 5. Invalid Sales (Zero Sales)
-------------------------------------------------
SELECT *
FROM Sales
WHERE Sales = 0;

-------------------------------------------------
-- 6. Date Range
-------------------------------------------------
SELECT
    MIN(Order_Date) AS FirstOrderDate,
    MAX(Order_Date) AS LastOrderDate
FROM Sales;

-------------------------------------------------
-- 7. Distinct Customers
-------------------------------------------------
SELECT COUNT(DISTINCT Customer_ID) AS TotalCustomers
FROM Sales;

-------------------------------------------------
-- 8. Distinct Products
-------------------------------------------------
SELECT COUNT(DISTINCT Product_ID) AS TotalProducts
FROM Sales;

-------------------------------------------------
-- 9. Distinct States
-------------------------------------------------
SELECT COUNT(DISTINCT State) AS TotalStates
FROM Sales;

-------------------------------------------------
-- 10. Distinct Cities
-------------------------------------------------
SELECT COUNT(DISTINCT City) AS TotalCities
FROM Sales;

-------------------------------------------------
-- 11. Distinct Categories
-------------------------------------------------
SELECT COUNT(DISTINCT Category) AS TotalCategories
FROM Sales;

-------------------------------------------------
-- 12. Distinct Sub Categories
-------------------------------------------------
SELECT COUNT(DISTINCT Sub_Category) AS TotalSubCategories
FROM Sales;

-------------------------------------------------
-- 13. Top 10 Highest Sales Orders
-------------------------------------------------
SELECT TOP 10
    Order_ID,
    Customer_Name,
    Product_Name,
    Sales
FROM Sales
ORDER BY Sales DESC;

-------------------------------------------------
-- 14. Total Sales
-------------------------------------------------
SELECT
    SUM(Sales) AS TotalSales
FROM Sales;

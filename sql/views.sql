CREATE VIEW vw_SalesSummary AS

SELECT

Region,

Category,

SUM(Sales) AS TotalSales,

COUNT(Order_ID) AS TotalOrders

FROM Sales

GROUP BY Region, Category;

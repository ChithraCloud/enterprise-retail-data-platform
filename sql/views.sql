CREATE VIEW vw_TotalSales AS

SELECT

Region,

SUM(Sales) TotalSales,

SUM(Profit) Profit

FROM Sales

GROUP BY Region;

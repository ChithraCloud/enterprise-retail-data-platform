-- Check NULL values
SELECT *
FROM Sales
WHERE CustomerName IS NULL;

-- Remove duplicate rows
WITH DuplicateRows AS (
SELECT *,
ROW_NUMBER() OVER
(
PARTITION BY OrderID, ProductID
ORDER BY RowID
) rn
FROM Sales
)
SELECT *
FROM DuplicateRows
WHERE rn > 1;

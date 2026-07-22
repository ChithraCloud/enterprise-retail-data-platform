/* ==========================================
   Indexes for Performance Optimization
========================================== */

-- Index on Order Date
CREATE INDEX IX_Sales_OrderDate
ON Sales(Order_Date);

-- Index on Customer
CREATE INDEX IX_Sales_Customer
ON Sales(Customer_ID);

-- Index on Product
CREATE INDEX IX_Sales_Product
ON Sales(Product_ID);

-- Index on Region
CREATE INDEX IX_Sales_Region
ON Sales(Region);

-- Composite Index
CREATE INDEX IX_Sales_Region_Category
ON Sales(Region, Category);

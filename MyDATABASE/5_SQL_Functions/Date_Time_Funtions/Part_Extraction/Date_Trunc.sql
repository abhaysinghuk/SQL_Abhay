SELECT 

OrderID,
CreationTime,
DATETRUNC(MINUTE, CreationTime) AS Date_Trunc
FROM Sales.Orders

------------------------------------------------------------
-- counting the number of order based on creationtime
-- How DateTrunc is important in DATA ANALYSIS
SELECT

DATETRUNC(month,CreationTime),
COUNT(*)
FROM Sales.Orders
-- GROUP BY CreationTime
-- GROUP BY DATETRUNC(month,CreationTime),
GROUP BY DATETRUNC(YEAR,CreationTime)
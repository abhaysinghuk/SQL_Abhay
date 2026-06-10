SELECT 
OrderID,
CreationTime,

DATEPART(year, CreationTime) AS year_,
DATEPART(day, CreationTime) AS Day_,
DATEPART(QUARTER, CreationTime) AS quarter_,
DATEPART(HOUR, CreationTime) AS Hour_,
DATEPART(WEEK, CreationTime) AS week_

FROM Sales.Orders
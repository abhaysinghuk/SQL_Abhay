-- Find the lowest and the highest sales for the each product

SELECT
	OrderDate,
	OrderID,
	ProductID,
	Sales,
	FIRST_VALUE(Sales) OVER(PARTITION BY ProductID ORDER BY Sales) AS Lowest_Sales,

	LAST_VALUE(Sales) OVER(PARTITION BY ProductID ORDER BY Sales ROWS BETWEEN 
	CURRENT ROW AND UNBOUNDED FOLLOWING) AS Highest_Sales,

	FIRST_VALUE(Sales) OVER(PARTITION BY ProductID ORDER BY Sales DESC) AS Highest_Sales_2
FROM Sales.Orders
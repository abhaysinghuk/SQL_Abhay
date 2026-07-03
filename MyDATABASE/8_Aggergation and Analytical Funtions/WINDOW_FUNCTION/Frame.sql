SELECT
	OrderID,
	OrderDate,
	OrderStatus,
	Sales,

	/*SUM(Sales) OVER(PARTITION BY OrderStatus ORDER BY OrderDate ROWS
	BETWEEN CURRENT ROW AND 2 FOLLOWING) AS Total_Sales*/

	-- Sortcut
	SUM(Sales) OVER(PARTITION BY OrderStatus ORDER BY OrderDate ROWS
	  2 PRECEDING) AS Total_Sales

FROM Sales.Orders
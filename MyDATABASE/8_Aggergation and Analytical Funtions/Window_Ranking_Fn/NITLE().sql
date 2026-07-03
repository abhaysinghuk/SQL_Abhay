SELECT
	OrderID,
	OrderDate,
	Sales,

	NTILE(3) OVER(ORDER BY Sales DESC) AS Grups 

FROM Sales.Orders
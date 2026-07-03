SELECT
	Sales,
	OrderID,
	DENSE_RANK() OVER(ORDER BY Sales DESC) AS RANK_
FROM Sales.Orders
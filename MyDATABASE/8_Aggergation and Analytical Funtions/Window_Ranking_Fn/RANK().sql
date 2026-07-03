--Rank the order based on their sales from highest to lowest

SELECT
	Sales,
	OrderID,
	RANK() OVER(ORDER BY Sales DESC) AS RANK_
FROM Sales.Orders
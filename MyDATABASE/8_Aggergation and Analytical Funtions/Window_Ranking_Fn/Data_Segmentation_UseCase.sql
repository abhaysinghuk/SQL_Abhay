-- Segment all orders into 3 catagories medium, high, low sales 

SELECT
	*,
	CASE WHEN Catagrys = 1 THEN 'High'
		 WHEN Catagrys = 2 THEN 'Medium'
		 WHEN Catagrys = 3 THEN 'Low'
	END SalesSegmentation

	FROM(
SELECT
	
	OrderID,
	Sales,
	NTILE(3) OVER(ORDER BY Sales DESC) AS Catagrys
FROM Sales.Orders)t
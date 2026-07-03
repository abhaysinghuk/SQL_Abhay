-- find the product which fall within the highest 40% of the price
SELECT 
*,
distrank * 100 AS  percent_

FROM(
SELECT
	ProductID,
	Price,
	CUME_DIST() OVER(ORDER BY Price DESC) AS distrank
FROM Sales.Products)t WHERE distrank <=0.4
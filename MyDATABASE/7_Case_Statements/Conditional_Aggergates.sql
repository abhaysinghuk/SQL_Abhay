--Count how many time each customer has made an order with sale greater then 30

SELECT
CustomerID,
OrderID,
Sales,


CASE
	WHEN Sales > 30 THEN 1
	ELSE 0

END 

FROM Sales.Orders
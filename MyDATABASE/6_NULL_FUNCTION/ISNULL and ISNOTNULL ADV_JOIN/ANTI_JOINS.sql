/* List all details for customers who have not placed any orders */

SELECT 
c.*,
o.OrderID
FROM Sales.Customers AS c

LEFT JOIN Sales.Orders o
ON c.CustomerID = o.CustomerID
WHERE o.CustomerID IS NULL


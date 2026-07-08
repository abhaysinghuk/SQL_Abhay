-- Show all customer details and find the total orders of each customers

SELECT
*,
(SELECT COUNT(*) FROM Sales.Orders o WHERE o.CustomerID = c.CustomerID ) AS Total_Sales
FROM Sales.Customers c
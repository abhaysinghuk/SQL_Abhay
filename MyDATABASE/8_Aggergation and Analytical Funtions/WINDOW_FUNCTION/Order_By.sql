-- Rank each order based on their sales from higest to lowest also provide details as orderID, orderDate

SELECT
OrderDate,
OrderID,
Sales,

RANK() OVER(ORDER BY Sales DESC) AS Sales_Rank



FROM Sales.Orders
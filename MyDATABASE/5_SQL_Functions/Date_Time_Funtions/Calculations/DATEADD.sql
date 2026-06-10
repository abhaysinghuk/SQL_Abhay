SELECT

OrderID,
CreationTime,

DATEADD(YEAR, 2, OrderDate)

FROM Sales.Orders
/* Orders are stored in sperated tables(order and orderArchive)
combine all order into one report without dublicates . Without using *      */

SELECT 
'Orders' AS Source_Table,
	   [ProductID]
      ,[CustomerID]
      ,[SalesPersonID]
      ,[OrderDate]
      ,[ShipDate]
      ,[OrderStatus]
      ,[ShipAddress]
      ,[BillAddress]
      ,[Quantity]
      ,[Sales]
      ,[CreationTime]

FROM Sales.Orders

UNION

SELECT 
'OrdersArchive' AS Source_Table,
       [ProductID]
      ,[CustomerID]
      ,[SalesPersonID]
      ,[OrderDate]
      ,[ShipDate]
      ,[OrderStatus]
      ,[ShipAddress]
      ,[BillAddress]
      ,[Quantity]
      ,[Sales]
      ,[CreationTime]
    
FROM Sales.OrdersArchive
ORDER BY OrderID
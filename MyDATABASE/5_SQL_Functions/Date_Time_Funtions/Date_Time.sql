SELECT 

OrderID,
CreationTime,
'2026-08-20' HardCoded,
GETDATE() AS curret_Date_Time


FROM Sales.Orders
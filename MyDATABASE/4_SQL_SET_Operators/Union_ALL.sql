/*Combin the data from empolyee and customers into one table including dublicates*/

SELECT 
FirstName,
LastName
FROM Sales.Customers

UNION ALL

SELECT 
FirstName,
LastName
FROM Sales.Employees
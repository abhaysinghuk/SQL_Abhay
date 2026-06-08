/*Find the empolyee who are not customer at the same time */

SELECT 
FirstName,
LastName
FROM Sales.Customers

EXCEPT

SELECT 
FirstName,
LastName
FROM Sales.Employees
-- ---> IN
-- Show the detail of order made by customers in germany

SELECT
	*
FROM Sales.Orders
WHERE  CustomerID IN (SELECT CustomerID FROM Sales.Customers WHERE Country = 'Germany');
---------------------------------------------------------------------------------------------

--  ----->   ANY Operator  '<'
-- Find female empolyee whose salary is greater then the salary of any male empolyee

SELECT
	EmployeeID,
	FirstName,
	Gender,
	Salary
FROM Sales.Employees
WHERE Gender = 'F'
AND Salary > ANY (SELECT Salary FROM Sales.Employees WHERE Gender = 'M');
--------------------------------------------------------------------------------------------

-- --> ALL
-- Find Female Empolyee whose salary is greater then the all male empolyee



SELECT
	EmployeeID,
	FirstName,
	Gender,
	Salary
FROM Sales.Employees
WHERE Gender = 'F'
AND Salary > ALL (SELECT Salary FROM Sales.Employees WHERE Gender = 'M');

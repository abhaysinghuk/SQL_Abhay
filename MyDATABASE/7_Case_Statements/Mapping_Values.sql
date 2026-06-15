/* Retrieve empolyee details with gender display as full text*/

SELECT

EmployeeID,
FirstName,
LastName,
Gender,

CASE
	WHEN Gender = 'M' THEN 'MALE'
	WHEN Gender = 'F' THEN 'FEMALE'
	ELSE 'NOT_ AVILABLE'
END AS Gender_Full_Name

FROM Sales.Employees

--------------------------------------------------

/* Retrieve customer detail with abberivated country code */

SELECT
	CustomerID,
	FirstName,
	LastName,
	Country,
	CASE
		WHEN Country = 'Germany' THEN 'DE'
		WHEN Country = 'USA' THEN 'US'
		ELSE 'n/a'
	END AS Abbervations

FROM Sales.Customers;

-- This help to know how many different countries are there
SELECT DISTINCT Country
FROM Sales.Customers;


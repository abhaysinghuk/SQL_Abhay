-- provide a view for the EU sales teams that combine from all tables and execude data related to USA
CREATE VIEW Combine_Info_Of_Tables_without_USA AS
(
	SELECT
		o.OrderID,
		o.OrderDate,
		o.Sales,

		p.Product,
		p.Category,

		COALESCE(c.FirstName,'') + ' ' + COALESCE(c.LastName,'') AS Customer_Name,
		c.Country AS Customer_Country,
		COALESCE(e.FirstName,'') + ' ' + COALESCE(e.LastName,'') AS Sales_Name,
		e.Department,
		o.Quantity
	FROM Sales.Orders As o
	LEFT JOIN Sales.Products AS p
	ON p.ProductID = o.ProductID
	LEFT JOIN Sales.Customers AS c
	ON c.CustomerID = o.CustomerID
	LEFT JOIN Sales.Employees AS e
	ON e.EmployeeID = o.SalesPersonID
	WHERE c.Country != 'USA'
	)


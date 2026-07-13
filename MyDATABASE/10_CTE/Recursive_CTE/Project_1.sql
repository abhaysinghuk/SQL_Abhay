-- Show that the empolyee hierarchy by displaying each empolyee level within the organization

WITH CTE_Empoly_Hiery AS
(
	-- Anchor Query
	SELECT
		EmployeeID,
		FirstName,
		ManagerID,
		1 AS Level
	FROM Sales.Employees
	WHERE ManagerID IS NULL

	UNION ALL

	-- Recursive Query

	SELECT
		e.EmployeeID,
		e.FirstName,
		e.ManagerID,
		Level + 1

	FROM Sales.Employees AS e
	INNER JOIN CTE_Empoly_Hiery AS ceh -- reusing cte to make the itrations
	ON e.ManagerID = ceh.EmployeeID



)

-- Main Query

SELECT
	*
FROM CTE_Empoly_Hiery

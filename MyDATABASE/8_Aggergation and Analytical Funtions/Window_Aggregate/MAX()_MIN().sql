-- Find the highest and the lowest sales of all orders
-- Find the highest and the lowest sales for each product
-- Additionally provide details such as orderID and orderDate

SELECT
	OrderDate,
	OrderID,
	Sales,
	ProductID,

	MAX(Sales) OVER() AS Highest_all_orders,
	MIN(Sales) OVER() AS Lowest_all_orders,

	MAX(Sales) OVER(PARTITION BY ProductID) AS Highest_each_product,
	MIN(Sales) OVER(PARTITION BY ProductID) AS Lowest_each_product
FROM Sales.Orders

-----------------------------------------------------------------------------------------------

-- Show the empolyee how has the highest salaries
SELECT
*
FROM(
	SELECT

		*,

		MAX(Salary) OVER() AS Max_salary

	

	FROM Sales.Employees
	)t WHERE Salary = Max_salary

----------------------------------------------------------------------------------------------------

-- Calculate the deviation of each sales from both the minimum and maximum sales amount

SELECT
	OrderDate,
	OrderID,
	Sales,
	ProductID,

	MAX(Sales) OVER() AS Highest_all_orders,
	MIN(Sales) OVER() AS Lowest_all_orders,

	MAX(Sales) OVER(PARTITION BY ProductID) AS Highest_each_product,
	MIN(Sales) OVER(PARTITION BY ProductID) AS Lowest_each_product,

	Sales - MIN(Sales) OVER() AS Deviation_From_min,
	MAX(Sales) OVER() - Sales AS Deviation_from_max
FROM Sales.Orders


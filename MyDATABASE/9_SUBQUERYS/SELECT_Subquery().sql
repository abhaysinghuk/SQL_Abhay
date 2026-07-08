-- Show the product id, names, price and total number of orders

SELECT
	ProductID,
	Product,
	Price,
	
	-- Subquey ( Scaler value means single value came)
	(SELECT COUNT(*) Total_Orders FROM Sales.Products) AS Total_Products

FROM Sales.Products


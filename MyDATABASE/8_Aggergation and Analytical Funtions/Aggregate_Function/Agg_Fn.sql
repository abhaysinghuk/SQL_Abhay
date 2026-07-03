

-- Find the avg, MAX, MIN

SELECT
	customer_id,
	COUNT(*) AS Total_No_orders,
	SUM(sales) AS Total_sales,
	AVG(sales) AS Avg_Sales,
	MAX(sales) AS MAx_sales,
	MIN(sales) AS Min_sales
FROM orders
GROUP BY customer_id


/* Find the avg sales across all orders 
   Find the avg sales for each product
   Additionally provide details such as orderID and orderDate*/

   SELECT

   Sales,
   OrderDate,
   OrderID,
   ProductID,

   AVG(Sales) OVER() AS AVG_Sales,
   AVG(Sales) OVER(PARTITION BY ProductID) AS Avg_ParoductID_Sales 

   FROM Sales.Orders
   -----------------------------------------------------------------------------

   /* Find Avg score of customers, Additionally provide details customerID and lastname*/

   SELECT

	   LastName,
	   CustomerID,
	   Score,
	AVG(Score) OVER() AS Avg_Score,
	COALESCE(Score,0),
 	AVG(COALESCE(Score,0)) OVER() AS Avg_Score_Handle_NULL
	
   FROM Sales.Customers
   -----------------------------------------------------------------------

   /* Find all order where sales is higher then the avg sales across all orders */
   -- ** Window fn cannot be use the WHERE
   -- So we will use the sub query for sales > avg sales 
   SELECT
   *
   FROM(
	   SELECT

	   Sales,
	   ProductID,
	   OrderID,


	   AVG(COALESCE(Sales,0)) OVER() AS Avg_Sales
	   

	   FROM Sales.Orders
	   )t WHERE Sales > Avg_Sales 
	  
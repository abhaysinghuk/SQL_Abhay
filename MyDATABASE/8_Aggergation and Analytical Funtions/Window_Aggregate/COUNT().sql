/* Find total no. of orders all provide details oderID and orderDate
   Find total no. of order for each Customers */

SELECT 

OrderID,
OrderDate,
CustomerID,
COUNT(*) OVER() AS Total_Orders, -- Its overall analysis 
COUNT(*) OVER(PARTITION BY CustomerID) AS Total_Order_Under_CustomerID

FROM Sales.Orders


----------------------------------------------------------------------------------

/* Find total number of customers additionally provide all customers details
   Find total no. of stores for the customers */


SELECT
*,
COUNT(*) OVER() AS Total_Customers_Star,
COUNT(1) OVER() AS Total_Customers_1,
COUNT(Score) OVER() AS Total_Score,
COUNT(Country) OVER() AS Total_Country
FROM Sales.Customers

-------------------------------------------------------------------------------------------

/* Check wheather the table 'Orders' conatains any dublicates rows*/
SELECT
*
FROM(
	SELECT
		OrderID,
		COUNT(*) OVER(PARTITION BY OrderID) AS cheak_PK
	FROM Sales.OrdersArchive
)t
WHERE cheak_PK > 1


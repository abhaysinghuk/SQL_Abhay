SELECT
OrderDate,
CreationTime,
FORMAT(CreationTime, 'MM-dd-yy') AS USA_ZONE,
FORMAT(CreationTime, 'dd-MM-yyyy') AS Europe_ZONE,

-------------------------------------------------------
FORMAT(CreationTime, 'dd') AS Date_,
FORMAT(CreationTime, 'ddd') AS Day_,
FORMAT(CreationTime, 'dddd') AS Full_name,
FORMAT(CreationTime, 'MM') AS No_month,
FORMAT(CreationTime, 'MMM') AS half_month,
FORMAT(CreationTime, 'MMMM')AS Full_month,
FORMAT(CreationTime, 'yyyy') AS Year_,

FORMAT(CreationTime, 'dd/mm/yy')
FROM Sales.Orders

----------------------------------------------------------------------

/* Show Creation time using this formate 
Day Wed Jan Q1 2026 12:34:56 PM  
*/

SELECT
CreationTime,

'Day ' + FORMAT(CreationTime, 'ddd MMM') +  ' Q' + DATENAME(quarter, CreationTime)
+ ' ' + FORMAT(CreationTime, 'yyyy hh:mm:ss tt')  


FROM Sales.Orders
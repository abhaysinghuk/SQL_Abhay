SELECT

--CONVERT(INT, '123') AS String_to_int,
--CONVERT(DATE, '2026-06-10') AS Date_String_to_date,
CreationTime,
CONVERT(VARCHAR, CreationTime, 32) AS USA_Standerd,
CONVERT(DATE, CreationTime) AS Date_time_to_Date

FROM Sales.Orders
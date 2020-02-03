CREATE OR ALTER VIEW vwEventsByCategory AS

SELECT TOP 100 PERCENT
		 
		 
		 COUNT(t1.CategoryID) AS CategoryCount
		,t2.CategoryName
	FROM tblEvent T1
		INNER JOIN tblCategory T2
ON T1.CategoryID = T2.CategoryID
	GROUP BY t2.CategoryName
	ORDER BY CategoryCount ASC
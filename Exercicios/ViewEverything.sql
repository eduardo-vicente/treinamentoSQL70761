CREATE OR ALTER VIEW vwEverything AS


SELECT 
			 T2.CategoryName
			,T4.ContinentName
			,T3.CountryName
			,T1.EventName
			,T1.EventDate

	FROM tblEvent T1
		INNER JOIN tblCategory T2
ON T1.CategoryID = T2.CategoryID
		INNER JOIN tblCountry T3
ON T1.CountryID = T3.CountryID 
		INNER JOIN tblContinent T4
ON T4.ContinentID = T3.ContinentID






--SELECT 

--			 CategoryName
--			,COUNT(CategoryName) AS NumEvents


--	FROM vwEverything 
--	WHERE ContinentName = 'AFRICA'
--	GROUP BY CategoryName 
--	ORDER BY NumEvents DESC

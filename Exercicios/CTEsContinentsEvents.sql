WITH Continents AS 
(

	SELECT DISTINCT 
			 
			 T1.ContinentName 
			,T2.CountryName
			,COUNT(T1.ContinentId) AS NumContry
		FROM dbo.tblContinent T1
		INNER JOIN tblCountry T2 ON T1.ContinentID = T2.ContinentID
		
		GROUP BY ContinentName,T2.CountryName
		HAVING COUNT(T1.ContinentId) > 3

)


, FewEvents AS 
(
	SELECT DISTINCT
		  
		  
		  T3.ContinentName
		 ,T2.CountryName
		 ,COUNT(T1.EventName) AS NumEvent
		
		FROM tblEvent T1 
		INNER JOIN tblCountry T2 ON T1.CountryID = T2.CountryID 
		INNER JOIN tblContinent T3 ON T2.ContinentID = T3.ContinentID
		GROUP BY T1.CountryID,T2.CountryName,T3.ContinentName
		HAVING COUNT(T1.EventName) <= 10

		UNION ALL

		SELECT * FROM Continents

)

SELECT * FROM FewEvents 
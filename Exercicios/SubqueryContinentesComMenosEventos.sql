SELECT 
		 T3.ContinentName
		,T1.EventName
	FROM tblEvent T1
		INNER JOIN tblCountry T2
ON T1.CountryID = T2.CountryID	
		INNER JOIN tblContinent T3
ON T3.ContinentID = T2.ContinentID
	WHERE T3.ContinentName 
			IN (

		SELECT TOP 3 T3.ContinentName
	
		FROM tblEvent T1
			INNER JOIN tblCountry T2
ON T1.CountryID = T2.CountryID	
			INNER JOIN tblContinent T3
ON T3.ContinentID = T2.ContinentID

		GROUP BY T3.ContinentName
		ORDER BY COUNT(T3.ContinentName) ASC

)

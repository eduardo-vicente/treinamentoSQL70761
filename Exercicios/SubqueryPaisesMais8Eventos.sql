SELECT CountryName FROM (

	SELECT
		 
			 T2.CountryName
			,COUNT(T2.CountryName) AS CountCountry
		FROM tblEvent T1
			INNER JOIN tblCountry T2
	ON T1.CountryID = T2.CountryID
		GROUP BY T2.CountryName

) X 
WHERE CountCountry > 8
ORDER BY CountryName

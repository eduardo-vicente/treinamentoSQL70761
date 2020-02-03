SELECT 
			  T1.*
			 ,T2.CountryName

		FROM tblEvent	T1
			INNER JOIN tblCountry T2
	ON T2.CountryID = T1.CountryID
			INNER JOIN tblCategory T3
	ON T3.CategoryID = T1.CategoryID
		WHERE T1.CountryID 
				NOT IN (
						SELECT TOP 30 CountryID		FROM tblCountry		ORDER BY CountryName	DESC) 
		
				AND T1.CategoryID 

				NOT IN (
						SELECT TOP 15 CategoryID	FROM tblCategory	ORDER BY CategoryName	DESC)

		ORDER BY T2.CountryName DESC
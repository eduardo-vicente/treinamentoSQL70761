USE WorldEvents




SELECT
	 t2.CountryName
	,EventName

	FROM (

SELECT 
		
		 t1.EventName
		,t1.CountryID
	

	FROM tblEvent t1
	WHERE RIGHT(t1.EventName, 1) IN ('n','o','p','q','r','s','t','u','v','w','x','y','z')
) X

INNER JOIN tblCountry t2 ON t2.CountryID = X.CountryID



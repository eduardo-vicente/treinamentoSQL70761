CREATE OR ALTER PROCEDURE spGetEventsByYear @anoInicial DATE, @anoFinal DATE

AS 
BEGIN
	SELECT 
		 T1.EventName
		,T1.EventDate
		,T2.CountryName

	FROM tblEvent T1
		INNER JOIN tblCountry T2
ON T1.CountryID = T2.CountryID
	WHERE T1.EventDate BETWEEN @anoInicial AND @anoFinal
	ORDER BY T1.EventDate DESC
END

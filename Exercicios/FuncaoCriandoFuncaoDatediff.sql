CREATE OR ALTER FUNCTION dbo.fnReign (@dataInicial datetime, @dataFinal datetime
)
RETURNS INT

AS 
BEGIN
	DECLARE @intervalo int;

	SET @intervalo = DATEDIFF(day,@dataInicial, @dataFinal);

	RETURN @intervalo
END

----

SELECT
		 t1.DoctorName
		,dbo.fnReign(t1.FirstEpisodeDate, t1.LastEpisodeDate) AS [Reign in Days]

	FROM tblDoctor t1
	ORDER BY [Reign in Days] DESC 
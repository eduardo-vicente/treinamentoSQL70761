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


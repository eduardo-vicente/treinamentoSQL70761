
CREATE OR ALTER FUNCTION fnLetterCount(@First varchar(100), @Second varchar(100))
RETURNS int
AS

BEGIN
	declare @lenFirst int
	declare @lenSecond int
	declare @lenTotal int

	set @lenFirst = LEN(@First)
	set @lenSecond = LEN(@Second)
	set @lenTotal = @lenFirst + @lenSecond

	return @lenTotal


END
GO
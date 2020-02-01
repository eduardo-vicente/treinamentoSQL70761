WITH CategorySpace AS
(

SELECT DISTINCT 
		 T3.CountryName
		,T1.CategoryName
	FROM tblCategory T1
	INNER JOIN tblEvent T2 ON T1.CategoryID = T2.CategoryID
	INNER JOIN tblCountry T3 ON T3.CountryID = T2.CountryID
	WHERE T3.CountryName = 'SPACE'

)

, CountryNotSpace AS 
(
SELECT 
		 T3.CountryName
		,T1.CategoryName

	FROM tblCategory T1
	INNER JOIN tblEvent T2 ON T1.CategoryID = T2.CategoryID
	INNER JOIN tblCountry T3 ON T3.CountryID = T2.CountryID
	WHERE T3.CountryName <> 'SPACE'

)

--O EXERCICIO PEDE PARA RETORNARMOS PAISES QUE TIVERAM APENAS EVENTOS TERRESTRIAIS, MAS QUE COMPARTILHAM A MESMA CATEGORIA DE EVENTOS OCORRIDOS NO ESPACO


SELECT DISTINCT 
	 T2.CountryName
	FROM CategorySpace T1
	INNER JOIN CountryNotSpace T2 ON T1.CategoryName = T2.CategoryName
WITH CountEvent AS 
(
SELECT TOP (3)
	  
	  COUNT(T1.CountryID) AS CountEvent
	 ,T2.CountryName
	 ,T1.CountryID
	 
	FROM tblEvent T1
	INNER JOIN tblCountry T2 ON T1.CountryID = T2.CountryID
	GROUP BY T1.CountryID,T2.CountryName
	ORDER BY COUNT(T1.CountryID) DESC
)

, CountCategory AS
(
 SELECT TOP (3)
		
		 COUNT(T2.CategoryName) AS CountCat
		,T2.CategoryName
		,T2.CategoryID
		
	FROM tblEvent T1
	INNER JOIN tblCategory T2 ON T1.CategoryID = T2.CategoryID
	GROUP BY T2.CategoryName,T2.CategoryID
	ORDER BY COUNT(T2.CategoryName) DESC

)

--Aqui o exercicio pede para mostrarmos todas combinacoes possiveis entre países e categorias de evento. eles sugerem cross join

SELECT 
	 ce.CountryID
	,cy.CategoryID 

	FROM 
	CountCategory as cy
	CROSS JOIN CountEvent ce


	
	


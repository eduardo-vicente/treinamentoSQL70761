
WITH FLevel AS 
(
SELECT 
	
	 t1.MenuId
	,t1.MenuName
	,CASE WHEN SortOrder = 0 THEN 'Top' END AS [BreadCrumbs]	

	FROM dbo.tblMenu t1
)


, SLevel AS 
(
	SELECT 
		 t2.MenuId
		,t2.MenuName
		,(CASE WHEN T2.MenuName = 'HOME PAGE'	THEN	'Top' ELSE
		 (CASE WHEN T2.MenuName LIKE 'HOME -%'	THEN	'Top > Home Page' 
		END)END)
						AS BreadCrumbs

	FROM FLevel t2
)


, TLevel AS 
(
SELECT 
		 t2.MenuId
		,t2.MenuName
		,(CASE WHEN T2.MenuName = 'HOME PAGE'		THEN	'Top'				ELSE
		 (CASE WHEN T2.MenuName LIKE 'HOME -%'		THEN	'Top > Home Page'	ELSE
		 (CASE WHEN T2.MenuName LIKE 'HELP US -%'	THEN	'Top > Home Page > Home - Help Us'
		END)END)END)
						AS BreadCrumbs

	FROM SLevel t2


)

, FourthLevel AS 

(
SELECT 
		 t2.MenuId
		,t2.MenuName
		,(CASE WHEN T2.MenuName = 'HOME PAGE'		THEN	'Top'									ELSE
		 (CASE WHEN T2.MenuName LIKE 'HOME -%'		THEN	'Top > Home Page'						ELSE
		 (CASE WHEN T2.MenuName LIKE 'HELP US -%'	THEN	'Top > Home Page > Home - Help Us'		ELSE
		 (CASE WHEN T2.MenuName LIKE 'SCARECROWS%'	THEN	'Top > Home Page > Home - Scarecrows'	
		END)END)END)END)
						AS BreadCrumbs

	FROM TLevel t2

)

, FifthLevel AS 

(
SELECT 
		 t2.MenuId
		,t2.MenuName
		,(CASE WHEN T2.MenuName = 'HOME PAGE'				THEN	'Top'											ELSE
		 (CASE WHEN T2.MenuName LIKE 'HOME -%'				THEN	'Top > Home Page'								ELSE
		 (CASE WHEN T2.MenuName LIKE 'HELP US -%'			THEN	'Top > Home Page > Home - Help Us'				ELSE
		 (CASE WHEN T2.MenuName LIKE 'SCARECROWS%'			THEN	'Top > Home Page > Home - Scarecrows'			ELSE
		 (CASE WHEN T2.MenuName LIKE 'FELL RACE -%'			THEN	'Top > Home Page > Home - Fell Race'			ELSE
		 (CASE WHEN T2.MenuName LIKE 'Photos -%'			THEN	'Top > Home Page > Home - Photos'				ELSE
		 (CASE WHEN T2.MenuName LIKE 'ABOUT CARNIVAL -%'	THEN	'Top > Home Page > Home - About Carnival'		
		END)END)END)END)END)END)END)
						AS BreadCrumbs

	FROM FourthLevel t2

)

select * from FifthLevel

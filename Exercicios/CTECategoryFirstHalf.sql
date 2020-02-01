WITH FirstHalfCTE AS

(
SELECT
	 EventName
	,CategoryID
	FROM tblEvent t1
	WHERE LEFT(t1.EventName,1) LIKE '[A-M]'
)


SELECT
		 t1.CategoryName
		,t2.EventName

	FROM tblCategory t1 
	INNER JOIN FirstHalfCTE t2 ON t1.CategoryID = t2.CategoryID
	
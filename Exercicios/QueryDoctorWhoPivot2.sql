
SELECT DISTINCT 
		 
		LEFT(P.EpisodeType,CHARINDEX(' ',P.EpisodeType, 0)) 

	FROM tblEpisode P

DECLARE @oldarray table([Type] varchar(30))

INSERT INTO @oldarray 
		
		SELECT DISTINCT
		 
		LEFT(P.EpisodeType,CHARINDEX(' ',P.EpisodeType, 0)) 

		FROM tblEpisode P

		-------------------

			   		 
WITH PivotData AS(

	SELECT DISTINCT
		 t1.DoctorName
		,LEFT(t2.EpisodeType,CHARINDEX(' ',t2.EpisodeType, 0)) AS [Type]
		,COUNT(t2.EpisodeId)								   AS NumEpisode

		FROM tblDoctor t1 INNER JOIN tblEpisode t2 ON t1.DoctorId = t2.DoctorId
		GROUP BY t1.DoctorName,LEFT(t2.EpisodeType,CHARINDEX(' ',t2.EpisodeType, 0))


)

SELECT 
		 DoctorName
		,ISNULL([50th]		,0)				AS	[50th]
		,ISNULL([Autumn]	,0)				AS	[Autumn] 
		,ISNULL([Christmas]	,0)				AS	[Christmas]
		,ISNULL([Easter]	,0)				AS	[Easter]
		,ISNULL([Normal]	,0)				AS	[Normal]
		

		FROM PivotData PIVOT (SUM(NumEpisode) FOR [Type] IN ([50th],[Autumn],[Christmas],[Easter],[Normal]) ) AS P











WITH PivotData AS (

SELECT 
	 SUBSTRING(CONVERT(varchar(10),p.EpisodeDate, 112),0,5) AS [EpisodeYear]
	,SeriesNumber
	,EpisodeId
  FROM [DoctorWho].[dbo].[tblEpisode] p

)

SELECT
		EpisodeYear
		,[1]
		,[2]
		,[3]
		,[4]
		,[5]

		FROM PivotData

		PIVOT(COUNT(Episodeid) FOR SeriesNumber IN ([1],[2],[3],[4],[5]) ) AS P
  

  
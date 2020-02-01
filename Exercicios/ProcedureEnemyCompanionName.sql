CREATE OR ALTER 

PROCEDURE spSummariseEpisodes

AS 
BEGIN

WITH CompanionName AS 
(

	SELECT TOP (3)
		 CompanionName
		,COUNT(t2.EpisodeCompanionId)		AS Episodes
		

		FROM tblCompanion t1 INNER JOIN tblEpisodeCompanion t2 ON t1.CompanionId = t2.CompanionId
		GROUP BY CompanionName
		ORDER BY Episodes DESC

)

, EnemyName AS
(
	SELECT TOP (3)
		 
		 EnemyName
		,COUNT(t2.EpisodeEnemyId)	AS Episodes

		FROM tblEnemy t1 INNER JOIN tblEpisodeEnemy t2 ON t1.EnemyId = t2.EnemyId
		GROUP BY EnemyName
		ORDER BY Episodes DESC

		
)
	
END
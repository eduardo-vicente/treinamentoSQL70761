DECLARE @episodeId int = 15
DECLARE @enemyList varchar(100) = ''

SELECT 
		T2.EnemyName

	FROM tblEpisodeEnemy T1
		INNER JOIN tblEnemy T2 
ON T1.EnemyId = T2.EnemyId
	WHERE T1.EpisodeId = @episodeId

SET @enemyList = 'Face of Boe, Sisters of Plenitude, Lady Cassandra'

SELECT @episodeId as EpisodeId, @enemyList AS Enemies
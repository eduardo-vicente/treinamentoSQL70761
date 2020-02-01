WITH Doctors AS 
(
SELECT
		T1.EpisodeId
	FROM tblEpisode T1
	INNER JOIN tblDoctor T2
ON T1.DoctorId = T2.DoctorId
	WHERE T2.DoctorName <> 'DAVID TENNANT'

)


, Companion AS 
(
SELECT
	
		T1.EpisodeId

	FROM tblEpisodeCompanion T1
	INNER JOIN tblCompanion T2
ON T1.CompanionId = T2.CompanionId
	WHERE T2.CompanionName = 'ROSE TYLER'

)

SELECT DISTINCT

		T2.EnemyName
		
	FROM Doctors 

	INNER JOIN Companion 
ON Doctors.EpisodeId = Companion.EpisodeId 
	INNER JOIN tblEpisodeEnemy T1 
ON T1.EpisodeId = Doctors.EpisodeId
	INNER JOIN tblEnemy T2 
ON T2.EnemyId = T1.EnemyId



--da pra fazer isso com um unico SELECT, assim:
--SELECT DISTINCT
--	T6.EnemyName
--	FROM tblEpisode T1
--	INNER JOIN tblDoctor T2 ON T1.DoctorId = T2.DoctorId
--	INNER JOIN tblEpisodeCompanion T3 ON T3.EpisodeId = T1.EpisodeId
--	INNER JOIN tblCompanion T4 ON T3.CompanionId = T4.CompanionId
--	INNER JOIN tblEpisodeEnemy T5 ON T5.EpisodeId = T1.EpisodeId
--	INNER JOIN tblEnemy T6 ON T6.EnemyId = T5.EnemyId
--	WHERE T2.DoctorName <> 'DAVID TENNANT' AND T4.CompanionName = 'ROSE TYLER'

--com CTEs conseguimos organizar a logica de um jeito melhor e mais facil do que esse monte de join
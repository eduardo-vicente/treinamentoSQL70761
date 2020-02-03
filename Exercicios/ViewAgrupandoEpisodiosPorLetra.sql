CREATE or ALTER VIEW vwEpisodesByFirstLetterF AS

SELECT
		 t1.AuthorName
		,t3.DoctorName
		,t2.Title
		,t2.EpisodeDate

	FROM tblAuthor t1
		INNER JOIN tblEpisode t2 
ON t1.AuthorId = t2.AuthorId
		INNER JOIN tblDoctor t3
ON t3.DoctorId = t1.AuthorId

	WHERE t2.Title LIKE 'F%'
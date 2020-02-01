CREATE OR ALTER 

--PROC spMoffats
PROC spRussell

AS 
BEGIN
		--SELECT 
		--		t2.Title
		--	FROM tblAuthor t1 INNER JOIN tblEpisode t2 ON t1.AuthorId = t2.AuthorId
		--	WHERE t1.AuthorName = 'Steven Moffat'
		--	GROUP BY t2.Title, t2.EpisodeDate
		--	ORDER BY t2.EpisodeDate DESC

		SELECT 
				t2.Title
			FROM tblAuthor t1 INNER JOIN tblEpisode t2 ON t1.AuthorId = t2.AuthorId
			WHERE t1.AuthorName LIKE 'Russel%'
			GROUP BY t2.Title, t2.EpisodeDate
			ORDER BY t2.EpisodeDate DESC




END
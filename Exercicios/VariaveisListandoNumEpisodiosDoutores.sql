DECLARE @DoctorNum int = 5
DECLARE @DoctorName varchar(100)
DECLARE @EpisodesNum int 

print'Results for doctor number ' + CONVERT(varchar(1),@DoctorNum)
print ''
print '---------------'

print ''

SET @DoctorName = (SELECT DISTINCT DoctorName FROM tblDoctor WHERE DoctorId = @DoctorNum)

print 'Doctor Name: ' + @DoctorName

print ''

SET @EpisodesNum = (SELECT COUNT(T2.Title) AS NumEpisodes FROM tblDoctor T1 INNER JOIN tblEpisode T2 ON T1.DoctorId = T2.DoctorId WHERE T1.DoctorId = @DoctorNum)

print 'Episodes appeared in: ' + CONVERT(varchar(2),@EpisodesNum)
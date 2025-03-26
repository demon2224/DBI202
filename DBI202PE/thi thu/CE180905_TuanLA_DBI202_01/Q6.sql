SELECT a.Id AssessmentID, 
       a.Type, 
       a.CourseId, 
       m.Mark
FROM Assessments a
JOIN Marks m ON a.Id = m.AssessmentId
WHERE m.Mark = (SELECT MAX(Mark) FROM Marks)
ORDER BY a.Id;

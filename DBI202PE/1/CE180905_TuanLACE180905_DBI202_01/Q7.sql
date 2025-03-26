SELECT a.Id AssessmentID, 
       a.Type, 
       a.CourseId, 
       ROUND(AVG(m.Mark), 0) Avg_Mark
FROM Assessments a
JOIN Marks m ON a.Id = m.AssessmentId
GROUP BY a.Id, a.Type, a.CourseId
HAVING AVG(m.Mark) < 4.0
ORDER BY AVG(m.Mark);

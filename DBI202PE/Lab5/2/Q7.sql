SELECT 
    S.id AS StudentId,
    S.Name AS StudentName,
    A.id AS AssessmentID,
    A.Type,
    A.CourseId,
    AVG(M.Mark) AS Avg_Mark
FROM 
    Students S
JOIN 
    Enroll E ON S.id = E.StudentId
JOIN 
    Marks M ON E.EnrollId = M.EnrollId
JOIN 
    Assessments A ON M.AssessmentId = A.id
GROUP BY 
    S.id, S.Name, A.id, A.Type, A.CourseId
HAVING 
    AVG(M.Mark) >= 9.8
ORDER BY 
    Avg_Mark DESC;
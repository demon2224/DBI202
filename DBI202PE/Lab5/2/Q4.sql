SELECT 
    S.id AS StudentId,
    S.Name AS StudentName,
    M.Mark,
    S.Department
FROM 
    Students S
JOIN 
    Enroll E ON S.id = E.StudentId
JOIN 
    Marks M ON E.EnrollId = M.EnrollId
WHERE 
    S.Department = 'SE'
    AND M.Mark = (SELECT MAX(Mark) FROM Marks M2 JOIN Enroll E2 ON M2.EnrollId = E2.EnrollId JOIN Students S2 ON E2.StudentId = S2.id WHERE S2.Department = 'SE')
ORDER BY 
    S.id;
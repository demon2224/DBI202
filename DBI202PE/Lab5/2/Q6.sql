SELECT 
    S.id AS StudentId,
    S.Name AS StudentName,
    E.EnrollId,
    Sem.Code AS CodeName,
    S.Department,
    Sem.BeginDate
FROM 
    Students S
JOIN 
    Enroll E ON S.id = E.StudentId
JOIN 
    Semesters Sem ON E.SemesterId = Sem.id
WHERE 
    E.EnrollId BETWEEN 10 AND 20
    AND S.Department = 'SE'
ORDER BY 
    Sem.BeginDate DESC;
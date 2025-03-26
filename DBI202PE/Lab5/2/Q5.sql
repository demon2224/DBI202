WITH DistinctStudents AS (
    SELECT 
        S.id AS StudentId,
        S.Name AS StudentName,
        E.SemesterId AS Code,
        S.Department
    FROM 
        Students S
    JOIN 
        Enroll E ON S.id = E.StudentId
    JOIN 
        Semesters Sem ON E.SemesterId = Sem.id
    WHERE 
        Sem.Code = 'Su2022' -- S? d?ng Code t? b?ng Semesters
        AND S.Department = 'SE'
)
SELECT 
    StudentId,
    StudentName,
    Code,
    Department,
    (SELECT COUNT(DISTINCT StudentId) FROM DistinctStudents) AS NumberOfStudents
FROM 
    DistinctStudents
ORDER BY 
    StudentId;
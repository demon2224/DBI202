SELECT s.Id, 
       s.Name StudentName, 
       sem.Code, 
       s.Department, 
       COUNT(DISTINCT s.Id) NumberOfStudents
FROM Students s
JOIN Enroll e ON s.Id = e.StudentId
JOIN Semesters sem ON e.SemesterId = sem.Id
WHERE sem.Code = 'Fa2022' 
AND s.Department = 'AI'
GROUP BY s.Id, s.Name, sem.Code, s.Department
ORDER BY s.Id;

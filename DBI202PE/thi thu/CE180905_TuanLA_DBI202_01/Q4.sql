SELECT s.Id StudentId, s.Name StudentName, m.Mark, s.Department
FROM Students s
JOIN Enroll e ON s.Id = e.StudentId
JOIN Marks m ON e.EnrollId = m.EnrollId
WHERE m.Mark = 10.0
ORDER BY s.Id;

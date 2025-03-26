SELECT 
    id AS StudentId,
    Name,
    Gender,
    Country,
    Department
FROM 
    Students
WHERE 
    id >= 70
    AND Department = 'AI';
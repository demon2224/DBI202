SELECT 
    CONCAT(Fname, ', ', Lname) AS Full_name,
    Salary,
    Dependent_name
FROM 
    EMPLOYEE E
JOIN 
    DEPENDENT D ON E.Ssn = D.Essn
WHERE 
    D.Dependent_name = 'Beckham'
    AND E.Salary BETWEEN 50000 AND 85000;
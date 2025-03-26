SELECT 
    E.Fname AS First_Name,
    E.Lname AS Last_Name,
    E.Bdate AS Birthday,
    D.Dependent_name,
    (SELECT MAX(Salary) FROM EMPLOYEE WHERE Lname = 'Tiny') AS MAX_salary
FROM 
    EMPLOYEE E
JOIN 
    DEPENDENT D ON E.Ssn = D.Essn
WHERE 
    E.Lname = 'Tiny';
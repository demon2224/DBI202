SELECT 
    CONCAT(E.Fname, ', ', E.Lname) AS Full_name,
    E.Bdate,
    W.Hours,
    P.Plocation
FROM 
    EMPLOYEE E
JOIN 
    WORKS_ON W ON E.Ssn = W.Essn
JOIN 
    PROJECT P ON W.Pno = P.Pnumber
WHERE 
    MONTH(E.Bdate) = 5;
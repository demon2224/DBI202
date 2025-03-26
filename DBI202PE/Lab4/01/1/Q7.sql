SELECT 
    E.Ssn AS Employee_id,
    E.Fname AS First_Name,
    SUM(W.Hours) AS Number_of_Hours
FROM 
    EMPLOYEE E
JOIN 
    WORKS_ON W ON E.Ssn = W.Essn
GROUP BY 
    E.Ssn, E.Fname
HAVING 
    SUM(W.Hours) > 2
ORDER BY 
    Number_of_Hours DESC;
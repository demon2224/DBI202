SELECT 
    d.DoctorID,
    d.FirstName,
    d.LastName,
    dept.Name AS DepartmentName,
    COUNT(a.AppointmentID) AS NumberOfAppointments
FROM 
    Doctors d
JOIN 
    Departments dept ON d.DepartmentID = dept.DepartmentID
LEFT JOIN 
    Appointments a ON d.DoctorID = a.DoctorID 
                    AND YEAR(a.AppointmentDate) = 2023 
                    AND a.Status = 'Completed'
WHERE 
    dept.Name IN ('Pediatrics', 'General Surgery')
GROUP BY 
    d.DoctorID, d.FirstName, d.LastName, dept.Name
ORDER BY 
    NumberOfAppointments DESC, 
    d.DoctorID ASC;

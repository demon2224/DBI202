SELECT DISTINCT
    p.PatientID,
    p.FirstName,
    p.LastName,
    p.DateOfBirth,
    p.Email
FROM 
    Patients p
JOIN 
    Appointments a ON p.PatientID = a.PatientID
JOIN 
    Doctors d ON a.DoctorID = d.DoctorID
JOIN 
    Departments dept ON d.DepartmentID = dept.DepartmentID
WHERE 
    dept.Name = 'Cardiology'
    AND YEAR(a.AppointmentDate) BETWEEN 2021 AND 2024
ORDER BY 
    p.PatientID;

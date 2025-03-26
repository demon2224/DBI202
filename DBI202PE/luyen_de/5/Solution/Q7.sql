SELECT d.DepartmentID, 
       d.Name, 
       YEAR(a.AppointmentDate) AS 'Year', 
       SUM(t.Cost) AS TotalCost
FROM Departments d
     JOIN Doctors dt ON d.DepartmentID = dt.DepartmentID
     LEFT JOIN Appointments a ON dt.DoctorID = a.DoctorID
     LEFT JOIN AppointmentTests ate ON a.AppointmentID = ate.AppointmentID
     LEFT JOIN Tests t ON ate.TestID = t.TestID
WHERE d.Name IN ('Cardiology', 'Pediatrics', 'Dermatology', 'Oncology', 'Neurology')
GROUP BY d.DepartmentID, d.Name, YEAR(a.AppointmentDate)
ORDER BY YEAR(a.AppointmentDate) ASC, d.Name ASC;

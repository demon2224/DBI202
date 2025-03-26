SELECT DISTINCT p.PatientID, p.FirstName, p.LastName, p.DateOfBirth, p.Email
FROM Departments d JOIN Doctors dt ON (d.DepartmentID = dt.DepartmentID)
				   JOIN Appointments a ON (a.DoctorID = dt.DoctorID)
				   JOIN Patients p ON (a.PatientID = p.PatientID)
WHERE d.Name = 'Cardiology' AND (YEAR(a.AppointmentDate) >= 2021 AND YEAR(a.AppointmentDate) <= 2024)
ORDER BY p.PatientID ASC
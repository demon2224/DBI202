SELECT a.AppointmentID, a.AppointmentDate, a.PatientID, p.FirstName, p.LastName, a.Reason, a.Status
FROM Appointments a JOIN Patients p ON (a.PatientID = p.PatientID)
WHERE p.FirstName = 'Hannah' AND p.LastName = 'Garcia'
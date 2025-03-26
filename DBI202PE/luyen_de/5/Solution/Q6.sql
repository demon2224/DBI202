WITH DoctorRecordCounts AS (
    SELECT d.DepartmentID, 
           d.Name AS DepartmentName, 
           dt.DoctorID, 
           dt.FirstName + ' ' + dt.LastName AS DoctorFullName, 
           COUNT(mr.AppointmentID) AS NumberOfRecords,
           RANK() OVER (PARTITION BY d.DepartmentID ORDER BY COUNT(mr.AppointmentID) DESC) AS RankNum
    FROM Departments d 
         JOIN Doctors dt ON d.DepartmentID = dt.DepartmentID
         JOIN Appointments a ON dt.DoctorID = a.DoctorID
         JOIN MedicalRecords mr ON a.AppointmentID = mr.AppointmentID
    GROUP BY d.DepartmentID, d.Name, dt.DoctorID, dt.FirstName, dt.LastName
)
SELECT DepartmentID, 
       DepartmentName, 
       DoctorID, 
       DoctorFullName, 
       NumberOfRecords
FROM DoctorRecordCounts
WHERE RankNum = 1;

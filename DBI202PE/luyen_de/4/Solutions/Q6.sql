WITH DoctorTests AS (
    SELECT 
        d.DoctorID,
        d.FirstName + ' ' + d.LastName AS DoctorFullName,
        dept.DepartmentID,
        dept.Name AS DepartmentName,
        COUNT(at.AppointmentTestID) AS NumberOfTests
    FROM 
        Doctors d
    JOIN 
        Departments dept ON d.DepartmentID = dept.DepartmentID
    JOIN 
        Appointments a ON d.DoctorID = a.DoctorID
    JOIN 
        AppointmentTests at ON a.AppointmentID = at.AppointmentID
    GROUP BY 
        d.DoctorID, d.FirstName, d.LastName, dept.DepartmentID, dept.Name
),
MaxDoctorTests AS (
    SELECT 
        DepartmentID,
        DepartmentName,
        DoctorID,
        DoctorFullName,
        NumberOfTests,
        ROW_NUMBER() OVER (PARTITION BY DepartmentID ORDER BY NumberOfTests DESC, DoctorID ASC) AS RowNum
    FROM 
        DoctorTests
)
SELECT 
    DepartmentID,
    DepartmentName AS Name,
    DoctorID,
    DoctorFullName,
    NumberOfTests
FROM 
    MaxDoctorTests
WHERE 
    RowNum = 1
ORDER BY 
    DepartmentID;

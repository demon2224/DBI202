CREATE FUNCTION F1 (@DepartmentID INT)
RETURNS INT
AS
BEGIN
    DECLARE @NumberOfPatients INT;
    SELECT 
        @NumberOfPatients = COUNT(DISTINCT a.PatientID)
    FROM 
        Doctors d
    JOIN 
        Appointments a ON d.DoctorID = a.DoctorID
    WHERE 
        d.DepartmentID = @DepartmentID;
    
    RETURN @NumberOfPatients;
END;

/**
SELECT 
    DepartmentID, 
    Name, 
    dbo.F1(DepartmentID) AS NumberOfPatients
FROM 
    Departments
WHERE 
    Departments.Name IN ('Cardiology', 'Pediatrics');**/

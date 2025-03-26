CREATE TRIGGER insertDoctor
ON Doctors
AFTER INSERT
AS
BEGIN
    -- Variable to hold the DepartmentID of 'Cardiology'
    DECLARE @CardiologyID INT;
    
    -- Retrieve the DepartmentID for 'Cardiology'
    SELECT @CardiologyID = DepartmentID
    FROM Departments
    WHERE Name = 'Cardiology';

    -- Update the DepartmentID for rows where it is NULL
    UPDATE Doctors
    SET DepartmentID = @CardiologyID
    FROM Doctors
    JOIN inserted i ON Doctors.DoctorID = i.DoctorID
    WHERE i.DepartmentID IS NULL;
END;
GO


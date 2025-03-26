CREATE FUNCTION F2 (@TestID INT)
RETURNS INT
AS
BEGIN
    DECLARE @NumberOfPatients INT;
    
    SELECT 
        @NumberOfPatients = COUNT(DISTINCT a.PatientID)
    FROM 
        AppointmentTests at
    JOIN 
        Appointments a ON at.AppointmentID = a.AppointmentID
    WHERE 
        at.TestID = @TestID;
    
    RETURN @NumberOfPatients;
END;

CREATE PROCEDURE proc_Staffs 
    @StaffID INT,
    @NewPhone VARCHAR(15)
AS
BEGIN
    UPDATE Staffs
    SET Phone = @NewPhone
    WHERE staffID = @StaffID;
END;

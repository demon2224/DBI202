CREATE TRIGGER insertDoctor
ON Doctors
INSTEAD OF INSERT
AS
BEGIN

    DECLARE @CardiologyDeptID INT;

    SELECT @CardiologyDeptID = DepartmentID
    FROM Departments
    WHERE Name = 'Cardiology';

    INSERT INTO Doctors (DoctorID, FirstName, LastName, PhoneNumber, Email, DepartmentID)
    SELECT 
        i.DoctorID,
        i.FirstName,
        i.LastName,
        i.PhoneNumber,
        i.Email,
        ISNULL(i.DepartmentID, @CardiologyDeptID)
    FROM inserted i;
END;

/**
INSERT INTO Doctors (DoctorID, FirstName, LastName, PhoneNumber, Email, DepartmentID)
VALUES 
    (70, 'Van Chien', 'Nguyen', '0928367812', 'chiennv@gmail.com', NULL),
    (71, 'Thi Binh', 'Nguyen', '0989278127', 'binhnt@yahoo.com', 5);

SELECT * FROM Doctors WHERE DoctorID IN (70, 71);**/

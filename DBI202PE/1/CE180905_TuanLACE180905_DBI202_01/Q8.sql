CREATE OR ALTER TRIGGER trgDelayEndSemester
ON Semesters
FOR UPDATE
AS
BEGIN
    UPDATE s
    SET s.EndDate = d.EndDate
    FROM Semesters s
    JOIN inserted i ON s.Id = i.Id
    JOIN deleted d ON i.Id = d.Id
    WHERE i.EndDate < d.EndDate;
END;

/*  SELECT EndDate
    FROM Semesters
    WHERE Id = 8    */
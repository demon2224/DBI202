CREATE TRIGGER trgDelayEndSemester
ON Semesters
FOR UPDATE
AS
BEGIN
    -- Check if the EndDate column is being updated
    IF UPDATE(EndDate)
    BEGIN
        -- Prevent updating EndDate to a date earlier than the existing EndDate
        IF EXISTS (SELECT 1 FROM inserted i JOIN deleted d ON i.id = d.id WHERE i.EndDate < d.EndDate)
        BEGIN
            RAISERROR('EndDate cannot be earlier than the existing EndDate.', 16, 1);
            ROLLBACK TRANSACTION;
        END
    END
END;
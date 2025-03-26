CREATE TRIGGER Salary_Not_Accrease
ON EMPLOYEE
FOR UPDATE
AS
BEGIN
    -- Check if the Salary column is being updated
    IF UPDATE(Salary)
    BEGIN
        -- Prevent salary reduction
        IF EXISTS (SELECT 1 FROM inserted i JOIN deleted d ON i.Ssn = d.Ssn WHERE i.Salary < d.Salary)
        BEGIN
            RAISERROR('Salary cannot be reduced.', 16, 1);
            ROLLBACK TRANSACTION;
        END
    END
END;
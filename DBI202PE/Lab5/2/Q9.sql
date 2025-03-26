CREATE PROCEDURE projetDepartment
    @StudentName VARCHAR(100),
    @DepartmentName VARCHAR(50) OUTPUT
AS
BEGIN
    -- Get the Department name based on the Student's name
    SELECT @DepartmentName = D.Name
    FROM Students S
    JOIN Departments D ON S.Department = D.Code
    WHERE S.Name = @StudentName;
END;
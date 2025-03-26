CREATE OR ALTER PROCEDURE prcgetDepartment
( @In varchar(100), @X varchar(50) output)
AS
BEGIN
	SELECT @X = D.Name
	FROM Departments D
	JOIN Students S ON S.Department = D.Code
	WHERE @In = S.Name
END




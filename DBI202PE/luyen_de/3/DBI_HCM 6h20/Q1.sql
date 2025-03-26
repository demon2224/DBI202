CREATE TABLE Departments (
    DeptID VARCHAR(20) PRIMARY KEY,
    Name NVARCHAR(200),
    Office NVARCHAR(100)
);

CREATE TABLE Employees (
    EmpCode VARCHAR(20) PRIMARY KEY,
    Name NVARCHAR(50),
    BirthDate DATE,
    DeptID VARCHAR(20),
    FOREIGN KEY (DeptID) REFERENCES Departments(DeptID)
);

CREATE TABLE Dependants (
    Number INT PRIMARY KEY,
    Name NVARCHAR(50),
    BirthDate DATE,
    Role NVARCHAR(30),
    EmpCode VARCHAR(20),
    FOREIGN KEY (EmpCode) REFERENCES Employees(EmpCode)
);

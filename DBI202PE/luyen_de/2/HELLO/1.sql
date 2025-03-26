CREATE TABLE Departments (
    DeptID varchar(20) PRIMARY KEY,
    name nvarchar(200),
    office nvarchar(100)
);

CREATE TABLE Employees (
    EmpCode varchar(20) PRIMARY KEY,
    name nvarchar(50),
    BirthDate date,
    DeptID varchar(20),
    FOREIGN KEY (DeptID) REFERENCES Departments(DeptID)
);

CREATE TABLE Dependants (
    Number int,
    EmpCode varchar(20),
    Name nvarchar(50),
    BirthDate Date,
    Role nvarchar(50),
    PRIMARY KEY (Number, EmpCode),
    FOREIGN KEY (EmpCode) REFERENCES Employees(EmpCode) ON DELETE CASCADE
);
-- Table: Employees
CREATE TABLE Employees (
    empID DECIMAL(18, 0) PRIMARY KEY,
    name NVARCHAR(200) NOT NULL,
    phone DECIMAL(10, 0),
    address NVARCHAR(200)
);

-- Table: Projects
CREATE TABLE Projects (
    projID INT PRIMARY KEY,
    projName NVARCHAR(200)
);

-- Table: JoinProject
CREATE TABLE JoinProject (
    empID DECIMAL(18, 0),
    projID INT,
    startDate DATE,
    PRIMARY KEY (empID, projID),
    FOREIGN KEY (empID) REFERENCES Employees(empID),
    FOREIGN KEY (projID) REFERENCES Projects(projID)
);

-- Table: PermanentEmployees
CREATE TABLE PermanentEmployees (
    empID DECIMAL(18, 0) PRIMARY KEY,
    baseSalary MONEY,
    salaryScale INT,
    FOREIGN KEY (empID) REFERENCES Employees(empID)
);

-- Table: ContractEmployees
CREATE TABLE ContractEmployees (
    empID DECIMAL(18, 0) PRIMARY KEY,
    dailyPay MONEY,
    numberOfDays INT,
    FOREIGN KEY (empID) REFERENCES Employees(empID)
);

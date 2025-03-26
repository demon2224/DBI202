CREATE TABLE Employee (
    empCode VARCHAR(20) PRIMARY KEY,
    name NVARCHAR(50),
    jobTitle TEXT
);

CREATE TABLE Project (
    code VARCHAR(30) PRIMARY KEY,
    title TEXT,
    empCode VARCHAR(20),
    CONSTRAINT FK_Project_Employee FOREIGN KEY (empCode) REFERENCES Employee(empCode)
);

CREATE TABLE Tasks (
    taskNumber INT PRIMARY KEY,
    description NVARCHAR(100),
    project_code VARCHAR(30),
    CONSTRAINT FK_Tasks_Project FOREIGN KEY (project_code) REFERENCES Project(code)
);

CREATE TABLE do (
    empCode VARCHAR(20),
    taskNumber INT,
	hours INT,
    PRIMARY KEY (empCode, taskNumber),
    FOREIGN KEY (empCode) REFERENCES Employee(empCode),
    FOREIGN KEY (taskNumber) REFERENCES Tasks(taskNumber)
);

CREATE TABLE Faculty_Information (
    Fid INT PRIMARY KEY,
    Name NVARCHAR(50),
    Department NVARCHAR(50),
    School NVARCHAR(25),
    [Telephone_No.] INT
);

CREATE TABLE Commo_User (
	Uid INT PRIMARY KEY,
    Fid INT FOREIGN KEY REFERENCES Faculty_Information,
    User_Name NVARCHAR(25),
    Password NVARCHAR(50)
);

CREATE TABLE Teacher_User (
	Tid INT PRIMARY KEY,
	Fid INT FOREIGN KEY REFERENCES Faculty_Information,
    User_Name NVARCHAR(25),
    Password NVARCHAR(50)
);

CREATE TABLE Administrator (
    Aid INT PRIMARY KEY,
	Fid INT FOREIGN KEY REFERENCES Faculty_Information,
    User_Name NVARCHAR(25),
    Password NVARCHAR(50)
);

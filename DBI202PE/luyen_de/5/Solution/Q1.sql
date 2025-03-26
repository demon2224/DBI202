-- Tạo bảng Bank
CREATE TABLE Bank (
    bankCode VARCHAR(20) PRIMARY KEY,
    name NVARCHAR(100)
);

-- Tạo bảng Branch (Weak entity phụ thuộc vào Bank)
CREATE TABLE Branch (
    branchNo INT PRIMARY KEY,
    address TEXT,
    bankCode VARCHAR(20),
    FOREIGN KEY (bankCode) REFERENCES Bank(bankCode)
);

-- Tạo bảng Account
CREATE TABLE Account (
    accNo VARCHAR(25) PRIMARY KEY,
    balance MONEY,
    openTime DATETIME,
    branchNo INT,
    FOREIGN KEY (branchNo) REFERENCES Branch(branchNo)
);

-- Tạo bảng Customers
CREATE TABLE Customers (
    custID INT PRIMARY KEY,
    Name NVARCHAR(50)
);

-- Tạo bảng trung gian cho quan hệ N-N giữa Account và Customers
CREATE TABLE Account_Customers (
    accNo VARCHAR(25),
    custID INT,
    PRIMARY KEY (accNo, custID),
    FOREIGN KEY (accNo) REFERENCES Account(accNo),
    FOREIGN KEY (custID) REFERENCES Customers(custID)
);

CREATE TABLE Category (
    CategoryID CHAR(9) PRIMARY KEY,
    Description VARCHAR(50),
    NumSeats INT,
    MadeinBy VARCHAR(35)
)

CREATE TABLE Car (
    CarID CHAR(9) PRIMARY KEY,
    Name VARCHAR(150),
    Model VARCHAR(50),
    DailyRate INT,
    FuelType VARCHAR(15),
    FuelConsum FLOAT,
    Available BIT,
    CategoryID CHAR(9) FOREIGN KEY REFERENCES Category(CategoryID)
)

CREATE TABLE Customer (
    CustID CHAR(9) PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
	CustPhone VARCHAR(15),
	IdentificationNum VARCHAR(12),
    CustAddr VARCHAR(50)    
)

CREATE TABLE Rental (
    FuelCharge FLOAT,
    RentRate INT,
    StartDate DATE,
    EndDate DATE,
    PRIMARY KEY (CustID, CarID),
    CustID CHAR(9) FOREIGN KEY REFERENCES Customer(CustID),
    CarID CHAR(9) FOREIGN KEY REFERENCES Car(CarID)
)
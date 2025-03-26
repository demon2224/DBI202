USE [master]
GO
/****** Object:  Database [PE_DBI202_FALL_2024]    Script Date: 9/29/2024 12:36:25 PM ******/
CREATE DATABASE [PE_DBI202_FALL_2024]
GO
USE [PE_DBI202_FALL_2024]
GO
/****** Object:  Table [dbo].[Events]    Script Date: 9/29/2024 12:36:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE Locations (
    locationID VARCHAR(20) PRIMARY KEY,
    Name NVARCHAR(100) NOT NULL,
    Address NVARCHAR(255)
);
CREATE TABLE Events (
    eventID INT PRIMARY KEY IDENTITY(1,1),
    name NVARCHAR(255) NOT NULL,
    StartTime DATETIME NOT NULL,
    EndTime DATETIME NOT NULL,
    locationID VARCHAR(20),
    FOREIGN KEY (locationID) REFERENCES Locations(locationID)
);
CREATE TABLE Staffs (
    staffID INT PRIMARY KEY IDENTITY(1,1),
    name NVARCHAR(255) NOT NULL,
    Phone VARCHAR(15)
);
CREATE TABLE workFor (
    eventID INT,
    staffID INT,
    role NVARCHAR(30),
    PRIMARY KEY (eventID, staffID),
    FOREIGN KEY (eventID) REFERENCES Events(eventID),
    FOREIGN KEY (staffID) REFERENCES Staffs(staffID)
);
INSERT INTO Locations (locationID, Name, Address) VALUES
('LOC001', 'Convention Center', '123 Main St, City A'),
('LOC002', 'City Park', '456 Park Ave, City B'),
('LOC003', 'Art Gallery', '789 Art St, City C'),
('LOC004', 'Community Hall', '321 Community Rd, City D'),
('LOC005', 'Sports Stadium', '654 Stadium Blvd, City E'),
('LOC006', 'Town Square', '987 Town St, City F'),
('LOC007', 'Library', '135 Library Ln, City G'),
('LOC008', 'University Auditorium', '246 Uni Ave, City H'),
('LOC009', 'Beachfront', '357 Beach Rd, City I'),
('LOC010', 'Hotel Ballroom', '468 Hotel St, City J'),
('LOC011', 'City Theatre', '579 Theatre Rd, City K'),
('LOC012', 'Museum', '680 Museum Dr, City L'),
('LOC013', 'Expo Center', '791 Expo Blvd, City M'),
('LOC014', 'Sports Complex', '802 Complex St, City N'),
('LOC015', 'Nature Reserve', '913 Nature Rd, City O'),
('LOC016', 'Convention Center', '123 Main St, City'),
('LOC017', 'Downtown Hall', '456 Central Ave, City');
INSERT INTO Events (name, StartTime, EndTime, locationID) VALUES
('Annual Tech Conference', '2024-10-01 09:00:00', '2024-10-01 17:00:00', 'LOC001'),
('Art Festival', '2024-11-15 10:00:00', '2024-11-15 18:00:00', 'LOC003'),
('Community Picnic', '2024-12-05 12:00:00', '2024-12-05 16:00:00', 'LOC002'),
('Sports Championship', '2025-01-20 14:00:00', '2025-01-20 20:00:00', 'LOC005'),
('Theatre Performance', '2025-02-10 19:00:00', '2025-02-10 21:00:00', 'LOC011'),
('Book Fair', '2025-03-15 10:00:00', '2025-03-15 18:00:00', 'LOC007'),
('Music Concert', '2025-04-30 20:00:00', '2025-04-30 23:00:00', 'LOC001'),
('Film Festival', '2025-05-20 18:00:00', '2025-05-20 22:00:00', 'LOC003'),
('Holiday Market', '2025-06-15 10:00:00', '2025-06-15 20:00:00', 'LOC002'),
('Career Fair', '2025-07-10 09:00:00', '2025-07-10 15:00:00', 'LOC008'),
('Charity Run', '2025-08-25 07:00:00', '2025-08-25 10:00:00', 'LOC004'),
('Cultural Festival', '2025-09-12 10:00:00', '2025-09-12 18:00:00', 'LOC006'),
('Science Exhibition', '2025-10-05 09:00:00', '2025-10-05 17:00:00', 'LOC013'),
('Food Truck Festival', '2025-11-18 11:00:00', '2025-11-18 21:00:00', 'LOC002'),
('New Year Gala', '2025-12-31 20:00:00', '2026-01-01 01:00:00', 'LOC010');
INSERT INTO Staffs (name, Phone) VALUES
('Alice Johnson', '123-456-7890'),
('Bob Smith', '234-567-8901'),
('Cathy Brown', '345-678-9012'),
('David Wilson', '456-789-0123'),
('Eva White', '567-890-1234'),
('Frank Black', '678-901-2345'),
('Grace Green', '789-012-3456'),
('Henry Blue', '890-123-4567'),
('Isabel Red', '901-234-5678'),
('Jack Gray', '012-345-6789'),
('Kathy Pink', '123-456-7891'),
('Leo Orange', '234-567-8902'),
('Mona Purple', '345-678-9013'),
('Nina Cyan', '456-789-0124'),
('Oscar Magenta', '567-890-1235'),
('Michael Clark', '555-234-9876'),
('Emily Johnson', '555-567-2345'),
('Kevin Wright', '555-789-6543');
INSERT INTO workFor (eventID, staffID, role) VALUES
(1, 1, 'Speaker'),
(1, 2, 'Organizer'),
(2, 3, 'Volunteer'),
(2, 4, 'Coordinator'),
(3, 5, 'Food Service'),
(4, 6, 'Security'),
(5, 7, 'Usher'),
(6, 8, 'Setup'),
(7, 9, 'Technician'),
(8, 10, 'Marketing'),
(9, 11, 'Volunteer'),
(10, 12, 'Manager'),
(11, 13, 'Stagehand'),
(12, 14, 'Support Staff'),
(13, 15, 'Host'),
(14, 1, 'Event Director');
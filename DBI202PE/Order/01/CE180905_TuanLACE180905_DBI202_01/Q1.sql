create table Tour(
    TourID int primary key,
	[Begin] date,
	[End] date
);

create table Ship(
    ShipID int primary key,
	Name nvarchar(50),
	Type nvarchar(25),
	TourID int foreign key references Tour 
);

create table [Member](
    MemberID int primary key,
	FirstName nvarchar(50),
	LastName nvarchar(50)
);

create table Serves(
    [Begin] date,
	[End] date,
	ShipID int references Ship,
	MemberID int references [Member],
	primary key(ShipID, MemberID)
);
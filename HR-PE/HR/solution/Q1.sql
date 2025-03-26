Create Table Publisher(
	Publisher_ID int Primary key,
	[Name] nvarchar(20),
	[Address] nvarchar(100)
);

Create Table Book(
	Book_ID int primary key,
	Title nvarchar(20),
	Price int,
	Authors nvarchar(100),
	Publisher_ID int references Publisher(Publisher_ID)
);

Create Table Reader(
	Reader_ID int primary key,
	Reader_Name nvarchar(20),
	Phone nvarchar(10),
	Email nvarchar(20)
);

Create Table Borrowed_by(
	Book_ID int references Book(Book_ID),
	Reader_ID int references Reader(Reader_ID),
	Reserve_Date datetime,
	Return_Date datetime,
	Note nvarchar(50)
);
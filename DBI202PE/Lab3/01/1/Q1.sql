create table Venue(
	V_Id int primary key,
	V_Name nvarchar(100),
	V_Address nvarchar(200),
	V_Contact nvarchar(200),
	V_Owner varchar(50)
);

create table [Event](
    E_Id int primary key,
	E_Title nvarchar(100),
	E_Type varchar(50),
	E_DateTime datetime,
    V_Id int foreign key references Venue(V_Id)
);

create table Vendor(
    Ven_Id int primary key,
	Ven_Name nvarchar(50),
	Ven_Contact nvarchar(200),
    Ven_Fee decimal(10,3),
	Ven_Details nvarchar(200),
	E_Id int foreign key references [Event](E_Id)
);

create table Attendee(
    Att_Id int primary key,
	Att_Name nvarchar(50),
	Att_Contact nvarchar(200),
    Att_Status int,
	Att_Preferences nvarchar(100),
	E_Id int foreign key references [Event](E_Id)
);

CREATE Table [Services] (
	E_Id int foreign key references [Event](E_ID),
	Ven_Id int foreign key references Vendor(Ven_ID),
	primary key (E_Id, Ven_Id)
);

CREATE Table [Attends] (
	E_Id int foreign key references Event(E_ID),
	Att_Id int foreign key references Attendee(Att_Id),
	primary key (E_Id, Att_Id)
);


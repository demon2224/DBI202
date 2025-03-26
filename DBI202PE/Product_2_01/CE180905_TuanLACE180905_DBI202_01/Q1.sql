CREATE TABLE Team (
	TeamID int PRIMARY KEY,
	TeamName varchar(25),
	TeamStadium varchar(35),
	Captain varchar(50),
	Shorthand varchar(15),
	Coach varchar(50),
)

CREATE TABLE Player (
	PlayerID int PRIMARY KEY,
	FullName varchar(50),
	DateOfBirth date,
	Position varchar(9),
	Kit smallint,
	HomeTown varchar(50),
	TeamID int FOREIGN KEY REFERENCES Team(TeamID)
)

CREATE TABLE Match (
	MatchID int PRIMARY KEY,
	MatchName varchar(100),
	Referee varchar(50),
	DateTimeStart datetime,
	Stadium varchar(35),
)

CREATE TABLE Play (
	TeamID int REFERENCES Team(TeamID),
	MatchID int REFERENCES Match(MatchID),
	PRIMARY KEY(TeamID, MatchID),
	Score varchar(5),
	MinutePlay int,
	YellowCards varchar(100),
	RedCards varchar(100)
)

